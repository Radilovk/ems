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

    .line 624
    const-string v0, "initialized"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->clock()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 626
    invoke-static {v1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 627
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->userInfo(Landroid/content/Context;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 628
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 629
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_2d

    .line 630
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 632
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

    .line 601
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 602
    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 603
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 604
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 605
    if-eqz v1, :cond_1a

    if-nez v0, :cond_22

    .line 606
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no watch nonce"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_22
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    move-result-object v2

    .line 609
    iget-object v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    new-array v4, v8, [[B

    aput-object v1, v4, v6

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v3

    .line 610
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 612
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 613
    const-string v0, "auth"

    const-string v1, "hmac mismatch \u2014 wrong auth key"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_4e
    return-void

    .line 616
    :cond_4f
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 617
    iget-object v0, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    new-array v3, v8, [[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v0

    .line 618
    iget-object v1, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    .line 619
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authDeviceInfo()[B

    move-result-object v3

    .line 618
    invoke-static {v1, v2, v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v1

    .line 620
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authStep3([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    goto :goto_4e
.end method

.method private beginAuth()V
    .registers 3

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    if-eqz v0, :cond_5

    .line 530
    :goto_4
    return-void

    .line 526
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    .line 527
    const-string v0, "auth_start"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->random:Ljava/util/Random;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 529
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->phoneNonce:[B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->authNonce([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    goto :goto_4
.end method

.method private closePort()V
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 320
    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->testPort:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq v0, v1, :cond_e

    .line 322
    :try_start_b
    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_f

    .line 326
    :cond_e
    :goto_e
    return-void

    .line 323
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private consume(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 406
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    sub-int/2addr v0, p1

    .line 407
    if-lez v0, :cond_d

    .line 408
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    :cond_d
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 411
    return-void
.end method

.method private decryptV1([B)[B
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 478
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_6

    .line 494
    :goto_5
    return-object v0

    .line 482
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

    .line 483
    :catch_14
    move-exception v1

    .line 486
    :try_start_15
    array-length v2, p1

    const/4 v3, 0x6

    if-le v2, v3, :cond_34

    .line 487
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->u16([BI)I

    move-result v2

    .line 488
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    const/4 v5, 0x2

    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    .line 489
    invoke-static {p1, v5, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->slice([BII)[B

    move-result-object v5

    .line 488
    invoke-static {v3, v4, v2, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmDecrypt([B[BI[B)[B
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_5

    .line 491
    :catch_33
    move-exception v2

    .line 493
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

    .line 364
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    .line 365
    :goto_a
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 366
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 367
    if-eqz v2, :cond_14

    .line 368
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 370
    :cond_14
    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_32

    .line 371
    const-string v0, "reconnecting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->reconnect:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    :goto_2f
    return-void

    :cond_30
    move v0, v1

    .line 364
    goto :goto_a

    .line 376
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

    .line 830
    if-nez p0, :cond_7

    .line 831
    const-string v0, ""

    .line 837
    :goto_6
    return-object v0

    .line 833
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 834
    array-length v2, p0

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_2d

    aget-byte v3, p0, v0

    .line 835
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

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 837
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private notifyConnected(Z)V
    .registers 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_9

    .line 825
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onConnected(Z)V

    .line 827
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

    .line 573
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_6

    .line 598
    :cond_5
    :goto_5
    return-void

    .line 576
    :cond_6
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_1e

    .line 578
    :try_start_a
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->answerWatchNonce(Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_5

    .line 579
    :catch_e
    move-exception v0

    .line 580
    const-string v1, "ERR:auth"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_5

    .line 585
    :cond_1e
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_5

    .line 586
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 587
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_31

    .line 588
    const-string v0, "auth_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_5

    .line 591
    :cond_31
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 592
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 593
    const-string v1, "authenticated"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 594
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->notifyConnected(Z)V

    .line 595
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

    .line 596
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->afterAuth()V

    goto :goto_5
.end method

.method private onCommand([B)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 543
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 544
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v1

    .line 545
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v2

    .line 546
    if-eq v1, v8, :cond_48

    .line 547
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

    .line 548
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 547
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_48
    if-ne v1, v8, :cond_4e

    .line 551
    invoke-direct {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onAuth(Ljava/util/Map;I)V

    .line 570
    :cond_4d
    :goto_4d
    return-void

    .line 552
    :cond_4e
    const/16 v3, 0x8

    if-ne v1, v3, :cond_5a

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_5a

    .line 553
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onRealtime(Ljava/util/Map;)V

    goto :goto_4d

    .line 554
    :cond_5a
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 555
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

    .line 556
    :cond_79
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->onCommand(IILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 557
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

    .line 558
    :cond_a2
    if-ne v1, v9, :cond_f2

    .line 559
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->onSystemCommand(ILjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 560
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

    .line 561
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 562
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 563
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getFirmware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 565
    :cond_f2
    invoke-static {v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->onCommand(II[B)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 566
    const-string v0, "applink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message "

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

    goto/16 :goto_4d

    .line 568
    :cond_11c
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

    .line 423
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->version:I

    if-ne v0, v2, :cond_63

    .line 424
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-nez v0, :cond_10

    .line 425
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onVersion([B)V

    .line 475
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 428
    :cond_10
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v2, :cond_53

    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v3, :cond_53

    .line 429
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

    .line 430
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

    .line 433
    :cond_53
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 434
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->dataType:I

    if-ne v1, v2, :cond_5f

    .line 435
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->decryptV1([B)[B

    move-result-object v0

    .line 436
    if-eqz v0, :cond_f

    .line 440
    :cond_5f
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    goto :goto_f

    .line 443
    :cond_63
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->type:I

    packed-switch v0, :pswitch_data_124

    .line 473
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

    .line 445
    :pswitch_89
    const-string v0, "spp"

    const-string v1, "v2 session reply"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto/16 :goto_f

    .line 451
    :pswitch_95
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->seq:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2Ack(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 452
    iget v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->channel:I

    if-eq v0, v2, :cond_f7

    .line 453
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

    .line 454
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

    .line 457
    :cond_f7
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->payload:[B

    .line 458
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->opcode:I

    if-ne v1, v3, :cond_112

    .line 459
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    if-nez v1, :cond_10a

    .line 460
    const-string v0, "spp"

    const-string v1, "encrypted packet before auth"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 464
    :cond_10a
    :try_start_10a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_111} :catch_117

    move-result-object v0

    .line 470
    :cond_112
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onCommand([B)V

    goto/16 :goto_f

    .line 465
    :catch_117
    move-exception v0

    .line 466
    const-string v1, "ERR:ctr"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 443
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

    const/4 v11, 0x0

    const-wide/16 v4, 0x0

    .line 696
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v6

    .line 697
    if-nez v6, :cond_1b

    .line 698
    const-string v0, "hr"

    const-string v1, "8/47 without realTimeStats"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_1a
    :goto_1a
    return-void

    .line 701
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 702
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_af

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    sub-long v0, v8, v0

    move-wide v2, v0

    .line 703
    :goto_2a
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 704
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_34

    .line 705
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 707
    :cond_34
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 708
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 709
    invoke-static {v6, v12}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 710
    const/4 v0, 0x2

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 711
    const/4 v0, 0x3

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 712
    const/4 v0, 0x5

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 713
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
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

    .line 716
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 717
    if-lt v1, v12, :cond_87

    if-le v1, v13, :cond_6d

    .line 718
    :cond_87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 719
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

    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_af
    move-wide v2, v4

    .line 702
    goto/16 :goto_2a

    .line 719
    :cond_b2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    .line 723
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

    .line 725
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

    .line 723
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    if-nez v4, :cond_12e

    .line 727
    const-string v0, "measuring"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 730
    :cond_12e
    const/16 v0, 0xdc

    if-gt v4, v0, :cond_1a

    .line 731
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 732
    const-string v0, "streaming"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_1a

    .line 734
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    invoke-interface {v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onHeartRate(I)V

    goto/16 :goto_1a
.end method

.method private onVersion([B)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 501
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    if-eqz p1, :cond_12

    array-length v1, p1

    if-lez v1, :cond_12

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 503
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

    .line 504
    if-lt v0, v4, :cond_36

    .line 505
    iput v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 506
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v2SessionStart()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 511
    :goto_35
    return-void

    .line 509
    :cond_36
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 510
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto :goto_35
.end method

.method private pollStatus()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 636
    const/16 v0, 0x4e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 637
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 638
    return-void
.end method

.method private rawOther(Ljava/lang/String;[B)V
    .registers 7

    .prologue
    const/16 v1, 0x200

    .line 415
    if-nez p2, :cond_5

    .line 420
    :goto_4
    return-void

    .line 418
    :cond_5
    array-length v0, p2

    if-le v0, v1, :cond_c

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 419
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

    .line 285
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->onDisconnected()V

    .line 286
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->reset()V

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 290
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRealtime:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 292
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 293
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1Serial:I

    .line 294
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 295
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v2Seq:I

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    .line 297
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authStarted:Z

    .line 298
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    .line 299
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 300
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 301
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hrEvents:I

    .line 302
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 303
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 304
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    .line 305
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    .line 306
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->firstEventMs:J

    .line 307
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->eventCount:I

    .line 308
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    .line 309
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastSteps:I

    .line 310
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastCalories:I

    .line 311
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF3:I

    .line 312
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastF5:I

    .line 313
    iput v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastRawHr:I

    .line 314
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->reset()V

    .line 315
    return-void
.end method

.method private send([B)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 770
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v2, :cond_9

    if-nez p1, :cond_a

    .line 798
    :cond_9
    :goto_9
    return-void

    .line 773
    :cond_a
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-nez v2, :cond_f

    move v0, v1

    .line 775
    :cond_f
    :try_start_f
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-ne v2, v4, :cond_43

    .line 776
    if-eqz v0, :cond_38

    .line 777
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

    .line 794
    :catch_28
    move-exception v0

    .line 795
    const-string v1, "ERR:send"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v0, "send_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_9

    .line 776
    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->ctr([B[B)[B

    move-result-object p1

    goto :goto_15

    :cond_41
    move v1, v4

    .line 777
    goto :goto_20

    .line 781
    :cond_43
    if-eqz v0, :cond_59

    move-object v5, p1

    .line 792
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

    .line 785
    :cond_59
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->v1EncCounter:I

    .line 786
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    invoke-static {v2, v3, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v2

    .line 787
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    new-array v5, v3, [B

    .line 788
    const/4 v3, 0x0

    invoke-static {v5, v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->putU16([BII)V

    .line 789
    const/4 v0, 0x0

    const/4 v3, 0x2

    array-length v4, v2

    invoke-static {v2, v0, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_7a} :catch_28

    move v4, v1

    .line 790
    goto :goto_46
.end method

.method private setState(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 816
    if-eqz p1, :cond_17

    :goto_2
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    .line 817
    const-string v0, "state"

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    if-eqz v0, :cond_16

    .line 819
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->state:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient$Listener;->onState(Ljava/lang/String;)V

    .line 821
    :cond_16
    return-void

    .line 816
    :cond_17
    const-string p1, ""

    goto :goto_2
.end method

.method private write([B)V
    .registers 4

    .prologue
    .line 801
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 802
    if-nez v0, :cond_5

    .line 807
    :goto_4
    return-void

    .line 805
    :cond_5
    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsOut:I

    .line 806
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
    .line 812
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method onAuthTimeout()V
    .registers 3

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_1d

    .line 534
    const-string v0, "auth"

    const-string v1, "timeout"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    .line 536
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 537
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->resetSession()V

    .line 538
    const-string v0, "auth_timeout"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 540
    :cond_1d
    return-void
.end method

.method onPortBytes(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[B)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne p1, v0, :cond_7

    if-nez p2, :cond_8

    .line 403
    :cond_7
    return-void

    .line 383
    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v1, p2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    array-length v1, v1

    if-le v0, v1, :cond_29

    .line 384
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 385
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    .line 388
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    .line 390
    :goto_37
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-ne v0, p1, :cond_7

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rx:[B

    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->rxLen:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->parse([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;

    move-result-object v0

    .line 392
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    if-eqz v1, :cond_7

    .line 395
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->size:I

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->consume(I)V

    .line 396
    iget v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_76

    .line 397
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

    .line 400
    :cond_76
    iget v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->packetsIn:I

    .line 401
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPacket(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames$Packet;)V

    goto :goto_37
.end method

.method onPortClosed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 354
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 360
    :goto_4
    return-void

    .line 357
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

    .line 358
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 359
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_4
.end method

.method onPortFailed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 341
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 351
    :goto_4
    return-void

    .line 344
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

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 346
    const-string v0, "permission"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 347
    const-string v0, "no_bt_permission"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    goto :goto_4

    .line 350
    :cond_2e
    const-string v0, "connect_fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_4
.end method

.method onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    .registers 6

    .prologue
    .line 331
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eq p1, v0, :cond_5

    .line 338
    :goto_4
    return-void

    .line 334
    :cond_5
    const-string v0, "spp"

    const-string v1, "socket open"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "handshake"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames;->v1Version()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->write([B)V

    .line 337
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->versionTimeout:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method onReconnectTick()V
    .registers 5

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->userDisconnect:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    if-nez v0, :cond_11

    .line 693
    :cond_10
    :goto_10
    return-void

    .line 689
    :cond_11
    const-string v0, "spp"

    const-string v1, "reconnecting"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    .line 691
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authKey:[B

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    goto :goto_10
.end method

.method onStartRealtimeDue()V
    .registers 5

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeWanted:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_d

    .line 653
    :cond_c
    :goto_c
    return-void

    .line 646
    :cond_d
    const-string v0, "starting"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->setState(Ljava/lang/String;)V

    .line 647
    const-string v0, "health"

    const-string v1, "realtime START"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/16 v0, 0x8

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    .line 651
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 652
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->watch:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c
.end method

.method onVersionTimeout()V
    .registers 3

    .prologue
    .line 514
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_9

    .line 520
    :cond_8
    :goto_8
    return-void

    .line 517
    :cond_9
    const-string v0, "spp"

    const-string v1, "no version reply \u2014 assume v1"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    .line 519
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->beginAuth()V

    goto :goto_8
.end method

.method onWatchTick()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 656
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-nez v0, :cond_f

    .line 683
    :cond_e
    :goto_e
    return-void

    .line 659
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 660
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4c

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->streamStartMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2ee0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4c

    .line 661
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3c

    .line 662
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->startRetries:I

    .line 663
    const-string v0, "health"

    const-string v1, "no first 8/47 \u2014 START once more"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->realtimeStarted:Z

    .line 665
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onStartRealtimeDue()V

    goto :goto_e

    .line 668
    :cond_3c
    const-string v0, "health"

    const-string v1, "no 8/47 \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 670
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_e

    .line 673
    :cond_4c
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_6c

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastEventMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_6c

    .line 674
    const-string v0, "health"

    const-string v1, "stream stalled \u2014 reconnect"

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->closePort()V

    .line 676
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->dropped(Ljava/lang/String;)V

    goto :goto_e

    .line 679
    :cond_6c
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->lastStatusPollMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_78

    .line 680
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->pollStatus()V

    .line 682
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
    .line 743
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_7

    .line 744
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->send([B)V

    .line 746
    :cond_7
    return-void
.end method

.method sendData([B)V
    .registers 8

    .prologue
    const/4 v1, 0x2

    .line 753
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->authenticated:Z

    if-eqz v0, :cond_b

    if-nez p1, :cond_c

    .line 766
    :cond_b
    :goto_b
    return-void

    .line 757
    :cond_c
    :try_start_c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->version:I

    if-ne v0, v1, :cond_2d

    .line 758
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

    .line 763
    :catch_22
    move-exception v0

    .line 764
    const-string v1, "ERR:data"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 760
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->keys:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmEncrypt([B[BI[B)[B

    move-result-object v5

    .line 761
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
