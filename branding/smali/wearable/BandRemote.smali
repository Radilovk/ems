.class public final Lcom/isaigu/gymapp/wearable/BandRemote;
.super Ljava/lang/Object;
.source "BandRemote.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandRemote$Push;,
        Lcom/isaigu/gymapp/wearable/BandRemote$Key;,
        Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;,
        Lcom/isaigu/gymapp/wearable/BandRemote$Tick;,
        Lcom/isaigu/gymapp/wearable/BandRemote$AutoOpen;,
        Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;
    }
.end annotation


# static fields
.field private static final APP_MS:J = 0xfa0L

.field private static final AUTO_OPEN_DELAY_MS:J = 0xbb8L

.field private static final BOOT:J

.field private static final HISTORY_BARS:I = 0x1e

.field private static final HISTORY_MS:J = 0x2bf20L

.field private static final HR_ONLY_KEEPALIVE_MS:J = 0x2710L

.field private static final INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

.field private static final MUSIC_KEEPALIVE_MS:J = 0x4e20L

.field private static final MUSIC_LIVE_MS:J = 0x1388L

.field private static final TICK_MS:J = 0x3e8L

.field private static final VOL:I = 0x32

.field private static aiElapsedS:J

.field private static aiWasRunning:Z

.field private static final autoOpen:Ljava/lang/Runnable;

.field private static bandAppVisible:Z

.field private static dropLogged:Z

.field private static endSeq:I

.field private static final handler:Landroid/os/Handler;

.field private static lastAck:Ljava/lang/String;

.field private static lastAppMs:J

.field private static lastChannel:I

.field private static lastCore:Ljava/lang/String;

.field private static lastHrSent:I

.field private static lastHrSentMs:J

.field private static lastMode:Ljava/lang/String;

.field private static lastMus:Lorg/json/JSONArray;

.field private static lastMusMs:J

.field private static lastMusOwner:Z

.field private static lastRestReady:Z

.field private static lastSent:Ljava/lang/String;

.field private static lastSentLive:Ljava/lang/String;

.field private static lastSentMs:J

.field private static lastSet:I

.field private static lastSex:Ljava/lang/String;

.field private static lastSig:Ljava/lang/String;

.field private static lastStep:I

.field private static musicAsked:Z

.field private static final pushLater:Ljava/lang/Runnable;

.field private static pushQueued:Z

.field private static final pushSoon:Ljava/lang/Runnable;

.field private static running:Z

.field private static final seenIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static seq:I

.field private static summary:Lorg/json/JSONObject;

.field private static summaryUntilMs:J

.field private static final tick:Ljava/lang/Runnable;

.field private static trainAccumMs:J

.field private static trainStartMs:J

.field private static trainWasRunning:Z

.field private static visSeen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$Tick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote$Tick;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentLive:Ljava/lang/String;

    .line 64
    sput-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z

    .line 69
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$AutoOpen;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote$AutoOpen;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->autoOpen:Ljava/lang/Runnable;

    .line 72
    sput v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastHrSent:I

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastCore:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    .line 128
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 259
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    .line 260
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    .line 312
    sput v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 313
    sput v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 314
    sput v3, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    .line 621
    const-string v0, "F"

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSex:Ljava/lang/String;

    .line 714
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    rem-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    .line 724
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 33
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->visSeen:Z

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z

    return v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 345
    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 346
    if-eqz v3, :cond_15

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v0, :cond_15

    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v0, :cond_17

    :cond_15
    move-object v0, v1

    .line 356
    :cond_16
    :goto_16
    return-object v0

    .line 349
    :cond_17
    iget-object v0, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 350
    array-length v0, v4

    new-array v0, v0, [I

    .line 351
    const/4 v2, 0x0

    :goto_1f
    array-length v5, v4

    if-ge v2, v5, :cond_16

    .line 352
    aget v5, v4, v2

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iget v6, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v0, v2
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2f} :catch_32

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 355
    :catch_32
    move-exception v0

    move-object v0, v1

    .line 356
    goto :goto_16
.end method

.method static channelSet(II)V
    .registers 5

    .prologue
    .line 386
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    .line 388
    :goto_a
    if-eqz v0, :cond_11

    if-ltz p0, :cond_11

    array-length v1, v0

    if-lt p0, v1, :cond_14

    .line 397
    :cond_11
    :goto_11
    return-void

    .line 387
    :cond_12
    const/4 v0, 0x0

    goto :goto_a

    .line 391
    :cond_14
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 392
    aget v0, v0, p0

    sub-int v0, v1, v0

    .line 393
    if-eqz v0, :cond_11

    .line 396
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelStep(II)V

    goto :goto_11
.end method

