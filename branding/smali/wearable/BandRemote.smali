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
        Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;
    }
.end annotation


# static fields
.field private static final APP_MS:J = 0xfa0L

.field private static final BOOT:J

.field private static final HISTORY_BARS:I = 0x1e

.field private static final HISTORY_MS:J = 0x2bf20L

.field private static final INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

.field private static final MUSIC_KEEPALIVE_MS:J = 0x4e20L

.field private static final MUSIC_LIVE_MS:J = 0x1388L

.field private static final TICK_MS:J = 0x3e8L

.field private static final VOL:I = 0x32

.field private static aiElapsedS:J

.field private static aiWasRunning:Z

.field private static endSeq:I

.field private static final handler:Landroid/os/Handler;

.field private static lastAck:Ljava/lang/String;

.field private static lastAppMs:J

.field private static lastChannel:I

.field private static lastMode:Ljava/lang/String;

.field private static lastRestReady:Z

.field private static lastSent:Ljava/lang/String;

.field private static lastSentLive:Ljava/lang/String;

.field private static lastSentMs:J

.field private static lastSet:I

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
            "Ljava/util/LinkedList<",
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


# direct methods
.method static constructor <clinit>()V
    .registers 5

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
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentLive:Ljava/lang/String;

    .line 109
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    .line 111
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 217
    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    .line 218
    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    sput-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    .line 270
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 271
    const/4 v1, 0x1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 272
    sput v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    .line 596
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    rem-long/2addr v1, v3

    sput-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    .line 606
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 33
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 33
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    return v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 33
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .registers 7

    .line 303
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p0

    .line 304
    if-eqz p0, :cond_33

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v1, :cond_16

    goto :goto_33

    .line 307
    :cond_16
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 308
    array-length v2, v1

    new-array v2, v2, [I

    .line 309
    const/4 v3, 0x0

    :goto_1e
    array-length v4, v1

    if-ge v3, v4, :cond_32

    .line 310
    aget v4, v1, v3

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    aput v4, v2, v3
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_34

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 312
    :cond_32
    return-object v2

    .line 305
    :cond_33
    :goto_33
    return-object v0

    .line 313
    :catchall_34
    move-exception p0

    .line 314
    return-object v0
.end method

.method static channelSet(II)V
    .registers 5

    .line 344
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 346
    :goto_c
    if-eqz v0, :cond_29

    if-ltz p0, :cond_29

    array-length v1, v0

    if-lt p0, v1, :cond_14

    goto :goto_29

    .line 349
    :cond_14
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 350
    aget v0, v0, p0

    sub-int/2addr p1, v0

    .line 351
    if-nez p1, :cond_25

    .line 352
    return-void

    .line 354
    :cond_25
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelStep(II)V

    .line 355
    return-void

    .line 347
    :cond_29
    :goto_29
    return-void
.end method

.method static channelStep(II)V
    .registers 8

    .line 322
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 324
    :goto_a
    if-eqz v1, :cond_88

    if-ltz p0, :cond_88

    array-length v2, v1

    if-ge p0, v2, :cond_88

    if-nez p1, :cond_15

    goto/16 :goto_88

    .line 327
    :cond_15
    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 330
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1d
    :try_start_1d
    array-length v5, v1

    if-ge v4, v5, :cond_2a

    .line 331
    if-ne v4, p0, :cond_24

    const/4 v5, 0x1

    goto :goto_25

    :cond_24
    const/4 v5, 0x0

    :goto_25
    aput-boolean v5, v1, v4

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 333
    :cond_2a
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v4
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_82

    .line 335
    array-length v5, v2

    invoke-static {v2, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    nop

    .line 337
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez p1, :cond_4b

    const-string v2, " +"

    goto :goto_4d

    :cond_4b
    const-string v2, " "

    :goto_4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 339
    if-eqz v4, :cond_72

    if-eqz v0, :cond_72

    array-length v1, v0

    if-ge p0, v1, :cond_72

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_74

    :cond_72
    const-string p0, " (not applied)"

    :goto_74
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 338
    const-string p1, "applink"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void

    .line 335
    :catchall_82
    move-exception p0

    array-length p1, v2

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    throw p0

    .line 325
    :cond_88
    :goto_88
    return-void
.end method

.method private static channels()Lorg/json/JSONArray;
    .registers 5

    .line 748
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 749
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 750
    if-eqz v1, :cond_10

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 751
    :goto_11
    if-nez v2, :cond_14

    .line 752
    return-object v0

    .line 754
    :cond_14
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 755
    const/4 v3, 0x0

    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_2d

    .line 756
    if-eqz v1, :cond_25

    array-length v4, v1

    if-ge v3, v4, :cond_25

    aget-boolean v4, v1, v3

    if-eqz v4, :cond_25

    const/4 v4, -0x1

    goto :goto_27

    :cond_25
    aget v4, v2, v3

    :goto_27
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 755
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 758
    :cond_2d
    return-object v0
.end method

.method static handleApp(Ljava/lang/String;)V
    .registers 8

    .line 114
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "cmd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_43

    .line 116
    const-string v2, "id"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_43

    .line 118
    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 119
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 120
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void

    .line 123
    :cond_32
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 124
    :goto_35
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_43

    .line 125
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_35

    .line 129
    :cond_43
    const-string v2, "hello"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "v"

    const/4 v5, 0x0

    if-eqz v2, :cond_6a

    .line 130
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_5b

    :try_start_54
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_5b

    .line 133
    :catch_59
    move-exception p0

    goto :goto_64

    .line 132
    :cond_5b
    :goto_5b
    const-string v0, "lang"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(ILjava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_64} :catch_59

    .line 135
    :goto_64
    const-string p0, ""

    sput-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    goto/16 :goto_145

    .line 136
    :cond_6a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 137
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applink"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "toggle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_9d

    .line 140
    invoke-static {v5, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_146

    .line 141
    :cond_9d
    const-string v1, "plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 142
    const/4 p0, 0x4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_146

    .line 143
    :cond_ab
    const-string v1, "minus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x3

    if-eqz v1, :cond_b9

    .line 144
    invoke-static {v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_146

    .line 145
    :cond_b9
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object p0

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_dd

    if-eqz p0, :cond_dd

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 148
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    .line 150
    :cond_dd
    goto :goto_146

    :cond_de
    const-string v1, "stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 151
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p0

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p0, v0, :cond_f2

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    goto :goto_146

    .line 154
    :cond_f2
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_146

    .line 157
    :cond_f6
    const-string v1, "ch_plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v6, "c"

    if-nez v1, :cond_129

    const-string v1, "ch_minus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    goto :goto_129

    .line 160
    :cond_10a
    const-string v1, "ch_set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 161
    invoke-static {p0, v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 162
    const/16 v1, 0x64

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    goto :goto_141

    .line 158
    :cond_129
    :goto_129
    invoke-static {p0, v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 159
    const/16 v1, 0xa

    const-string v2, "d"

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 164
    :cond_141
    :goto_141
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleCommand(Ljava/lang/String;)V

    goto :goto_146

    .line 136
    :cond_145
    :goto_145
    nop

    .line 169
    :goto_146
    sget-boolean p0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    if-nez p0, :cond_155

    .line 170
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    .line 171
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :cond_155
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void
.end method

.method static handleKey(II)V
    .registers 7

    .line 370
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 371
    return-void

    .line 374
    :cond_b
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2d

    if-ne p0, v2, :cond_13

    goto :goto_2d

    .line 376
    :cond_13
    const/4 v3, 0x4

    if-ne p0, v3, :cond_18

    .line 377
    const/4 v0, 0x1

    goto :goto_2e

    .line 378
    :cond_18
    const/4 v3, 0x3

    if-ne p0, v3, :cond_1c

    .line 379
    goto :goto_2e

    .line 380
    :cond_1c
    const/4 v3, 0x5

    if-ne p0, v3, :cond_2c

    .line 381
    const/16 v3, 0x32

    if-le p1, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_29

    :cond_25
    if-ge p1, v3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 382
    :goto_29
    if-nez v0, :cond_2e

    .line 383
    return-void

    .line 386
    :cond_2c
    return-void

    .line 375
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .line 388
    :cond_2e
    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " vol="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " \u2192 "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "remote"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object p0

    .line 390
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p1

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p1, v3, :cond_6a

    if-eqz p0, :cond_6a

    const/4 p1, 0x1

    goto :goto_6b

    :cond_6a
    const/4 p1, 0x0

    .line 391
    :goto_6b
    if-eqz p1, :cond_8f

    .line 392
    if-nez v0, :cond_85

    .line 393
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object p1

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne p1, v0, :cond_81

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result p0

    if-eqz p0, :cond_81

    .line 394
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    goto :goto_b9

    .line 396
    :cond_81
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_b9

    .line 398
    :cond_85
    if-lez v0, :cond_8b

    .line 399
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    goto :goto_b9

    .line 401
    :cond_8b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    goto :goto_b9

    .line 403
    :cond_8f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result p0

    if-nez p0, :cond_ae

    if-nez v0, :cond_9e

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result p0

    if-nez p0, :cond_9e

    goto :goto_ae

    .line 406
    :cond_9e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result p0

    if-eqz p0, :cond_b9

    .line 407
    if-nez v0, :cond_aa

    .line 408
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_b9

    .line 410
    :cond_aa
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_b9

    .line 404
    :cond_ae
    :goto_ae
    if-nez v0, :cond_b1

    goto :goto_b6

    .line 405
    :cond_b1
    if-lez v0, :cond_b5

    const/4 v1, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v1, 0x2

    .line 404
    :goto_b6
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 413
    :cond_b9
    :goto_b9
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {p1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    return-void
.end method

.method static intField(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 276
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return p0

    .line 277
    :catchall_a
    move-exception p0

    .line 278
    return p2
.end method

.method static jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 359
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 360
    return-object v0

    .line 363
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    return-object p0

    .line 364
    :catchall_e
    move-exception p0

    .line 365
    return-object v0
.end method

.method static leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 4

    .line 284
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 285
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 286
    :goto_d
    if-nez v0, :cond_10

    .line 287
    return-object v1

    .line 289
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 290
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_2d

    .line 291
    return-object v2

    .line 293
    :cond_2d
    goto :goto_14

    .line 294
    :cond_2e
    return-object v1
.end method

.method static mainStep(I)V
    .registers 5

    .line 238
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 239
    if-nez v0, :cond_f

    .line 240
    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x2

    :goto_b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 241
    return-void

    .line 244
    :cond_f
    :try_start_f
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 245
    return-void

    .line 247
    :cond_16
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_28

    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_28

    .line 249
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    goto :goto_2b

    .line 251
    :cond_28
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 253
    :goto_2b
    const-string v0, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez p0, :cond_3d

    const-string v3, "+"

    goto :goto_3f

    :cond_3d
    const-string v3, ""

    :goto_3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " \u2192 "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz v1, :cond_52

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_53

    :cond_52
    const/4 v1, -0x1

    :goto_53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_f .. :try_end_5e} :catchall_5f

    .line 256
    goto :goto_65

    .line 254
    :catchall_5f
    move-exception p0

    .line 255
    const-string v0, "BandRemote.mainStep"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    :goto_65
    return-void
.end method

.method static mainStrength()I
    .registers 2

    .line 262
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 264
    :goto_11
    if-eqz v1, :cond_15

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    :cond_15
    return v0

    .line 265
    :catchall_16
    move-exception v1

    .line 266
    return v0
.end method

.method private static mmss(D)Ljava/lang/String;
    .registers 8

    .line 841
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 842
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3c

    div-long v4, p0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    rem-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%d:%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static moduleCommand(Ljava/lang/String;)V
    .registers 5

    .line 179
    if-nez p0, :cond_3

    .line 180
    return-void

    .line 182
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    const-string v1, "train_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 184
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_fd

    .line 185
    :cond_15
    const-string v1, "train_plus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    .line 186
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto/16 :goto_fd

    .line 187
    :cond_23
    const-string v1, "train_minus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_31

    .line 188
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto/16 :goto_fd

    .line 189
    :cond_31
    const-string v1, "train_stop"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 190
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_fd

    .line 191
    :cond_3f
    const-string v1, "tm_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 192
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandTogglePause()V

    goto/16 :goto_fd

    .line 193
    :cond_4c
    const-string v1, "mu_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto/16 :goto_fd

    .line 195
    :cond_59
    const-string v1, "mu_next"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 196
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto/16 :goto_fd

    .line 197
    :cond_66
    const-string v1, "mu_prev"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 198
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto/16 :goto_fd

    .line 199
    :cond_73
    const-string v1, "mu_up"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 200
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_fd

    .line 201
    :cond_80
    const-string v1, "mu_down"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 202
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_fd

    .line 203
    :cond_8d
    const-string v1, "pause_all"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 204
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->pauseAll()V

    goto :goto_fd

    .line 205
    :cond_99
    const-string v1, "ch_plus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ec

    const-string v3, "ch_minus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    goto :goto_ec

    .line 207
    :cond_aa
    const-string v1, "ch_set"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 208
    sget p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelSet(II)V

    goto :goto_fd

    .line 209
    :cond_ba
    const-string v1, "hg_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fd

    if-eqz v0, :cond_fd

    .line 210
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 211
    xor-int/2addr p0, v2

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hr module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_dc

    const-string p0, "on"

    goto :goto_de

    :cond_dc
    const-string p0, "off"

    :goto_de
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "applink"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fd

    .line 206
    :cond_ec
    :goto_ec
    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f7

    sget p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    goto :goto_fa

    :cond_f7
    sget p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    neg-int p0, p0

    :goto_fa
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelStep(II)V

    .line 214
    :cond_fd
    :goto_fd
    return-void
.end method

.method private static moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8

    .line 763
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 764
    const-string v1, "mu"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 765
    const-string v2, "hg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 766
    const-string v3, "tr"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    const-string v4, "run"

    if-eqz p0, :cond_28

    .line 769
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 771
    :cond_28
    const/16 p0, 0x7c

    if-eqz v0, :cond_5f

    .line 772
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "arm"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pau"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 773
    const-string v5, "loop"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lbl"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_5f
    if-eqz v1, :cond_96

    .line 776
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "on"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "pm"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "play"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    const-string v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ceil"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    :cond_96
    if-eqz v2, :cond_c3

    .line 780
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "en"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "hold"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ai"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 781
    const-string v0, "up"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    :cond_c3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static modules(I)Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 788
    const-string v0, "tm"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 789
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 791
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 792
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v4

    const-string v5, "run"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 793
    const-string v4, "tr"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    :try_start_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandState()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    .line 799
    goto :goto_2f

    .line 797
    :catchall_26
    move-exception v3

    .line 798
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    :goto_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 802
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v3

    .line 803
    const-string v4, "on"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 804
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_49

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v6

    if-eqz v6, :cond_49

    const/4 v6, 0x1

    goto :goto_4a

    :cond_49
    const/4 v6, 0x0

    :goto_4a
    const-string v7, "pm"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 805
    if-eqz v3, :cond_5f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v6

    if-nez v6, :cond_5f

    const/4 v6, 0x1

    goto :goto_60

    :cond_5f
    const/4 v6, 0x0

    :goto_60
    const-string v7, "play"

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 806
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v6

    .line 807
    const-string v7, ""

    if-eqz v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move-object v6, v7

    :goto_6f
    const-string v8, "title"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    const-string v8, "pos"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 809
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    const-string v8, "dur"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 810
    if-eqz v3, :cond_91

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v6

    goto :goto_92

    :cond_91
    const/4 v6, 0x0

    :goto_92
    const-string v8, "lvl"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 811
    if-eqz v3, :cond_9e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v3

    goto :goto_9f

    :cond_9e
    const/4 v3, 0x0

    :goto_9f
    const-string v6, "ceil"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 812
    const-string v3, "mu"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 815
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v3

    .line 816
    if-eqz v2, :cond_bc

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_bc

    const/4 v2, 0x1

    goto :goto_bd

    :cond_bc
    const/4 v2, 0x0

    :goto_bd
    const-string v6, "en"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 817
    const-string v2, "up"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 818
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p0, v2, :cond_d0

    goto :goto_d1

    :cond_d0
    const/4 v4, 0x0

    :goto_d1
    const-string p0, "ai"

    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 819
    if-eqz v3, :cond_114

    .line 820
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int p0, v8

    const-string v2, "sf"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 821
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isHold()Z

    move-result p0

    const-string v2, "hold"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 822
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getForecast()D

    move-result-wide v8

    .line 823
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_fe

    goto :goto_103

    :cond_fe
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    :goto_103
    const-string p0, "fc"

    invoke-virtual {v0, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 824
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastAction()Ljava/lang/String;

    move-result-object p0

    .line 825
    if-eqz p0, :cond_10f

    move-object v7, p0

    :cond_10f
    const-string p0, "act"

    invoke-virtual {v0, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    :cond_114
    const-string p0, "hg"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    return-object v1
.end method

.method private static musicOnly()Z
    .registers 1

    .line 417
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

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static onManualStop()V
    .registers 9

    .line 532
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 533
    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_10

    sget-wide v7, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long/2addr v0, v7

    goto :goto_11

    :cond_10
    move-wide v0, v5

    :goto_11
    add-long/2addr v2, v0

    .line 534
    sput-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 535
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 536
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v0, :cond_31

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_31

    const-wide/16 v0, 0x7530

    cmp-long v4, v2, v0

    if-ltz v4, :cond_31

    .line 537
    const-string v0, "manual"

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    .line 541
    :cond_31
    goto :goto_38

    .line 539
    :catchall_32
    move-exception v0

    .line 540
    const-string v1, "BandRemote.stop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    :goto_38
    return-void
.end method

.method static onSessionEnd(Ljava/lang/String;J)V
    .registers 19

    .line 547
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "applink"

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 548
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 549
    if-eqz v6, :cond_15

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v6

    goto :goto_17

    :cond_15
    const/16 v6, 0xaa

    .line 550
    :goto_17
    const-wide/16 v7, 0x3c

    const-wide/16 v9, 0x5

    add-long/2addr v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    invoke-static {v4, v5, v7, v8}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v7

    .line 551
    const-string v8, "ai"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v11

    goto :goto_46

    .line 552
    :cond_35
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v8

    if-eqz v8, :cond_44

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v11

    goto :goto_46

    :cond_44
    const-wide/16 v11, 0x0

    .line 553
    :goto_46
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 554
    const-string v13, "n"

    sget v14, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    sput v14, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 555
    const-string v13, "kind"

    invoke-virtual {v8, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string v13, "dur"

    invoke-virtual {v8, v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 557
    const-string v13, "kcal"

    const-wide/16 v9, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v13, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 558
    const-string v9, "avg"

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 559
    const-string v9, "max"

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 560
    invoke-virtual {v7, v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v6

    .line 561
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 562
    const/4 v9, 0x1

    :goto_8b
    const/4 v10, 0x5

    if-gt v9, v10, :cond_99

    .line 563
    aget-wide v10, v6, v9

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 562
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    .line 565
    :cond_99
    const-string v6, "zt"

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    sput-object v8, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    .line 567
    const-wide/32 v6, 0x15f90

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v1, v15}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d8
    .catchall {:try_start_6 .. :try_end_d8} :catchall_d9

    .line 572
    goto :goto_f0

    .line 570
    :catchall_d9
    move-exception v0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_f0
    return-void
.end method

.method static pauseAll()V
    .registers 3

    .line 577
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    .line 578
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_1a

    if-eqz v0, :cond_1a

    .line 579
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_24

    .line 580
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_24

    .line 582
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 583
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 585
    :cond_24
    :goto_24
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 586
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 587
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    .line 589
    :cond_3f
    return-void
.end method

.method private static phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;
    .registers 2

    .line 832
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_30

    .line 836
    const-string p0, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v0, "Cool-down"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 835
    :pswitch_14
    const-string p0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v0, "Metabolic"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 834
    :pswitch_1d
    const-string p0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v0, "Main"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 833
    :pswitch_26
    const-string p0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v0, "Warm-up"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method static push(Z)V
    .registers 33

    .line 423
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_33c

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_33c

    .line 425
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_33c

    .line 428
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 429
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v1

    .line 430
    if-eqz v1, :cond_28

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-nez v4, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 431
    :goto_29
    if-eqz v4, :cond_2f

    .line 432
    sput-wide v12, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    .line 433
    const/4 v4, 0x1

    goto :goto_40

    .line 434
    :cond_2f
    if-nez v1, :cond_3e

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v4, :cond_3e

    .line 435
    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-wide v6, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v6, v12, v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 437
    :cond_3e
    move/from16 v4, p0

    :goto_40
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 438
    sget-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    if-eqz v1, :cond_4b

    sget-wide v9, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v9, v12, v9

    goto :goto_4d

    :cond_4b
    const-wide/16 v9, 0x0

    :goto_4d
    add-long/2addr v9, v5

    .line 439
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v5, v6, :cond_5e

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v5

    if-eqz v5, :cond_5e

    const/4 v5, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v5, 0x0

    .line 440
    :goto_5f
    if-eqz v5, :cond_66

    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v6, :cond_66

    .line 441
    const/4 v4, 0x1

    .line 443
    :cond_66
    if-eqz v5, :cond_77

    .line 444
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    sput-wide v14, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    goto :goto_82

    .line 445
    :cond_77
    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-eqz v6, :cond_82

    .line 446
    sget-wide v14, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    const-string v6, "ai"

    invoke-static {v6, v14, v15}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V

    .line 448
    :cond_82
    :goto_82
    sput-boolean v5, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v5

    .line 451
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_97

    .line 452
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v6

    goto :goto_99

    :cond_97
    const/16 v6, 0xaa

    .line 453
    :goto_99
    if-lez v5, :cond_b7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " bpm \u00b7 Z"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_bf

    .line 454
    :cond_b7
    const-string v11, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v14, "Workout"

    invoke-static {v11, v14}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 460
    :goto_bf
    nop

    .line 461
    nop

    .line 464
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v14

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v15

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v3, " kcal"

    const-string v17, ""

    const-string v7, " \u00b7 "

    const-wide/16 v20, 0x0

    const-string v8, "|"

    if-ne v15, v2, :cond_19b

    if-eqz v14, :cond_19b

    .line 466
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    .line 467
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 468
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v18

    .line 469
    sget-object v15, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v15, :cond_f1

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v15

    if-eqz v15, :cond_f1

    const/4 v15, 0x1

    goto :goto_f2

    :cond_f1
    const/4 v15, 0x0

    .line 470
    :goto_f2
    nop

    .line 471
    if-eqz v15, :cond_104

    .line 472
    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 \u00b7 \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v3, "Rest done \u00b7 \u25b6 continue"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v22, v6

    move-object/from16 p0, v11

    move-wide/from16 v23, v12

    goto :goto_155

    .line 474
    :cond_104
    move-object/from16 p0, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v6

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    move-wide/from16 v23, v12

    int-to-double v11, v2

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v25

    sub-double v11, v11, v25

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/BandRemote;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 475
    cmpl-double v6, v18, v20

    if-lez v6, :cond_14b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_14b
    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    :goto_155
    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v3, :cond_15b

    const/4 v3, 0x1

    goto :goto_15c

    :cond_15b
    const/4 v3, 0x0

    .line 478
    :goto_15c
    nop

    .line 479
    xor-int/lit8 v6, v3, 0x1

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v11

    double-to-int v7, v11

    .line 480
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v11

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    .line 481
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ai|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    move/from16 v26, v6

    move v12, v11

    move v6, v3

    move v11, v7

    move-object v3, v2

    move-object/from16 v2, p0

    goto/16 :goto_2a3

    .line 465
    :cond_19b
    move/from16 v22, v6

    move-object/from16 p0, v11

    move-wide/from16 v23, v12

    .line 482
    if-nez v1, :cond_23a

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-lez v2, :cond_1b1

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-nez v2, :cond_1b1

    goto/16 :goto_23a

    .line 490
    :cond_1b1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v1

    if-eqz v1, :cond_223

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v1

    .line 492
    const-string v2, "Music"

    const-string v3, "\u041c\u0443\u0437\u0438\u043a\u0430"

    if-eqz v1, :cond_1c8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1c8

    goto :goto_1cc

    :cond_1c8
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    :goto_1cc
    if-lez v5, :cond_1ee

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041c\u0443\u0437\u0438\u043a\u0430 \u00b7 "

    const-string v6, "Music \u00b7 "

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bpm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f2

    .line 494
    :cond_1ee
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    :goto_1f2
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v3

    const/4 v6, 0x1

    .line 496
    xor-int/2addr v3, v6

    .line 497
    xor-int/lit8 v6, v3, 0x1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    .line 498
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    .line 499
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mu|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 500
    move/from16 v26, v6

    move v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v12

    move v12, v11

    move v11, v7

    goto/16 :goto_2a3

    .line 501
    :cond_223
    nop

    .line 502
    const-string v1, "\u041c\u0443\u0437\u0438\u043a\u0430 \u00b7 \u25b6 \u0441\u0442\u0430\u0440\u0442"

    const-string v2, "Music \u00b7 \u25b6 start"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    nop

    .line 504
    nop

    .line 505
    const-string v2, "idle"

    move-object v3, v1

    move-object v1, v2

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v26, 0x1

    move-object/from16 v2, p0

    goto :goto_2a3

    .line 483
    :cond_23a
    :goto_23a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_249

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v11

    goto :goto_24b

    :cond_249
    move-wide/from16 v11, v20

    .line 484
    :goto_24b
    nop

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v13, "Training "

    invoke-static {v6, v13}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-double v13, v9

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v13, v13, v18

    invoke-static {v13, v14}, Lcom/isaigu/gymapp/wearable/BandRemote;->mmss(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 486
    cmpl-double v6, v11, v20

    if-lez v6, :cond_28a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_28a
    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    nop

    .line 488
    nop

    .line 489
    xor-int/lit8 v6, v1, 0x1

    .line 490
    const-string v3, "tr"

    move/from16 v26, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, v1

    move-object v1, v3

    move-object v3, v2

    move-object/from16 v2, p0

    .line 507
    :goto_2a3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-lez v12, :cond_2d2

    div-int/lit8 v8, v11, 0x5

    goto :goto_2d3

    :cond_2d2
    const/4 v8, 0x0

    :goto_2d3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 509
    sget-object v8, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v13, 0x1

    .line 510
    xor-int/2addr v8, v13

    sget-object v14, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentLive:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2f7

    sget-wide v14, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    sub-long v14, v23, v14

    const-wide/16 v16, 0x1388

    cmp-long v18, v14, v16

    if-ltz v18, :cond_2f7

    const/4 v14, 0x1

    goto :goto_2f8

    :cond_2f7
    const/4 v14, 0x0

    .line 511
    :goto_2f8
    sget-boolean v15, Lcom/isaigu/gymapp/wearable/BandRemote;->musicAsked:Z

    if-nez v15, :cond_30d

    if-nez v8, :cond_30d

    if-nez v14, :cond_30d

    sget-wide v14, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    sub-long v14, v23, v14

    const-wide/16 v16, 0x4e20

    cmp-long v18, v14, v16

    if-ltz v18, :cond_30b

    goto :goto_30d

    :cond_30b
    const/4 v14, 0x0

    goto :goto_329

    .line 512
    :cond_30d
    :goto_30d
    const/4 v14, 0x0

    sput-boolean v14, Lcom/isaigu/gymapp/wearable/BandRemote;->musicAsked:Z

    .line 513
    sput-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 514
    sput-object v7, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentLive:Ljava/lang/String;

    .line 515
    sput-wide v23, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    .line 516
    const/16 v27, 0x32

    move/from16 v25, v6

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move/from16 v30, v11

    move/from16 v31, v12

    invoke-static/range {v25 .. v31}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->musicInfo(ZZILjava/lang/String;Ljava/lang/String;II)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 520
    :goto_329
    if-nez v4, :cond_32f

    if-eqz v8, :cond_32e

    goto :goto_32f

    :cond_32e
    const/4 v13, 0x0

    :cond_32f
    :goto_32f
    move v4, v6

    move/from16 v6, v22

    move-wide v7, v9

    move v9, v11

    move v10, v12

    move v11, v13

    move-wide/from16 v12, v23

    invoke-static/range {v2 .. v13}, Lcom/isaigu/gymapp/wearable/BandRemote;->sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V

    .line 521
    return-void

    .line 426
    :cond_33c
    :goto_33c
    return-void
.end method

.method private static sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V
    .registers 44

    .line 610
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "lang"

    const-string v4, "can"

    const-string v5, "kcal"

    const-string v6, "hr"

    const-string v7, "dbl"

    const-string v8, "run"

    const-string v9, "|"

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isLinked()Z

    move-result v10

    if-nez v10, :cond_1b

    .line 611
    return-void

    .line 613
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v10

    .line 614
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v11

    sget-object v12, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v11, v12, :cond_2b

    if-eqz v10, :cond_2b

    const/4 v11, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v11, 0x0

    .line 615
    :goto_2c
    const-string v12, "music"

    const-string v15, "idle"

    if-eqz v11, :cond_37

    const-string v16, "ai"

    :goto_34
    move-object/from16 v13, v16

    goto :goto_4f

    :cond_37
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v16

    if-nez v16, :cond_4c

    sget-boolean v16, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v16, :cond_42

    goto :goto_4c

    :cond_42
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v16

    if-eqz v16, :cond_4a

    move-object v13, v12

    goto :goto_4f

    :cond_4a
    move-object v13, v15

    goto :goto_4f

    :cond_4c
    :goto_4c
    const-string v16, "manual"

    goto :goto_34

    .line 616
    :goto_4f
    if-eqz v11, :cond_56

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v17

    goto :goto_67

    :cond_56
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v16

    if-eqz v16, :cond_65

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v17

    goto :goto_67

    :cond_65
    const-wide/16 v17, 0x0

    .line 617
    :goto_67
    if-eqz v11, :cond_7b

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v14

    move-object/from16 v19, v9

    sget-object v9, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v14, v9, :cond_7d

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v9

    if-eqz v9, :cond_7d

    const/4 v9, 0x1

    goto :goto_7e

    :cond_7b
    move-object/from16 v19, v9

    :cond_7d
    const/4 v9, 0x0

    .line 618
    :goto_7e
    nop

    .line 619
    const-string v14, ""

    if-eqz v9, :cond_90

    sget-boolean v20, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    if-nez v20, :cond_90

    .line 620
    const-string v20, "long"

    move-object/from16 v31, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v31

    goto :goto_a7

    .line 621
    :cond_90
    move-object/from16 v20, v14

    sget-object v14, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a5

    sget-object v14, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_a5

    .line 622
    const-string v14, "short"

    goto :goto_a7

    .line 624
    :cond_a5
    move-object/from16 v14, v20

    :goto_a7
    sput-object v13, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 625
    sput-boolean v9, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    .line 626
    move-object/from16 v22, v14

    move-object/from16 v21, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 628
    move-object/from16 v23, v3

    :try_start_b5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 629
    move-object/from16 v24, v12

    const-string v12, "t"

    move-wide/from16 v25, v14

    const-string v14, "state"

    invoke-virtual {v3, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string v12, "v"

    const/4 v14, 0x2

    invoke-virtual {v3, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 631
    const-string v12, "mode"

    invoke-virtual {v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    const/4 v12, 0x0

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v3, v6, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 633
    const-string v14, "z"

    if-lez v1, :cond_e1

    invoke-static/range {p3 .. p4}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v1

    goto :goto_e2

    :cond_e1
    const/4 v1, 0x0

    :goto_e2
    invoke-virtual {v3, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 634
    const-string v1, "lim"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 635
    const-string v1, "title"

    if-nez v11, :cond_f8

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_f5

    goto :goto_f8

    :cond_f5
    move-object/from16 v14, p0

    goto :goto_fa

    :cond_f8
    :goto_f8
    move-object/from16 v14, p1

    :goto_fa
    invoke-virtual {v3, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string v1, "sub"

    if-nez v11, :cond_10b

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_108

    goto :goto_10b

    :cond_108
    move-object/from16 v14, p1

    goto :goto_10d

    :cond_10b
    :goto_10b
    move-object/from16 v14, v20

    :goto_10d
    invoke-virtual {v3, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    move-object v1, v13

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v3, v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 638
    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 639
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 640
    const-string v15, "plus"

    if-eqz v11, :cond_131

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v17

    move/from16 v12, v17

    goto :goto_141

    :cond_131
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v17

    if-nez v17, :cond_140

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v17

    if-eqz v17, :cond_13e

    goto :goto_140

    :cond_13e
    const/4 v12, 0x0

    goto :goto_141

    :cond_140
    :goto_140
    const/4 v12, 0x1

    :goto_141
    invoke-virtual {v14, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 641
    const-string v12, "minus"

    if-eqz v11, :cond_14d

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v13

    goto :goto_15d

    :cond_14d
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v13

    if-nez v13, :cond_15c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v13

    if-eqz v13, :cond_15a

    goto :goto_15c

    :cond_15a
    const/4 v13, 0x0

    goto :goto_15d

    :cond_15c
    :goto_15c
    const/4 v13, 0x1

    :goto_15d
    invoke-virtual {v14, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 642
    if-eqz v11, :cond_16a

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v12

    if-eqz v12, :cond_16a

    const/4 v12, 0x1

    goto :goto_16b

    :cond_16a
    const/4 v12, 0x0

    :goto_16b
    invoke-virtual {v14, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 643
    invoke-virtual {v3, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    if-eqz v11, :cond_17b

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v12

    if-eqz v12, :cond_17b

    const/4 v12, 0x1

    goto :goto_17c

    :cond_17b
    const/4 v12, 0x0

    :goto_17c
    invoke-virtual {v3, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 645
    const-string v12, "vib"

    move-object/from16 v14, v22

    invoke-virtual {v3, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_186
    .catchall {:try_start_b5 .. :try_end_186} :catchall_49d

    .line 648
    const-string v12, "ph"

    const-string v13, "pause"

    const-string v14, "st"

    if-eqz v11, :cond_260

    .line 649
    :try_start_18e
    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v11

    .line 650
    if-eqz v9, :cond_197

    const-string v8, "ready"

    goto :goto_1a4

    :cond_197
    sget-object v9, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v11, v9, :cond_19e

    const-string v8, "rest"

    goto :goto_1a4

    .line 651
    :cond_19e
    sget-object v9, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v11, v9, :cond_1a3

    goto :goto_1a4

    :cond_1a3
    move-object v8, v13

    .line 650
    :goto_1a4
    invoke-virtual {v3, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v8

    .line 653
    iget-object v9, v8, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    const-string v9, "pi"

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v13

    invoke-virtual {v3, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 655
    const-string v9, "pd"

    iget v13, v8, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v3, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 656
    const-string v9, "pl"

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    move-object v15, v5

    move-object/from16 v20, v6

    int-to-double v5, v8

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v21

    sub-double v5, v5, v21

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    move-object/from16 v22, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v3, v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 657
    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v11, v5, :cond_1fd

    .line 658
    const-string v5, "rl"

    move-wide/from16 v6, v25

    invoke-virtual {v10, v6, v7}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    move-object/from16 p3, v12

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v3, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_201

    .line 657
    :cond_1fd
    move-object/from16 p3, v12

    move-wide/from16 v6, v25

    .line 660
    :goto_201
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 661
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 662
    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v9

    iget-object v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_215
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_230

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 663
    iget v12, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 664
    iget-object v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v11}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 665
    goto :goto_215

    .line 666
    :cond_230
    const-string v9, "pds"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    const-string v5, "pns"

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 668
    const-string v5, "u"

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v8

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 669
    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    .line 670
    const-string v5, "tot"

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v10

    iget v10, v10, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-virtual {v3, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 671
    goto :goto_2a2

    :cond_260
    move-object v15, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 p3, v12

    move-wide/from16 v6, v25

    move-object/from16 v5, v24

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28c

    .line 672
    if-eqz v0, :cond_274

    goto :goto_275

    :cond_274
    move-object v8, v13

    :goto_275
    invoke-virtual {v3, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    const-string v5, "pos"

    move/from16 v8, p7

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 674
    const-string v5, "dur"

    move/from16 v8, p8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 675
    const-wide/16 v8, 0x3e8

    div-long v10, p5, v8

    move-wide v8, v10

    goto :goto_2a2

    .line 677
    :cond_28c
    if-eqz v0, :cond_28f

    goto :goto_29a

    :cond_28f
    move-object/from16 v5, v21

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_299

    move-object v8, v5

    goto :goto_29a

    :cond_299
    move-object v8, v13

    :goto_29a
    invoke-virtual {v3, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    const-wide/16 v8, 0x3e8

    div-long v10, p5, v8

    move-wide v8, v10

    .line 680
    :goto_2a2
    const-string v5, "el"

    invoke-virtual {v3, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 683
    const-wide/32 v10, 0x2bf20

    invoke-static {v6, v7, v10, v11}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v5

    .line 684
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 685
    const/4 v13, 0x0

    :goto_2b4
    const/16 v10, 0x1e

    if-ge v13, v10, :cond_304

    .line 686
    const-wide/32 v10, 0x2bf20

    sub-long v24, v6, v10

    int-to-long v10, v13

    const-wide/16 v26, 0x1770

    mul-long v10, v10, v26

    add-long v24, v24, v10

    .line 687
    add-long v26, v24, v26

    .line 688
    nop

    .line 689
    nop

    .line 690
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    :goto_2cc
    move-object/from16 v28, v15

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v15

    if-ge v10, v15, :cond_2f1

    .line 691
    iget-object v15, v5, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v29, v15, v10

    cmp-long v15, v29, v24

    if-ltz v15, :cond_2ec

    iget-object v15, v5, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v29, v15, v10

    cmp-long v15, v29, v26

    if-gez v15, :cond_2ec

    .line 692
    iget-object v15, v5, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v15, v15, v10

    add-int v21, v21, v15

    .line 693
    add-int/lit8 v11, v11, 0x1

    .line 690
    :cond_2ec
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v15, v28

    goto :goto_2cc

    .line 696
    :cond_2f1
    if-lez v11, :cond_2f8

    div-int v21, v21, v11

    move/from16 v10, v21

    goto :goto_2f9

    :cond_2f8
    const/4 v10, 0x0

    :goto_2f9
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 685
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v15, v28

    const-wide/32 v10, 0x2bf20

    goto :goto_2b4

    .line 698
    :cond_304
    move-object/from16 v28, v15

    const-string v5, "hh"

    invoke-virtual {v3, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_31a

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    move-wide v10, v8

    goto :goto_31d

    :cond_31a
    const-wide/32 v10, 0x2bf20

    :goto_31d
    invoke-static {v6, v7, v10, v11}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v5

    .line 700
    const-string v8, "avg"

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 701
    const-string v8, "max"

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 702
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v5

    .line 703
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 704
    const/4 v9, 0x1

    :goto_33d
    const/4 v10, 0x5

    if-gt v9, v10, :cond_34b

    .line 705
    aget-wide v10, v5, v9

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 704
    add-int/lit8 v9, v9, 0x1

    goto :goto_33d

    .line 707
    :cond_34b
    const-string v5, "zt"

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 708
    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/wearable/BandRemote;->modules(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 709
    const-string v5, "mods"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    sget-object v5, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;
    :try_end_35b
    .catchall {:try_start_18e .. :try_end_35b} :catchall_49d

    const-string v8, "sum"

    if-eqz v5, :cond_368

    :try_start_35f
    sget-wide v9, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    cmp-long v11, v6, v9

    if-gez v11, :cond_368

    .line 711
    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 713
    :cond_368
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v5

    if-eqz v5, :cond_371

    const-string v5, "bg"

    goto :goto_373

    :cond_371
    const-string v5, "en"

    :goto_373
    move-object/from16 v6, v23

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 715
    sget-object v7, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v9, v7

    const/4 v10, 0x0

    :goto_381
    if-ge v10, v9, :cond_391

    aget-object v11, v7, v10

    .line 716
    invoke-static {v11}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_38e

    .line 717
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 715
    :cond_38e
    add-int/lit8 v10, v10, 0x1

    goto :goto_381

    .line 720
    :cond_391
    const-string v7, "lic"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->channels()Lorg/json/JSONArray;

    move-result-object v7

    .line 722
    const-string v9, "ch"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStrength()I

    move-result v9

    .line 724
    const-string v10, "ms"

    invoke-virtual {v3, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 725
    const-string v10, "ack"

    sget-object v11, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v10, v19

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 729
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 730
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_443

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    const-string v2, "n"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_444

    :cond_443
    const/4 v14, 0x0

    :goto_444
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 731
    move-object/from16 v1, v20

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    .line 733
    xor-int/2addr v1, v2

    if-nez p9, :cond_47f

    if-nez v1, :cond_47f

    sget-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    sub-long v1, p10, v1

    const-wide/16 v4, 0xfa0

    cmp-long v6, v1, v4

    if-gez v6, :cond_47f

    .line 734
    return-void

    .line 736
    :cond_47f
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    .line 737
    sput-wide p10, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    .line 738
    const-string v0, "seq"

    sget v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 739
    const-string v0, "boot"

    sget-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 740
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->send(Ljava/lang/String;)Z
    :try_end_49c
    .catchall {:try_start_35f .. :try_end_49c} :catchall_49d

    .line 743
    goto :goto_4b6

    .line 741
    :catchall_49d
    move-exception v0

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "applink"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :goto_4b6
    return-void
.end method

.method public static start()V
    .registers 2

    .line 67
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 68
    return-void

    .line 70
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;)V

    .line 71
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;)V

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 73
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    if-nez v0, :cond_23

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 75
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_23
    return-void
.end method

.method public static stop()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 81
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onAppInstalled(I)V
    .registers 2

    .line 99
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(I)V

    .line 100
    return-void
.end method

.method public onAppMessage(Ljava/lang/String;)V
    .registers 4

    .line 105
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public onMediaKey(II)V
    .registers 5

    .line 94
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Key;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/BandRemote$Key;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public onMusicRequest()V
    .registers 4

    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->musicAsked:Z

    .line 89
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method