.method static channelStep(II)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v5

    .line 365
    if-eqz v5, :cond_14

    iget-object v0, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    move-object v4, v0

    .line 366
    :goto_a
    if-eqz v4, :cond_13

    if-ltz p0, :cond_13

    array-length v0, v4

    if-ge p0, v0, :cond_13

    if-nez p1, :cond_17

    .line 382
    :cond_13
    :goto_13
    return-void

    .line 365
    :cond_14
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_a

    .line 369
    :cond_17
    invoke-virtual {v4}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    move v3, v2

    .line 372
    :goto_1e
    :try_start_1e
    array-length v1, v4

    if-ge v3, v1, :cond_2c

    .line 373
    if-ne v3, p0, :cond_2a

    const/4 v1, 0x1

    :goto_24
    aput-boolean v1, v4, v3

    .line 372
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1e

    :cond_2a
    move v1, v2

    .line 373
    goto :goto_24

    .line 375
    :cond_2c
    invoke-static {v5, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_7d

    move-result v1

    .line 377
    array-length v3, v0

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v2

    .line 380
    const-string v3, "applink"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-lez p1, :cond_83

    const-string v0, " +"

    :goto_4d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 381
    if-eqz v1, :cond_86

    if-eqz v2, :cond_86

    array-length v0, v2

    if-ge p0, v0, :cond_86

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u2192 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v2, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 377
    :catchall_7d
    move-exception v1

    array-length v3, v0

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    throw v1

    .line 380
    :cond_83
    const-string v0, " "

    goto :goto_4d

    .line 381
    :cond_86
    const-string v0, " (not applied)"

    goto :goto_71
.end method

.method private static channels()Lorg/json/JSONArray;
    .registers 5

    .prologue
    .line 886
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 887
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 888
    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    move-object v3, v0

    .line 889
    :goto_10
    if-nez v3, :cond_17

    move-object v0, v2

    .line 896
    :goto_13
    return-object v0

    .line 888
    :cond_14
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_10

    .line 892
    :cond_17
    iget-object v4, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 893
    const/4 v0, 0x0

    :goto_1a
    array-length v1, v3

    if-ge v0, v1, :cond_30

    .line 894
    if-eqz v4, :cond_2d

    array-length v1, v4

    if-ge v0, v1, :cond_2d

    aget-boolean v1, v4, v0

    if-eqz v1, :cond_2d

    const/4 v1, -0x1

    :goto_27
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 894
    :cond_2d
    aget v1, v3, v0

    goto :goto_27

    :cond_30
    move-object v0, v2

    .line 896
    goto :goto_13
.end method

.method static handleApp(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x1

    const/16 v6, 0x32

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    const-string v0, "vis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 133
    const-string v0, "false"

    const-string v4, "on"

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    move v0, v1

    :goto_23
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z

    .line 134
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->visSeen:Z

    .line 135
    const-string v4, "applink"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "band app "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z

    if-eqz v0, :cond_7a

    const-string v0, "shown"

    :goto_3a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z

    if-eqz v0, :cond_7d

    .line 137
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    .line 144
    :cond_4d
    :goto_4d
    const-string v0, "cmd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 145
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a8

    .line 147
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 148
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :goto_77
    return-void

    :cond_78
    move v0, v2

    .line 133
    goto :goto_23

    .line 135
    :cond_7a
    const-string v0, "hidden"

    goto :goto_3a

    .line 139
    :cond_7d
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->musicAsked:Z

    goto :goto_4d

    .line 141
    :cond_80
    const-string v0, "cmd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "hello"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 142
    :cond_90
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z

    goto :goto_4d

    .line 152
    :cond_93
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 153
    :goto_98
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v4, 0x20

    if-le v0, v4, :cond_a8

    .line 154
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_98

    .line 158
    :cond_a8
    const-string v0, "hello"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 159
    const-string v0, "v"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_bc

    :try_start_b8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_bc
    const-string v0, "lang"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(ILjava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_c5} :catch_1db

    .line 164
    :goto_c5
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    .line 202
    :cond_c9
    :goto_c9
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    if-nez v0, :cond_d8

    .line 203
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    .line 204
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_d8
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_77

    .line 165
    :cond_e9
    const-string v0, "cmd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 166
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v3, "applink"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->usesRemote(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_122

    .line 169
    const-string v0, "applink"

    const-string v1, "ignored: the band is set to heart rate only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 172
    :cond_122
    const-string v3, "toggle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 173
    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto :goto_c9

    .line 174
    :cond_12e
    const-string v3, "plus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 175
    const/4 v0, 0x4

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto :goto_c9

    .line 176
    :cond_13b
    const-string v3, "minus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_147

    .line 177
    invoke-static {v8, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto :goto_c9

    .line 178
    :cond_147
    const-string v3, "double"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 179
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v3, v4, :cond_c9

    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 181
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-nez v0, :cond_16a

    move v2, v1

    :cond_16a
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    goto/16 :goto_c9

    .line 183
    :cond_16f
    const-string v3, "stop"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_189

    .line 184
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v2, :cond_184

    .line 185
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    goto/16 :goto_c9

    .line 187
    :cond_184
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_c9

    .line 190
    :cond_189
    const-string v3, "ch_plus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_199

    const-string v3, "ch_minus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 191
    :cond_199
    const-string v2, "c"

    invoke-static {p0, v2, v7}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 192
    const/16 v2, 0xa

    const-string v3, "d"

    invoke-static {p0, v3, v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 197
    :cond_1b3
    :goto_1b3
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleCommand(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 193
    :cond_1b8
    const-string v3, "ch_set"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 194
    const-string v3, "c"

    invoke-static {p0, v3, v7}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 195
    const/16 v3, 0x64

    const-string v4, "v"

    invoke-static {p0, v4, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    goto :goto_1b3

    .line 162
    :catch_1db
    move-exception v0

    goto/16 :goto_c5
.end method

.method static handleKey(II)V
    .registers 8

    .prologue
    const/16 v4, 0x32

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 412
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 456
    :cond_f
    :goto_f
    return-void

    .line 416
    :cond_10
    if-eqz p0, :cond_14

    if-ne p0, v1, :cond_72

    :cond_14
    move v0, v2

    .line 430
    :cond_15
    :goto_15
    const-string v3, "remote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2192 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v4

    .line 432
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v3

    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v3, v5, :cond_87

    if-eqz v4, :cond_87

    move v3, v1

    .line 433
    :goto_50
    if-eqz v3, :cond_97

    .line 434
    if-nez v0, :cond_8d

    .line 435
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v2, :cond_89

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 436
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    .line 455
    :cond_65
    :goto_65
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    .line 418
    :cond_72
    const/4 v3, 0x4

    if-ne p0, v3, :cond_77

    move v0, v1

    .line 419
    goto :goto_15

    .line 420
    :cond_77
    const/4 v3, 0x3

    if-eq p0, v3, :cond_15

    .line 422
    const/4 v3, 0x5

    if-ne p0, v3, :cond_f

    .line 423
    if-le p1, v4, :cond_83

    move v0, v1

    .line 424
    :cond_80
    :goto_80
    if-nez v0, :cond_15

    goto :goto_f

    .line 423
    :cond_83
    if-lt p1, v4, :cond_80

    move v0, v2

    goto :goto_80

    :cond_87
    move v3, v2

    .line 432
    goto :goto_50

    .line 438
    :cond_89
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_65

    .line 440
    :cond_8d
    if-lez v0, :cond_93

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    goto :goto_65

    .line 443
    :cond_93
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    goto :goto_65

    .line 445
    :cond_97
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v3

    if-nez v3, :cond_a5

    if-nez v0, :cond_b1

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v3

    if-nez v3, :cond_b1

    .line 446
    :cond_a5
    if-nez v0, :cond_ab

    :goto_a7
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_65

    .line 447
    :cond_ab
    if-lez v0, :cond_af

    move v2, v1

    goto :goto_a7

    :cond_af
    const/4 v2, 0x2

    goto :goto_a7

    .line 448
    :cond_b1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 449
    if-nez v0, :cond_bd

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_65

    .line 452
    :cond_bd
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_65
.end method

.method static intField(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 318
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_a

    move-result p2

    .line 320
    :goto_9
    return p2

    .line 319
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method static jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 401
    if-nez p0, :cond_4

    .line 407
    :goto_3
    return-object v0

    .line 405
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_3

    .line 406
    :catch_f
    move-exception v1

    goto :goto_3
.end method

.method static leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 328
    :goto_b
    if-nez v0, :cond_11

    move-object v0, v1

    .line 336
    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    .line 327
    goto :goto_b

    .line 331
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 332
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_15

    goto :goto_e

    :cond_2e
    move-object v0, v1

    .line 336
    goto :goto_e
.end method

.method static mainStep(I)V
    .registers 5

    .prologue
    .line 280
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 281
    if-nez v0, :cond_f

    .line 282
    if-lez p0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 299
    :cond_c
    :goto_c
    return-void

    .line 282
    :cond_d
    const/4 v0, 0x2

    goto :goto_9

    .line 286
    :cond_f
    :try_start_f
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 289
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 290
    if-eqz v1, :cond_5c

    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_5c

    .line 291
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    .line 295
    :goto_26
    const-string v2, "applink"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez p0, :cond_60

    const-string v0, "+"

    :goto_37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u2192 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_63

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    :goto_49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_54} :catch_55

    goto :goto_c

    .line 296
    :catch_55
    move-exception v0

    .line 297
    const-string v1, "BandRemote.mainStep"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 293
    :cond_5c
    :try_start_5c
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    goto :goto_26

    .line 295
    :cond_60
    const-string v0, ""
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_62} :catch_55

    goto :goto_37

    :cond_63
    const/4 v0, -0x1

    goto :goto_49
.end method

.method static mainStrength()I
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 304
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 306
    :goto_f
    if-eqz v1, :cond_13

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_16

    .line 308
    :cond_13
    :goto_13
    return v0

    .line 305
    :cond_14
    const/4 v1, 0x0

    goto :goto_f

    .line 307
    :catch_16
    move-exception v1

    goto :goto_13
.end method

.method private static mmss(D)Ljava/lang/String;
    .registers 12

    .prologue
    const-wide/16 v8, 0x3c

    .line 979
    const-wide/16 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 980
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    rem-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static moduleCommand(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 212
    if-nez p0, :cond_6

    .line 256
    :cond_5
    :goto_5
    return-void

    .line 215
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 216
    const-string v3, "train_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 217
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_5

    .line 218
    :cond_16
    const-string v3, "train_plus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 219
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto :goto_5

    .line 220
    :cond_22
    const-string v3, "train_minus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 221
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto :goto_5

    .line 222
    :cond_2e
    const-string v3, "train_stop"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 223
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_5

    .line 224
    :cond_3b
    const-string v3, "tm_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 225
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandTogglePause()V

    goto :goto_5

    .line 226
    :cond_47
    const-string v3, "tm_pause"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 228
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->isPausedAlone()Z

    move-result v0

    .line 229
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandClearUserPause()V

    .line 230
    if-nez v0, :cond_5

    .line 231
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->playPause()V

    goto :goto_5

    .line 233
    :cond_5c
    const-string v3, "tm_reset"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandReset()V

    goto :goto_5

    .line 235
    :cond_68
    const-string v3, "mu_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 236
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_5

    .line 237
    :cond_74
    const-string v3, "mu_next"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 238
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_5

    .line 239
    :cond_80
    const-string v3, "mu_prev"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 240
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto/16 :goto_5

    .line 241
    :cond_8d
    const-string v3, "mu_up"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 242
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_5

    .line 243
    :cond_9a
    const-string v3, "mu_down"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 244
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_5

    .line 245
    :cond_a7
    const-string v3, "pause_all"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 246
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->pauseAll()V

    goto/16 :goto_5

    .line 247
    :cond_b4
    const-string v3, "ch_plus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c4

    const-string v3, "ch_minus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 248
    :cond_c4
    sget v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    const-string v0, "ch_plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    :goto_d0
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelStep(II)V

    goto/16 :goto_5

    :cond_d5
    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    neg-int v0, v0

    goto :goto_d0

    .line 249
    :cond_d9
    const-string v3, "ch_set"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 250
    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    sget v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelSet(II)V

    goto/16 :goto_5

    .line 251
    :cond_ea
    const-string v3, "hg_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 252
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_11b

    .line 253
    :goto_fa
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 254
    const-string v1, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hr module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_11d

    const-string v0, "on"

    :goto_10e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11b
    move v0, v1

    .line 252
    goto :goto_fa

    .line 254
    :cond_11d
    const-string v0, "off"

    goto :goto_10e
.end method

.method private static moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x7c

    .line 901
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 902
    const-string v1, "mu"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 903
    const-string v2, "hg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 904
    const-string v3, "tr"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    if-eqz v3, :cond_2a

    .line 907
    const-string v5, "run"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 909
    :cond_2a
    if-eqz v0, :cond_61

    .line 910
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "arm"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "run"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "pau"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "loop"

    .line 911
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "lbl"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    :cond_61
    if-eqz v1, :cond_98

    .line 914
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "pm"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "play"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "title"

    .line 915
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ceil"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 917
    :cond_98
    if-eqz v2, :cond_c5

    .line 918
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hold"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ai"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "up"

    .line 919
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 921
    :cond_c5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static modules(I)Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 926
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 927
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 929
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 930
    const-string v5, "run"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 931
    const-string v5, "tr"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 934
    :try_start_1e
    const-string v0, "tm"

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandState()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_27} :catch_f8

    .line 939
    :goto_27
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 940
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v6

    .line 941
    const-string v0, "on"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 942
    const-string v7, "pm"

    if-eqz v6, :cond_105

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_105

    move v0, v1

    :goto_40
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 943
    const-string v7, "play"

    if-eqz v6, :cond_108

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_108

    move v0, v1

    :goto_54
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 944
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v0

    .line 945
    const-string v7, "title"

    if-eqz v0, :cond_10b

    :goto_5f
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 946
    const-string v0, "pos"

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 947
    const-string v0, "dur"

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 948
    const-string v7, "lvl"

    if-eqz v6, :cond_10f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v0

    :goto_80
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 949
    const-string v7, "ceil"

    if-eqz v6, :cond_112

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v0

    :goto_8b
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 950
    const-string v0, "mu"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 952
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 953
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v6

    .line 954
    const-string v7, "en"

    if-eqz v4, :cond_115

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_115

    move v0, v1

    :goto_a7
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 955
    const-string v0, "up"

    invoke-virtual {v5, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 956
    const-string v0, "ai"

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v4

    sget-object v7, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v4, v7, :cond_117

    :goto_b9
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 957
    if-eqz v6, :cond_f2

    .line 958
    const-string v0, "sf"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v1, v8

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 959
    const-string v0, "hold"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isHold()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 960
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getForecast()D

    move-result-wide v0

    .line 961
    const-string v4, "fc"

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_119

    :goto_e4
    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 962
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastAction()Ljava/lang/String;

    move-result-object v0

    .line 963
    const-string v1, "act"

    if-eqz v0, :cond_11f

    :goto_ef
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 965
    :cond_f2
    const-string v0, "hg"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 966
    return-object v3

    .line 935
    :catch_f8
    move-exception v0

    .line 936
    const-string v0, "tm"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_27

    :cond_105
    move v0, v2

    .line 942
    goto/16 :goto_40

    :cond_108
    move v0, v2

    .line 943
    goto/16 :goto_54

    .line 945
    :cond_10b
    const-string v0, ""

    goto/16 :goto_5f

    :cond_10f
    move v0, v2

    .line 948
    goto/16 :goto_80

    :cond_112
    move v0, v2

    .line 949
    goto/16 :goto_8b

    :cond_115
    move v0, v2

    .line 954
    goto :goto_a7

    :cond_117
    move v1, v2

    .line 956
    goto :goto_b9

    .line 961
    :cond_119
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v2, v0

    goto :goto_e4

    .line 963
    :cond_11f
    const-string v0, ""

    goto :goto_ef
.end method

.method private static musicOnly()Z
    .registers 1

    .prologue
    .line 474
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static onManualStop()V
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 608
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 609
    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v6, :cond_10

    sget-wide v0, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v0, v2, v0

    :cond_10
    add-long/2addr v0, v4

    .line 610
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 611
    const/4 v2, 0x0

    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 612
    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v2, :cond_32

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_32

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-ltz v2, :cond_32

    .line 613
    const-string v2, "manual"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_32} :catch_33

    .line 618
    :cond_32
    :goto_32
    return-void

    .line 615
    :catch_33
    move-exception v0

    .line 616
    const-string v1, "BandRemote.stop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method static onMuscles([ILjava/lang/String;Z)V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 631
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 632
    if-nez p2, :cond_18

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMusOwner:Z

    if-eqz v0, :cond_18

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMusMs:J

    sub-long v4, v6, v4

    const-wide/32 v8, 0x493e0

    cmp-long v0, v4, v8

    if-gez v0, :cond_18

    .line 656
    :cond_17
    :goto_17
    return-void

    .line 636
    :cond_18
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 637
    array-length v8, p0

    move v3, v2

    move v4, v2

    :goto_20
    if-ge v3, v8, :cond_31

    aget v0, p0, v3

    .line 638
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 639
    if-lez v0, :cond_2f

    move v0, v1

    :goto_2a
    or-int/2addr v4, v0

    .line 637
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_20

    :cond_2f
    move v0, v2

    .line 639
    goto :goto_2a

    .line 641
    :cond_31
    if-eqz v4, :cond_17

    .line 644
    sput-object v5, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMus:Lorg/json/JSONArray;

    .line 645
    sput-object p1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSex:Ljava/lang/String;

    .line 646
    sput-wide v6, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMusMs:J

    .line 647
    sput-boolean p2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMusOwner:Z

    .line 648
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    sget-wide v0, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    cmp-long v0, v6, v0

    if-gez v0, :cond_17

    .line 649
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    const-string v1, "mus"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    const-string v1, "sex"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_60} :catch_61

    goto :goto_17

    .line 653
    :catch_61
    move-exception v0

    .line 654
    const-string v1, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "muscles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method static onSessionEnd(Ljava/lang/String;J)V
    .registers 16

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v0, 0x1

    .line 661
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 662
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 663
    if-eqz v1, :cond_7d

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    .line 664
    :goto_11
    const-wide/16 v2, 0x3c

    const-wide/16 v6, 0x5

    add-long/2addr v6, p1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    mul-long/2addr v2, v8

    invoke-static {v4, v5, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v6

    .line 665
    const-string v2, "ai"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v2

    .line 667
    :goto_2b
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 668
    const-string v8, "n"

    sget v9, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 669
    const-string v8, "kind"

    invoke-virtual {v7, v8, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    const-string v8, "dur"

    invoke-virtual {v7, v8, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 671
    const-string v8, "kcal"

    const-wide/16 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v7, v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 672
    const-string v2, "avg"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 673
    const-string v2, "max"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 674
    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v1

    .line 675
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 676
    :goto_6f
    const/4 v3, 0x5

    if-gt v0, v3, :cond_92

    .line 677
    aget-wide v8, v1, v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 663
    :cond_7d
    const/16 v1, 0xaa

    goto :goto_11

    .line 666
    :cond_80
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_8f

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v2

    goto :goto_2b

    :cond_8f
    const-wide/16 v2, 0x0

    goto :goto_2b

    .line 679
    :cond_92
    const-string v0, "zt"

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMus:Lorg/json/JSONArray;

    if-eqz v0, :cond_b4

    sget-wide v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMusMs:J

    sub-long v0, v4, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_b4

    .line 681
    const-string v0, "mus"

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMus:Lorg/json/JSONArray;

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    const-string v0, "sex"

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSex:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    :cond_b4
    sput-object v7, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    .line 685
    const-wide/32 v0, 0x15f90

    add-long/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    .line 686
    const-string v0, "applink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f1} :catch_f2

    .line 691
    :goto_f1
    return-void

    .line 688
    :catch_f2
    move-exception v0

    .line 689
    const-string v1, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "summary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1
.end method

.method static pauseAll()V
    .registers 3

    .prologue
    .line 695
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    .line 696
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_35

    if-eqz v0, :cond_35

    .line 697
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_19

    .line 698
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    .line 703
    :cond_19
    :goto_19
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_34

    .line 704
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-nez v0, :cond_34

    .line 705
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    .line 707
    :cond_34
    return-void

    .line 700
    :cond_35
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 701
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_19
.end method

.method private static phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 970
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 974
    const-string v0, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v1, "Cool-down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 971
    :pswitch_14
    const-string v0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v1, "Warm-up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 972
    :pswitch_1d
    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v1, "Main"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 973
    :pswitch_26
    const-string v0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v1, "Metabolic"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 970
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
        :pswitch_26
    .end packed-switch
.end method

.method static playPause()V
    .registers 4

    .prologue
    .line 460
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    .line 461
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_31

    if-eqz v0, :cond_31

    .line 462
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v2, :cond_2d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 463
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    .line 470
    :goto_1f
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    return-void

    .line 465
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_1f

    .line 468
    :cond_31
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_1f
.end method

.method static push(Z)V
    .registers 27

    .prologue
    .line 480
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->control()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v12

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 482
    if-eqz v12, :cond_10

    invoke-interface {v12}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v2

    if-nez v2, :cond_41

    .line 484
    :cond_10
    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v2, :cond_40

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->dropLogged:Z

    if-nez v2, :cond_40

    .line 485
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->dropLogged:Z

    .line 486
    const-string v2, "remote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "band link lost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v4, v20, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s after the workout started"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_40
    :goto_40
    return-void

    .line 491
    :cond_41
    const/4 v2, 0x0

    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->dropLogged:Z

    .line 492
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 495
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v10

    .line 496
    if-eqz v10, :cond_201

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-nez v2, :cond_201

    const/4 v2, 0x1

    .line 497
    :goto_59
    if-eqz v2, :cond_204

    .line 498
    sput-wide v20, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    .line 499
    const/16 p0, 0x1

    .line 500
    const-string v2, "remote"

    const-string v3, "workout started"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->scheduleAutoOpen()V

    .line 505
    :cond_69
    :goto_69
    sput-boolean v10, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 506
    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    if-eqz v10, :cond_215

    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v2, v20, v2

    :goto_73
    add-long v15, v4, v2

    .line 507
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_219

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v2

    if-eqz v2, :cond_219

    const/4 v2, 0x1

    .line 508
    :goto_84
    if-eqz v2, :cond_8f

    sget-boolean v3, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v3, :cond_8f

    .line 509
    const/16 p0, 0x1

    .line 510
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->scheduleAutoOpen()V

    .line 512
    :cond_8f
    if-eqz v2, :cond_21c

    .line 513
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    .line 517
    :cond_9f
    :goto_9f
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    .line 519
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v13

    .line 520
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_229

    .line 521
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v14

    .line 522
    :goto_b3
    if-lez v13, :cond_22d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bpm \u00b7 Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13, v14}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 529
    :goto_d1
    const/4 v7, 0x0

    .line 530
    const/4 v8, 0x0

    .line 533
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v9

    .line 534
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_29c

    if-eqz v9, :cond_29c

    .line 535
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v11

    .line 536
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v3

    .line 537
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v6

    .line 538
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v11, v2, :cond_238

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v2

    if-eqz v2, :cond_238

    const/4 v2, 0x1

    move v5, v2

    .line 540
    :goto_f9
    if-eqz v5, :cond_23c

    .line 541
    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 \u00b7 \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v3, "Rest done \u00b7 \u25b6 continue"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 546
    :goto_104
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v11, v2, :cond_295

    const/4 v10, 0x1

    .line 547
    :goto_109
    if-nez v10, :cond_298

    const/4 v2, 0x1

    move v3, v2

    .line 548
    :goto_10d
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v7, v0

    .line 549
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v2

    iget v8, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ai|"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "|"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "|"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move v2, v10

    move-object v5, v4

    .line 576
    :goto_149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-lez v8, :cond_3a2

    div-int/lit8 v4, v7, 0x5

    :goto_17d
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 578
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a5

    const/4 v4, 0x1

    move v9, v4

    .line 580
    :goto_191
    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z

    if-nez v4, :cond_3a9

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isLinked()Z

    move-result v4

    if-eqz v4, :cond_3a9

    const/4 v4, 0x1

    move v10, v4

    .line 581
    :goto_19d
    if-nez v10, :cond_3ad

    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentLive:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3ad

    sget-wide v22, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    sub-long v22, v20, v22

    const-wide/16 v24, 0x1388

    cmp-long v4, v22, v24

    if-ltz v4, :cond_3ad

    const/4 v4, 0x1

    move v11, v4

    .line 582
    :goto_1b5
    if-nez v10, :cond_3b1

    sget-wide v22, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    sub-long v22, v20, v22

    const-wide/16 v24, 0x4e20

    cmp-long v4, v22, v24

    if-ltz v4, :cond_3b1

    const/4 v4, 0x1

    .line 585
    :goto_1c2
    sget-boolean v10, Lcom/isaigu/gymapp/wearable/BandRemote;->visSeen:Z

    if-eqz v10, :cond_3b4

    sget-boolean v10, Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z

    if-eqz v10, :cond_3b4

    .line 586
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isLinked()Z

    move-result v10

    if-eqz v10, :cond_3b4

    const/4 v10, 0x1

    .line 587
    :goto_1d1
    sget-boolean v19, Lcom/isaigu/gymapp/wearable/BandRemote;->musicAsked:Z

    if-nez v19, :cond_1dd

    if-nez v10, :cond_1ef

    if-nez v9, :cond_1dd

    if-nez v11, :cond_1dd

    if-eqz v4, :cond_1ef

    .line 588
    :cond_1dd
    const/4 v4, 0x0

    sput-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->musicAsked:Z

    .line 589
    sput-object v17, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 590
    sput-object v18, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentLive:Ljava/lang/String;

    .line 591
    sput-wide v20, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    .line 592
    const/16 v4, 0x32

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->musicInfo(ZZILjava/lang/String;Ljava/lang/String;II)[B

    move-result-object v3

    invoke-interface {v12, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 596
    :cond_1ef
    if-nez p0, :cond_1f3

    if-eqz v9, :cond_3b7

    :cond_1f3
    const/16 v19, 0x1

    :goto_1f5
    move-object v10, v5

    move-object v11, v6

    move v12, v2

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-static/range {v10 .. v21}, Lcom/isaigu/gymapp/wearable/BandRemote;->sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V

    goto/16 :goto_40

    .line 496
    :cond_201
    const/4 v2, 0x0

    goto/16 :goto_59

    .line 502
    :cond_204
    if-nez v10, :cond_69

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v2, :cond_69

    .line 503
    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v4, v20, v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    goto/16 :goto_69

    .line 506
    :cond_215
    const-wide/16 v2, 0x0

    goto/16 :goto_73

    .line 507
    :cond_219
    const/4 v2, 0x0

    goto/16 :goto_84

    .line 514
    :cond_21c
    sget-boolean v3, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-eqz v3, :cond_9f

    .line 515
    const-string v3, "ai"

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V

    goto/16 :goto_9f

    .line 521
    :cond_229
    const/16 v14, 0xaa

    goto/16 :goto_b3

    .line 523
    :cond_22d
    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "Workout"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_d1

    .line 538
    :cond_238
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_f9

    .line 543
    :cond_23c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " \u00b7 "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v22

    sub-double v18, v18, v22

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/BandRemote;->mmss(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 544
    const-wide/16 v18, 0x0

    cmpl-double v2, v6, v18

    if-lez v2, :cond_292

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u00b7 "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " kcal"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_287
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_104

    :cond_292
    const-string v2, ""

    goto :goto_287

    .line 546
    :cond_295
    const/4 v10, 0x0

    goto/16 :goto_109

    .line 547
    :cond_298
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_10d

    .line 551
    :cond_29c
    if-nez v10, :cond_2aa

    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-lez v2, :cond_319

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-nez v2, :cond_319

    .line 552
    :cond_2aa
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_310

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v2

    .line 554
    :goto_2b8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v9, "Training "

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v18, v18, v22

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/BandRemote;->mmss(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 555
    const-wide/16 v18, 0x0

    cmpl-double v6, v2, v18

    if-lez v6, :cond_313

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " kcal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2fe
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 557
    if-nez v10, :cond_316

    const/4 v2, 0x1

    move v3, v2

    .line 558
    :goto_30a
    const-string v9, "tr"

    move v2, v10

    move-object v5, v4

    .line 559
    goto/16 :goto_149

    .line 552
    :cond_310
    const-wide/16 v2, 0x0

    goto :goto_2b8

    .line 555
    :cond_313
    const-string v2, ""

    goto :goto_2fe

    .line 557
    :cond_316
    const/4 v2, 0x0

    move v3, v2

    goto :goto_30a

    .line 559
    :cond_319
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-eqz v2, :cond_393

    .line 560
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v5

    .line 561
    if-eqz v5, :cond_37b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_37b

    .line 562
    :goto_32b
    if-lez v13, :cond_384

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041c\u0443\u0437\u0438\u043a\u0430 \u00b7 "

    const-string v4, "Music \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bpm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 564
    :goto_34d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v2

    if-nez v2, :cond_38e

    const/4 v10, 0x1

    .line 565
    :goto_354
    if-nez v10, :cond_390

    const/4 v2, 0x1

    move v3, v2

    .line 566
    :goto_358
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v2

    div-int/lit16 v7, v2, 0x3e8

    .line 567
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v2

    div-int/lit16 v8, v2, 0x3e8

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mu|"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move v2, v10

    move-object v6, v4

    .line 569
    goto/16 :goto_149

    .line 561
    :cond_37b
    const-string v2, "\u041c\u0443\u0437\u0438\u043a\u0430"

    const-string v3, "Music"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_32b

    .line 563
    :cond_384
    const-string v2, "\u041c\u0443\u0437\u0438\u043a\u0430"

    const-string v3, "Music"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_34d

    .line 564
    :cond_38e
    const/4 v10, 0x0

    goto :goto_354

    .line 565
    :cond_390
    const/4 v2, 0x0

    move v3, v2

    goto :goto_358

    .line 571
    :cond_393
    const-string v2, "\u041c\u0443\u0437\u0438\u043a\u0430 \u00b7 \u25b6 \u0441\u0442\u0430\u0440\u0442"

    const-string v3, "Music \u00b7 \u25b6 start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 572
    const/4 v2, 0x0

    .line 573
    const/4 v3, 0x1

    .line 574
    const-string v9, "idle"

    move-object v5, v4

    goto/16 :goto_149

    .line 577
    :cond_3a2
    const/4 v4, 0x0

    goto/16 :goto_17d

    .line 578
    :cond_3a5
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_191

    .line 580
    :cond_3a9
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_19d

    .line 581
    :cond_3ad
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_1b5

    .line 582
    :cond_3b1
    const/4 v4, 0x0

    goto/16 :goto_1c2

    .line 586
    :cond_3b4
    const/4 v10, 0x0

    goto/16 :goto_1d1

    .line 596
    :cond_3b7
    const/16 v19, 0x0

    goto/16 :goto_1f5
.end method

.method private static scheduleAutoOpen()V
    .registers 4

    .prologue
    .line 986
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandAutoOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 991
    :goto_a
    return-void

    .line 989
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->autoOpen:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 990
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->autoOpen:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method

.method private static sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V
    .registers 34

    .prologue
    .line 728
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isLinked()Z

    move-result v4

    if-nez v4, :cond_7

    .line 871
    :cond_6
    :goto_6
    return-void

    .line 731
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v11

    .line 732
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v4, v5, :cond_1a1

    if-eqz v11, :cond_1a1

    const/4 v4, 0x1

    move v7, v4

    .line 733
    :goto_17
    if-eqz v7, :cond_1a5

    const-string v4, "ai"

    move-object v10, v4

    .line 734
    :goto_1c
    if-eqz v7, :cond_1c4

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v4

    move-wide v8, v4

    .line 735
    :goto_23
    if-eqz v7, :cond_1da

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v4, v5, :cond_1da

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v4

    if-eqz v4, :cond_1da

    const/4 v4, 0x1

    .line 736
    :goto_34
    const-string v5, ""

    .line 737
    if-eqz v4, :cond_1dd

    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    if-nez v6, :cond_1dd

    .line 738
    const-string v5, "long"

    .line 742
    :cond_3e
    :goto_3e
    sput-object v10, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 743
    sput-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 746
    :try_start_46
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 747
    const-string v6, "t"

    const-string v15, "state"

    invoke-virtual {v14, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string v6, "v"

    const/4 v15, 0x2

    invoke-virtual {v14, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 749
    const-string v6, "mode"

    invoke-virtual {v14, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    const-string v6, "hr"

    const/4 v15, 0x0

    move/from16 v0, p3

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v14, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 751
    const-string v15, "z"

    if-lez p3, :cond_1f1

    invoke-static/range {p3 .. p4}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v6

    :goto_71
    invoke-virtual {v14, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 752
    const-string v6, "lim"

    move/from16 v0, p4

    invoke-virtual {v14, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 753
    const-string v6, "title"

    if-nez v7, :cond_85

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v15

    if-eqz v15, :cond_87

    :cond_85
    move-object/from16 p0, p1

    :cond_87
    move-object/from16 v0, p0

    invoke-virtual {v14, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v6, "sub"

    if-nez v7, :cond_96

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v15

    if-eqz v15, :cond_98

    :cond_96
    const-string p1, ""

    :cond_98
    move-object/from16 v0, p1

    invoke-virtual {v14, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    const-string v6, "kcal"

    const-wide/16 v16, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v14, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 756
    const-string v6, "run"

    move/from16 v0, p2

    invoke-virtual {v14, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 757
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 758
    const-string v9, "plus"

    if-eqz v7, :cond_1f4

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v6

    :goto_c2
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 759
    const-string v9, "minus"

    if-eqz v7, :cond_206

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v6

    :goto_cd
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 760
    const-string v9, "dbl"

    if-eqz v7, :cond_218

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v6

    if-eqz v6, :cond_218

    const/4 v6, 0x1

    :goto_db
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 761
    const-string v6, "can"

    invoke-virtual {v14, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    const-string v8, "dbl"

    if-eqz v7, :cond_21b

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v6

    if-eqz v6, :cond_21b

    const/4 v6, 0x1

    :goto_ee
    invoke-virtual {v14, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 763
    const-string v6, "vib"

    invoke-virtual {v14, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    if-eqz v7, :cond_2b6

    .line 767
    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v5

    .line 768
    const-string v6, "st"

    if-eqz v4, :cond_21e

    const-string v4, "ready"

    :goto_102
    invoke-virtual {v14, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 770
    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    .line 771
    const-string v6, "ph"

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 772
    const-string v6, "pi"

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v7

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 773
    const-string v6, "pd"

    iget v7, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 774
    const-string v6, "pl"

    const-wide/16 v8, 0x0

    iget v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v18

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v14, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 775
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v5, v4, :cond_157

    .line 776
    const-string v4, "rl"

    const-wide/16 v6, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v14, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 778
    :cond_157
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 779
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 780
    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_232

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 781
    iget v8, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 782
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_185
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_185} :catch_186

    goto :goto_16b

    .line 868
    :catch_186
    move-exception v4

    .line 869
    const-string v5, "applink"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 732
    :cond_1a1
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_17

    .line 733
    :cond_1a5
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v4

    if-nez v4, :cond_1af

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v4, :cond_1b4

    :cond_1af
    const-string v4, "manual"

    move-object v10, v4

    goto/16 :goto_1c

    :cond_1b4
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v4

    if-eqz v4, :cond_1bf

    const-string v4, "music"

    move-object v10, v4

    goto/16 :goto_1c

    :cond_1bf
    const-string v4, "idle"

    move-object v10, v4

    goto/16 :goto_1c

    .line 734
    :cond_1c4
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v4

    if-eqz v4, :cond_1d5

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v4

    move-wide v8, v4

    goto/16 :goto_23

    :cond_1d5
    const-wide/16 v4, 0x0

    move-wide v8, v4

    goto/16 :goto_23

    .line 735
    :cond_1da
    const/4 v4, 0x0

    goto/16 :goto_34

    .line 739
    :cond_1dd
    sget-object v6, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    sget-object v6, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3e

    .line 740
    const-string v5, "short"

    goto/16 :goto_3e

    .line 751
    :cond_1f1
    const/4 v6, 0x0

    goto/16 :goto_71

    .line 758
    :cond_1f4
    :try_start_1f4
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v6

    if-nez v6, :cond_200

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v6

    if-eqz v6, :cond_203

    :cond_200
    const/4 v6, 0x1

    goto/16 :goto_c2

    :cond_203
    const/4 v6, 0x0

    goto/16 :goto_c2

    .line 759
    :cond_206
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v6

    if-nez v6, :cond_212

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v6

    if-eqz v6, :cond_215

    :cond_212
    const/4 v6, 0x1

    goto/16 :goto_cd

    :cond_215
    const/4 v6, 0x0

    goto/16 :goto_cd

    .line 760
    :cond_218
    const/4 v6, 0x0

    goto/16 :goto_db

    .line 762
    :cond_21b
    const/4 v6, 0x0

    goto/16 :goto_ee

    .line 768
    :cond_21e
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v5, v4, :cond_226

    const-string v4, "rest"

    goto/16 :goto_102

    .line 769
    :cond_226
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v5, v4, :cond_22e

    const-string v4, "run"

    goto/16 :goto_102

    :cond_22e
    const-string v4, "pause"

    goto/16 :goto_102

    .line 784
    :cond_232
    const-string v4, "pds"

    invoke-virtual {v14, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 785
    const-string v4, "pns"

    invoke-virtual {v14, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    const-string v4, "u"

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {v14, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 787
    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 788
    const-string v6, "tot"

    invoke-virtual {v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v7

    iget v7, v7, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-wide v8, v4

    .line 798
    :goto_261
    const-string v4, "el"

    invoke-virtual {v14, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 801
    const-wide/32 v4, 0x2bf20

    invoke-static {v12, v13, v4, v5}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v11

    .line 802
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 803
    const/4 v4, 0x0

    move v7, v4

    :goto_274
    const/16 v4, 0x1e

    if-ge v7, v4, :cond_30a

    .line 804
    const-wide/32 v4, 0x2bf20

    sub-long v4, v12, v4

    int-to-long v0, v7

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1770

    mul-long v16, v16, v18

    add-long v16, v16, v4

    .line 805
    const-wide/16 v4, 0x1770

    add-long v18, v16, v4

    .line 806
    const/4 v5, 0x0

    .line 807
    const/4 v4, 0x0

    .line 808
    const/4 v6, 0x0

    :goto_28d
    invoke-virtual {v11}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_2fc

    .line 809
    iget-object v0, v11, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v6

    cmp-long v20, v20, v16

    if-ltz v20, :cond_2b3

    iget-object v0, v11, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v6

    cmp-long v20, v20, v18

    if-gez v20, :cond_2b3

    .line 810
    iget-object v0, v11, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    move-object/from16 v20, v0

    aget v20, v20, v6

    add-int v5, v5, v20

    .line 811
    add-int/lit8 v4, v4, 0x1

    .line 808
    :cond_2b3
    add-int/lit8 v6, v6, 0x1

    goto :goto_28d

    .line 789
    :cond_2b6
    const-string v4, "music"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2de

    .line 790
    const-string v5, "st"

    if-eqz p2, :cond_2db

    const-string v4, "run"

    :goto_2c4
    invoke-virtual {v14, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    const-string v4, "pos"

    move/from16 v0, p7

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 792
    const-string v4, "dur"

    move/from16 v0, p8

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 793
    const-wide/16 v4, 0x3e8

    div-long v4, p5, v4

    move-wide v8, v4

    goto :goto_261

    .line 790
    :cond_2db
    const-string v4, "pause"

    goto :goto_2c4

    .line 795
    :cond_2de
    const-string v5, "st"

    if-eqz p2, :cond_2ee

    const-string v4, "run"

    :goto_2e4
    invoke-virtual {v14, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const-wide/16 v4, 0x3e8

    div-long v4, p5, v4

    move-wide v8, v4

    goto/16 :goto_261

    .line 795
    :cond_2ee
    const-string v4, "idle"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f9

    const-string v4, "idle"

    goto :goto_2e4

    :cond_2f9
    const-string v4, "pause"

    goto :goto_2e4

    .line 814
    :cond_2fc
    if-lez v4, :cond_308

    div-int v4, v5, v4

    :goto_300
    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 803
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_274

    .line 814
    :cond_308
    const/4 v4, 0x0

    goto :goto_300

    .line 816
    :cond_30a
    const-string v4, "hh"

    invoke-virtual {v14, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_34c

    const-wide/16 v4, 0x5

    add-long/2addr v4, v8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :goto_31b
    invoke-static {v12, v13, v4, v5}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v4

    .line 818
    const-string v5, "avg"

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v6

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 819
    const-string v5, "max"

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v6

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 820
    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v5

    .line 821
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 822
    const/4 v4, 0x1

    :goto_33d
    const/4 v7, 0x5

    if-gt v4, v7, :cond_350

    .line 823
    aget-wide v8, v5, v4

    const-wide/16 v16, 0x3e8

    div-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 822
    add-int/lit8 v4, v4, 0x1

    goto :goto_33d

    .line 817
    :cond_34c
    const-wide/32 v4, 0x2bf20

    goto :goto_31b

    .line 825
    :cond_350
    const-string v4, "zt"

    invoke-virtual {v14, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/wearable/BandRemote;->modules(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 827
    const-string v4, "mods"

    invoke-virtual {v14, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    if-eqz v4, :cond_36f

    sget-wide v6, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    cmp-long v4, v12, v6

    if-gez v4, :cond_36f

    .line 829
    const-string v4, "sum"

    sget-object v6, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    invoke-virtual {v14, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 831
    :cond_36f
    const-string v6, "lang"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v4

    if-eqz v4, :cond_395

    const-string v4, "bg"

    :goto_379
    invoke-virtual {v14, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 833
    sget-object v7, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v8, v7

    const/4 v4, 0x0

    :goto_385
    if-ge v4, v8, :cond_398

    aget-object v9, v7, v4

    .line 834
    invoke-static {v9}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_392

    .line 835
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 833
    :cond_392
    add-int/lit8 v4, v4, 0x1

    goto :goto_385

    .line 831
    :cond_395
    const-string v4, "en"

    goto :goto_379

    .line 838
    :cond_398
    const-string v4, "lic"

    invoke-virtual {v14, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->channels()Lorg/json/JSONArray;

    move-result-object v7

    .line 840
    const-string v4, "ch"

    invoke-virtual {v14, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 841
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStrength()I

    move-result v8

    .line 842
    const-string v4, "ms"

    invoke-virtual {v14, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 843
    const-string v4, "ack"

    sget-object v9, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v14, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "st"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "ph"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "can"

    .line 847
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "dbl"

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "lang"

    .line 848
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v4, "sum"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b9

    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    const-string v6, "n"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    :goto_449
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "hr"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kcal"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 851
    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->bandAppVisible:Z

    if-nez v6, :cond_4bb

    .line 852
    sget-object v6, Lcom/isaigu/gymapp/wearable/BandRemote;->lastCore:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4cf

    .line 853
    const-string v4, "z"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v0, p3

    move-wide/from16 v1, p10

    invoke-static {v0, v4, v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->sendHrOnly(IIJ)V

    goto/16 :goto_6

    .line 848
    :cond_4b9
    const/4 v4, 0x0

    goto :goto_449

    .line 857
    :cond_4bb
    if-nez p9, :cond_4cf

    sget-object v6, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4cf

    sget-wide v6, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    sub-long v6, p10, v6

    const-wide/16 v8, 0xfa0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    .line 860
    :cond_4cf
    sput-object v5, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    .line 861
    sput-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastCore:Ljava/lang/String;

    .line 862
    sput-wide p10, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    .line 863
    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    sput v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastHrSent:I

    .line 864
    sput-wide p10, Lcom/isaigu/gymapp/wearable/BandRemote;->lastHrSentMs:J

    .line 865
    const-string v4, "seq"

    sget v5, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    invoke-virtual {v14, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 866
    const-string v4, "boot"

    sget-wide v6, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    invoke-virtual {v14, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 867
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->send(Ljava/lang/String;)Z
    :try_end_4f9
    .catch Ljava/lang/Throwable; {:try_start_1f4 .. :try_end_4f9} :catch_186

    goto/16 :goto_6
.end method

.method private static sendHrOnly(IIJ)V
    .registers 10

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 876
    sget v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastHrSent:I

    if-ne v0, v1, :cond_14

    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastHrSentMs:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gez v1, :cond_14

    .line 882
    :goto_13
    return-void

    .line 879
    :cond_14
    sput v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastHrSent:I

    .line 880
    sput-wide p2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastHrSentMs:J

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"t\":\"hr\",\"hr\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"z\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->send(Ljava/lang/String;)Z

    goto :goto_13
.end method

.method public static start()V
    .registers 2

    .prologue
    .line 83
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 94
    :cond_8
    :goto_8
    return-void

    .line 86
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;)V

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;)V

    .line 88
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->visSeen:Z

    .line 90
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    if-nez v0, :cond_8

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 92
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public static stop()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 98
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onAppInstalled(I)V
    .registers 2

    .prologue
    .line 116
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(I)V

    .line 117
    return-void
.end method

.method public onAppMessage(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 122
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public onMediaKey(II)V
    .registers 5

    .prologue
    .line 111
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Key;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/BandRemote$Key;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public onMusicRequest()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 105
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->musicAsked:Z

    .line 106
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method
