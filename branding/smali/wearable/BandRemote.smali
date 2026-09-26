.class public final Lcom/isaigu/gymapp/wearable/BandRemote;
.super Ljava/lang/Object;
.source "BandRemote.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;
.implements Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandRemote$Key;,
        Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;,
        Lcom/isaigu/gymapp/wearable/BandRemote$Push;,
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

.field private static lastSet:I

.field private static lastSig:Ljava/lang/String;

.field private static lastStep:I

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

.field private static syncAppEl:J

.field private static syncAppPi:I

.field private static syncAppPl:J

.field private static syncAppRl:J

.field private static syncAppRlActive:Z

.field private static syncAppRun:Z

.field private static syncAppSt:Ljava/lang/String;

.field private static final tick:Ljava/lang/Runnable;

.field private static trainAccumMs:J

.field private static trainStartMs:J

.field private static trainWasRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 38
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$Tick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote$Tick;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppSt:Ljava/lang/String;

    .line 48
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppPi:I

    .line 107
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    .line 109
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 215
    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;-><init>()V

    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    .line 216
    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    .line 268
    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 269
    const/4 v1, 0x1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 270
    sput v3, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    .line 588
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    rem-long/2addr v1, v3

    sput-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    .line 598
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 31
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 31
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    return v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 31
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .registers 7

    .line 301
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p0

    .line 302
    if-eqz p0, :cond_33

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v1, :cond_16

    goto :goto_33

    .line 305
    :cond_16
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 306
    array-length v2, v1

    new-array v2, v2, [I

    .line 307
    const/4 v3, 0x0

    :goto_1e
    array-length v4, v1

    if-ge v3, v4, :cond_32

    .line 308
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

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 310
    :cond_32
    return-object v2

    .line 303
    :cond_33
    :goto_33
    return-object v0

    .line 311
    :catchall_34
    move-exception p0

    .line 312
    return-object v0
.end method

.method static channelSet(II)V
    .registers 5

    .line 342
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 344
    :goto_c
    if-eqz v0, :cond_29

    if-ltz p0, :cond_29

    array-length v1, v0

    if-lt p0, v1, :cond_14

    goto :goto_29

    .line 347
    :cond_14
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 348
    aget v0, v0, p0

    sub-int/2addr p1, v0

    .line 349
    if-nez p1, :cond_25

    .line 350
    return-void

    .line 352
    :cond_25
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelStep(II)V

    .line 353
    return-void

    .line 345
    :cond_29
    :goto_29
    return-void
.end method

.method static channelStep(II)V
    .registers 8

    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 322
    :goto_a
    if-eqz v1, :cond_80

    if-ltz p0, :cond_80

    array-length v2, v1

    if-ge p0, v2, :cond_80

    if-nez p1, :cond_14

    goto :goto_80

    .line 325
    :cond_14
    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 328
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    :try_start_1c
    array-length v5, v1

    if-ge v4, v5, :cond_29

    .line 329
    if-ne v4, p0, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    aput-boolean v5, v1, v4

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 331
    :cond_29
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v4
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_7a

    .line 333
    array-length v5, v2

    invoke-static {v2, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    nop

    .line 335
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez p1, :cond_48

    const-string v2, " +"

    goto :goto_4a

    :cond_48
    const-string v2, " "

    :goto_4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    if-eqz v4, :cond_6b

    if-eqz v0, :cond_6b

    array-length p1, v0

    if-ge p0, p1, :cond_6b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u2192 "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6d

    :cond_6b
    const-string p0, " (not applied)"

    :goto_6d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 336
    const-string p1, "applink"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 333
    :catchall_7a
    move-exception p0

    array-length p1, v2

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    throw p0

    .line 323
    :cond_80
    :goto_80
    return-void
.end method

.method private static channels()Lorg/json/JSONArray;
    .registers 5

    .line 761
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 762
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 763
    if-eqz v1, :cond_10

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 764
    :goto_11
    if-nez v2, :cond_14

    .line 765
    return-object v0

    .line 767
    :cond_14
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 768
    const/4 v3, 0x0

    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_2d

    .line 769
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

    .line 768
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 771
    :cond_2d
    return-object v0
.end method

.method static handleApp(Ljava/lang/String;)V
    .registers 8

    .line 112
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "cmd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    .line 114
    const-string v2, "id"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_47

    .line 116
    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 117
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 118
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void

    .line 121
    :cond_32
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 122
    :goto_37
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v4, 0x20

    if-le v2, v4, :cond_47

    .line 123
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_37

    .line 127
    :cond_47
    const-string v2, "hello"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "v"

    const/4 v5, 0x0

    if-eqz v2, :cond_6e

    .line 128
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_5f

    :try_start_58
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_5f

    .line 131
    :catch_5d
    move-exception p0

    goto :goto_68

    .line 130
    :cond_5f
    :goto_5f
    const-string v0, "lang"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(ILjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_68} :catch_5d

    .line 133
    :goto_68
    const-string p0, ""

    sput-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    goto/16 :goto_147

    .line 134
    :cond_6e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 135
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applink"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "toggle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_9f

    .line 138
    invoke-static {v5, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_148

    .line 139
    :cond_9f
    const-string v1, "plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 140
    const/4 p0, 0x4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_148

    .line 141
    :cond_ad
    const-string v1, "minus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x3

    if-eqz v1, :cond_bb

    .line 142
    invoke-static {v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_148

    .line 143
    :cond_bb
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object p0

    .line 145
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_df

    if-eqz p0, :cond_df

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 146
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    .line 148
    :cond_df
    goto :goto_148

    :cond_e0
    const-string v1, "stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p0

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p0, v0, :cond_f4

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    goto :goto_148

    .line 152
    :cond_f4
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_148

    .line 155
    :cond_f8
    const-string v1, "ch_plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v6, "c"

    if-nez v1, :cond_12b

    const-string v1, "ch_minus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10c

    goto :goto_12b

    .line 158
    :cond_10c
    const-string v1, "ch_set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 159
    invoke-static {p0, v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 160
    const/16 v1, 0x64

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    goto :goto_143

    .line 156
    :cond_12b
    :goto_12b
    invoke-static {p0, v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 157
    const/16 v1, 0xa

    const-string v2, "d"

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 162
    :cond_143
    :goto_143
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleCommand(Ljava/lang/String;)V

    goto :goto_148

    .line 134
    :cond_147
    :goto_147
    nop

    .line 167
    :goto_148
    sget-boolean p0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    if-nez p0, :cond_157

    .line 168
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    .line 169
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    :cond_157
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method

.method static handleKey(II)V
    .registers 7

    .line 368
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 369
    return-void

    .line 372
    :cond_b
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2d

    if-ne p0, v2, :cond_13

    goto :goto_2d

    .line 374
    :cond_13
    const/4 v3, 0x4

    if-ne p0, v3, :cond_18

    .line 375
    const/4 v0, 0x1

    goto :goto_2e

    .line 376
    :cond_18
    const/4 v3, 0x3

    if-ne p0, v3, :cond_1c

    .line 377
    goto :goto_2e

    .line 378
    :cond_1c
    const/4 v3, 0x5

    if-ne p0, v3, :cond_2c

    .line 379
    const/16 v3, 0x32

    if-le p1, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_29

    :cond_25
    if-ge p1, v3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 380
    :goto_29
    if-nez v0, :cond_2e

    .line 381
    return-void

    .line 384
    :cond_2c
    return-void

    .line 373
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .line 386
    :cond_2e
    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " vol="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u2192 "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "remote"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object p0

    .line 388
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p1

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p1, v3, :cond_64

    if-eqz p0, :cond_64

    const/4 p1, 0x1

    goto :goto_65

    :cond_64
    const/4 p1, 0x0

    .line 389
    :goto_65
    if-eqz p1, :cond_89

    .line 390
    if-nez v0, :cond_7f

    .line 391
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object p1

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne p1, v0, :cond_7b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 392
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    goto :goto_b3

    .line 394
    :cond_7b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_b3

    .line 396
    :cond_7f
    if-lez v0, :cond_85

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    goto :goto_b3

    .line 399
    :cond_85
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    goto :goto_b3

    .line 401
    :cond_89
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result p0

    if-nez p0, :cond_a8

    if-nez v0, :cond_98

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result p0

    if-nez p0, :cond_98

    goto :goto_a8

    .line 404
    :cond_98
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 405
    if-nez v0, :cond_a4

    .line 406
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_b3

    .line 408
    :cond_a4
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_b3

    .line 402
    :cond_a8
    :goto_a8
    if-nez v0, :cond_ab

    goto :goto_b0

    .line 403
    :cond_ab
    if-lez v0, :cond_af

    const/4 v1, 0x1

    goto :goto_b0

    :cond_af
    const/4 v1, 0x2

    .line 402
    :goto_b0
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 411
    :cond_b3
    :goto_b3
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {p1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    return-void
.end method

.method static intField(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 274
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return p0

    .line 275
    :catchall_a
    move-exception p0

    .line 276
    return p2
.end method

.method static jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 357
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 358
    return-object v0

    .line 361
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    return-object p0

    .line 362
    :catchall_e
    move-exception p0

    .line 363
    return-object v0
.end method

.method private static kcalTag(I)Ljava/lang/String;
    .registers 3

    .line 854
    if-lez p0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " kcal"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_19
    const-string p0, ""

    :goto_1b
    return-object p0
.end method

.method static leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 4

    .line 282
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 283
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 284
    :goto_d
    if-nez v0, :cond_10

    .line 285
    return-object v1

    .line 287
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

    .line 288
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_2d

    .line 289
    return-object v2

    .line 291
    :cond_2d
    goto :goto_14

    .line 292
    :cond_2e
    return-object v1
.end method

.method static mainStep(I)V
    .registers 5

    .line 236
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 237
    if-nez v0, :cond_f

    .line 238
    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x2

    :goto_b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 239
    return-void

    .line 242
    :cond_f
    :try_start_f
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 243
    return-void

    .line 245
    :cond_16
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_28

    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_28

    .line 247
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    goto :goto_2b

    .line 249
    :cond_28
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 251
    :goto_2b
    const-string v0, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p0, :cond_3c

    const-string v3, "+"

    goto :goto_3e

    :cond_3c
    const-string v3, ""

    :goto_3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u2192 "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4e

    iget p0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_4f

    :cond_4e
    const/4 p0, -0x1

    :goto_4f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_f .. :try_end_59} :catchall_5a

    .line 254
    goto :goto_60

    .line 252
    :catchall_5a
    move-exception p0

    .line 253
    const-string v0, "BandRemote.mainStep"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :goto_60
    return-void
.end method

.method static mainStrength()I
    .registers 2

    .line 260
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 262
    :goto_11
    if-eqz v1, :cond_15

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    :cond_15
    return v0

    .line 263
    :catchall_16
    move-exception v1

    .line 264
    return v0
.end method

.method static moduleCommand(Ljava/lang/String;)V
    .registers 5

    .line 177
    if-nez p0, :cond_3

    .line 178
    return-void

    .line 180
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    const-string v1, "train_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 182
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_fb

    .line 183
    :cond_15
    const-string v1, "train_plus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    .line 184
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto/16 :goto_fb

    .line 185
    :cond_23
    const-string v1, "train_minus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_31

    .line 186
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto/16 :goto_fb

    .line 187
    :cond_31
    const-string v1, "train_stop"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 188
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_fb

    .line 189
    :cond_3f
    const-string v1, "tm_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 190
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandTogglePause()V

    goto/16 :goto_fb

    .line 191
    :cond_4c
    const-string v1, "mu_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 192
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto/16 :goto_fb

    .line 193
    :cond_59
    const-string v1, "mu_next"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 194
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto/16 :goto_fb

    .line 195
    :cond_66
    const-string v1, "mu_prev"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 196
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto/16 :goto_fb

    .line 197
    :cond_73
    const-string v1, "mu_up"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 198
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_fb

    .line 199
    :cond_80
    const-string v1, "mu_down"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 200
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_fb

    .line 201
    :cond_8d
    const-string v1, "pause_all"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 202
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->pauseAll()V

    goto :goto_fb

    .line 203
    :cond_99
    const-string v1, "ch_plus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ea

    const-string v3, "ch_minus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    goto :goto_ea

    .line 205
    :cond_aa
    const-string v1, "ch_set"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 206
    sget p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelSet(II)V

    goto :goto_fb

    .line 207
    :cond_ba
    const-string v1, "hg_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fb

    if-eqz v0, :cond_fb

    .line 208
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 209
    xor-int/2addr p0, v2

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hr module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_db

    const-string p0, "on"

    goto :goto_dd

    :cond_db
    const-string p0, "off"

    :goto_dd
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "applink"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fb

    .line 204
    :cond_ea
    :goto_ea
    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f5

    sget p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    goto :goto_f8

    :cond_f5
    sget p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    neg-int p0, p0

    :goto_f8
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelStep(II)V

    .line 212
    :cond_fb
    :goto_fb
    return-void
.end method

.method private static moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7

    .line 776
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 777
    const-string v1, "mu"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 778
    const-string v2, "hg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 779
    const-string v3, "tr"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 781
    const-string v4, "run"

    if-eqz p0, :cond_28

    .line 782
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 784
    :cond_28
    const/16 p0, 0x7c

    if-eqz v0, :cond_5a

    .line 785
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "arm"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "pau"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 786
    const-string v4, "loop"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "lbl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_5a
    if-eqz v1, :cond_8c

    .line 789
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "on"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "pm"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "play"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 790
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ceil"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    :cond_8c
    if-eqz v2, :cond_b5

    .line 793
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "en"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "hold"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "ai"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 794
    const-string p0, "up"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    :cond_b5
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

    .line 801
    const-string v0, "tm"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 802
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 804
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 805
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v4

    const-string v5, "run"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 806
    const-string v4, "tr"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    :try_start_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandState()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    .line 812
    goto :goto_2f

    .line 810
    :catchall_26
    move-exception v3

    .line 811
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    :goto_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 815
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v3

    .line 816
    const-string v4, "on"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 817
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

    .line 818
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

    .line 819
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v6

    .line 820
    const-string v7, ""

    if-eqz v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move-object v6, v7

    :goto_6f
    const-string v8, "title"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 821
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    const-string v8, "pos"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 822
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    const-string v8, "dur"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 823
    if-eqz v3, :cond_91

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v6

    goto :goto_92

    :cond_91
    const/4 v6, 0x0

    :goto_92
    const-string v8, "lvl"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 824
    if-eqz v3, :cond_9e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v3

    goto :goto_9f

    :cond_9e
    const/4 v3, 0x0

    :goto_9f
    const-string v6, "ceil"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 825
    const-string v3, "mu"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 828
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v3

    .line 829
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

    .line 830
    const-string v2, "up"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 831
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

    .line 832
    if-eqz v3, :cond_114

    .line 833
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int p0, v8

    const-string v2, "sf"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 834
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isHold()Z

    move-result p0

    const-string v2, "hold"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 835
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getForecast()D

    move-result-wide v8

    .line 836
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

    .line 837
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastAction()Ljava/lang/String;

    move-result-object p0

    .line 838
    if-eqz p0, :cond_10f

    move-object v7, p0

    :cond_10f
    const-string p0, "act"

    invoke-virtual {v0, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    :cond_114
    const-string p0, "hg"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 841
    return-object v1
.end method

.method private static musicOnly()Z
    .registers 1

    .line 415
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

    .line 524
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 525
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

    .line 526
    sput-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 527
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 528
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v0, :cond_31

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_31

    const-wide/16 v0, 0x7530

    cmp-long v4, v2, v0

    if-ltz v4, :cond_31

    .line 529
    const-string v0, "manual"

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    .line 533
    :cond_31
    goto :goto_38

    .line 531
    :catchall_32
    move-exception v0

    .line 532
    const-string v1, "BandRemote.stop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    :goto_38
    return-void
.end method

.method static onSessionEnd(Ljava/lang/String;J)V
    .registers 19

    .line 539
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "applink"

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 540
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 541
    if-eqz v6, :cond_15

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v6

    goto :goto_17

    :cond_15
    const/16 v6, 0xaa

    .line 542
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

    .line 543
    const-string v8, "ai"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v11

    goto :goto_46

    .line 544
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

    .line 545
    :goto_46
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 546
    const-string v13, "n"

    sget v14, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    sput v14, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 547
    const-string v13, "kind"

    invoke-virtual {v8, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    const-string v13, "dur"

    invoke-virtual {v8, v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 549
    const-string v13, "kcal"

    const-wide/16 v9, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v13, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 550
    const-string v9, "avg"

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 551
    const-string v9, "max"

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 552
    invoke-virtual {v7, v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v6

    .line 553
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 554
    const/4 v9, 0x1

    :goto_8b
    const/4 v10, 0x5

    if-gt v9, v10, :cond_99

    .line 555
    aget-wide v10, v6, v9

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 554
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    .line 557
    :cond_99
    const-string v6, "zt"

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    sput-object v8, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    .line 559
    const-wide/32 v6, 0x15f90

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v1, v15}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d3
    .catchall {:try_start_6 .. :try_end_d3} :catchall_d4

    .line 564
    goto :goto_e9

    .line 562
    :catchall_d4
    move-exception v0

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :goto_e9
    return-void
.end method

.method static pauseAll()V
    .registers 3

    .line 569
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    .line 570
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_1a

    if-eqz v0, :cond_1a

    .line 571
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_24

    .line 572
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_24

    .line 574
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 575
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 577
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

    .line 578
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 579
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    .line 581
    :cond_3f
    return-void
.end method

.method private static phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;
    .registers 2

    .line 845
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    .line 849
    const-string p0, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v0, "Cool-down"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 848
    :cond_1a
    const-string p0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v0, "Metabolic"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 847
    :cond_23
    const-string p0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v0, "Main"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 846
    :cond_2c
    const-string p0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v0, "Warm-up"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static push(Z)V
    .registers 25

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_2c1

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2c1

    .line 423
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_2c1

    .line 426
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 427
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v1

    .line 428
    const/4 v3, 0x0

    if-eqz v1, :cond_29

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-nez v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    .line 429
    :goto_2a
    if-eqz v4, :cond_30

    .line 430
    sput-wide v13, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    .line 431
    const/4 v4, 0x1

    goto :goto_41

    .line 432
    :cond_30
    if-nez v1, :cond_3f

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v4, :cond_3f

    .line 433
    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-wide v6, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v6, v13, v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 435
    :cond_3f
    move/from16 v4, p0

    :goto_41
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 436
    sget-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    if-eqz v1, :cond_4c

    sget-wide v9, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v9, v13, v9

    goto :goto_4e

    :cond_4c
    const-wide/16 v9, 0x0

    :goto_4e
    add-long/2addr v9, v5

    .line 437
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v5

    sget-object v6, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v5, v6, :cond_5f

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v5

    if-eqz v5, :cond_5f

    const/4 v5, 0x1

    goto :goto_60

    :cond_5f
    const/4 v5, 0x0

    .line 438
    :goto_60
    if-eqz v5, :cond_67

    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v6, :cond_67

    .line 439
    const/4 v4, 0x1

    .line 441
    :cond_67
    if-eqz v5, :cond_78

    .line 442
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    sput-wide v11, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    goto :goto_83

    .line 443
    :cond_78
    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-eqz v6, :cond_83

    .line 444
    sget-wide v11, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    const-string v6, "ai"

    invoke-static {v6, v11, v12}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V

    .line 446
    :cond_83
    :goto_83
    sput-boolean v5, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    .line 448
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v5

    .line 449
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_98

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v6

    goto :goto_9a

    :cond_98
    const/16 v6, 0xaa

    .line 451
    :goto_9a
    const-string v11, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    if-lez v5, :cond_b7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " bpm \u00b7 Z"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_bd

    .line 452
    :cond_b7
    const-string v12, "Workout"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 458
    :goto_bd
    nop

    .line 459
    nop

    .line 461
    nop

    .line 462
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v15

    .line 463
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v7, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v8, "|"

    if-ne v2, v7, :cond_16d

    if-eqz v15, :cond_16d

    .line 464
    invoke-virtual {v15}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    .line 465
    invoke-virtual {v15}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v17

    .line 467
    move-object/from16 p0, v12

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v7, v11

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 468
    sget-object v11, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v11, :cond_f3

    invoke-virtual {v15}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v11

    if-eqz v11, :cond_f3

    const/4 v11, 0x1

    goto :goto_f4

    :cond_f3
    const/4 v11, 0x0

    .line 469
    :goto_f4
    nop

    .line 470
    if-eqz v11, :cond_100

    .line 471
    const-string v12, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 \u00b7 \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v3, "Rest done \u00b7 \u25b6 continue"

    invoke-static {v12, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_119

    .line 473
    :cond_100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v12}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/BandRemote;->kcalTag(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 475
    :goto_119
    sget-object v12, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v12, :cond_11f

    const/4 v1, 0x1

    goto :goto_120

    :cond_11f
    const/4 v1, 0x0

    .line 476
    :goto_120
    nop

    .line 477
    xor-int/lit8 v12, v1, 0x1

    move-wide/from16 v20, v13

    move v14, v12

    invoke-virtual {v15}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v12

    double-to-int v12, v12

    .line 478
    invoke-virtual {v15}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v13

    iget v13, v13, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    .line 479
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "ai|"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    move-object v8, v2

    move/from16 v23, v7

    move v11, v12

    move/from16 v22, v13

    move-object/from16 v3, v17

    const/4 v2, 0x0

    const/4 v12, 0x1

    move v7, v1

    move-object/from16 v1, p0

    goto/16 :goto_291

    .line 463
    :cond_16d
    move-object/from16 p0, v12

    move-wide/from16 v20, v13

    .line 480
    if-nez v1, :cond_230

    const-wide/16 v2, 0x0

    cmp-long v7, v9, v2

    if-lez v7, :cond_182

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-nez v2, :cond_182

    const/4 v12, 0x1

    goto/16 :goto_231

    .line 488
    :cond_182
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v1

    if-eqz v1, :cond_207

    .line 489
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v1

    .line 490
    const-string v2, "Music"

    const-string v3, "\u041c\u0443\u0437\u0438\u043a\u0430"

    if-eqz v1, :cond_199

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_199

    goto :goto_19d

    :cond_199
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    :goto_19d
    if-lez v5, :cond_1bc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041c\u0443\u0437\u0438\u043a\u0430 \u00b7 "

    const-string v7, "Music \u00b7 "

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bpm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c0

    .line 492
    :cond_1bc
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    :goto_1c0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v3

    const/4 v12, 0x1

    .line 494
    xor-int/2addr v3, v12

    .line 495
    xor-int/lit8 v7, v3, 0x1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    .line 496
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v13

    div-int/lit16 v13, v13, 0x3e8

    .line 497
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mu|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v13, :cond_1f5

    div-int/lit8 v8, v11, 0x5

    goto :goto_1f6

    :cond_1f5
    const/4 v8, 0x0

    :goto_1f6
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 498
    move v14, v7

    move/from16 v22, v13

    const/16 v23, 0x0

    move v7, v3

    move-object v3, v2

    const/4 v2, 0x0

    goto/16 :goto_291

    .line 499
    :cond_207
    const/4 v12, 0x1

    .line 500
    const-string v1, "\u041c\u0443\u0437\u0438\u043a\u0430 \u00b7 \u25b6 \u0441\u0442\u0430\u0440\u0442"

    const-string v2, "Music \u00b7 \u25b6 start"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    nop

    .line 502
    nop

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idle|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    move-object v8, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    goto :goto_291

    .line 480
    :cond_230
    const/4 v12, 0x1

    .line 481
    :goto_231
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_240

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v2

    goto :goto_242

    :cond_240
    const-wide/16 v2, 0x0

    .line 482
    :goto_242
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 483
    nop

    .line 484
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Training"

    invoke-static {v11, v13}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->kcalTag(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 485
    nop

    .line 486
    nop

    .line 487
    xor-int/lit8 v11, v1, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tr|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 488
    move/from16 v23, v3

    move-object v3, v7

    move v14, v11

    const/4 v11, 0x0

    const/16 v22, 0x0

    move v7, v1

    move-object/from16 v1, p0

    .line 507
    :goto_291
    if-nez v4, :cond_29d

    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29c

    goto :goto_29d

    :cond_29c
    const/4 v12, 0x0

    .line 508
    :cond_29d
    :goto_29d
    if-eqz v12, :cond_2b3

    .line 509
    sput-object v8, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 510
    const/16 v15, 0x32

    move v13, v7

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v18, v11

    move/from16 v19, v22

    invoke-static/range {v13 .. v19}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->musicInfo(ZZILjava/lang/String;Ljava/lang/String;II)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 512
    :cond_2b3
    move-object v2, v1

    move v4, v7

    move-wide v7, v9

    move v9, v11

    move/from16 v10, v22

    move/from16 v11, v23

    move-wide/from16 v13, v20

    invoke-static/range {v2 .. v14}, Lcom/isaigu/gymapp/wearable/BandRemote;->sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIIZJ)V

    .line 513
    return-void

    .line 424
    :cond_2c1
    :goto_2c1
    return-void
.end method

.method private static resyncAppClock(ZJ)V
    .registers 4

    .line 859
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRun:Z

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 860
    :goto_7
    if-eqz v0, :cond_d

    .line 861
    sput-wide p1, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppEl:J

    .line 862
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRun:Z

    .line 864
    :cond_d
    return-void
.end method

.method private static sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIIZJ)V
    .registers 45

    .line 602
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p9

    const-string v4, "lang"

    const-string v5, "can"

    const-string v6, "dbl"

    const-string v7, "run"

    const-string v8, "|"

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isLinked()Z

    move-result v9

    if-nez v9, :cond_19

    .line 603
    return-void

    .line 605
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v9

    .line 606
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v10

    sget-object v11, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v10, v11, :cond_29

    if-eqz v9, :cond_29

    const/4 v10, 0x1

    goto :goto_2a

    :cond_29
    const/4 v10, 0x0

    .line 607
    :goto_2a
    const-string v11, "music"

    const-string v14, "idle"

    if-eqz v10, :cond_33

    const-string v15, "ai"

    goto :goto_4a

    :cond_33
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v15

    if-nez v15, :cond_48

    sget-boolean v15, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v15, :cond_3e

    goto :goto_48

    :cond_3e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v15

    if-eqz v15, :cond_46

    move-object v15, v11

    goto :goto_4a

    :cond_46
    move-object v15, v14

    goto :goto_4a

    :cond_48
    :goto_48
    const-string v15, "manual"

    .line 608
    :goto_4a
    if-eqz v10, :cond_5c

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v12

    sget-object v13, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v12, v13, :cond_5c

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v12

    if-eqz v12, :cond_5c

    const/4 v12, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v12, 0x0

    .line 609
    :goto_5d
    nop

    .line 610
    const-string v13, ""

    if-eqz v12, :cond_6f

    sget-boolean v17, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    if-nez v17, :cond_6f

    .line 611
    const-string v17, "long"

    move-object/from16 v31, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v31

    goto :goto_86

    .line 612
    :cond_6f
    move-object/from16 v17, v13

    sget-object v13, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_84

    sget-object v13, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_84

    .line 613
    const-string v13, "short"

    goto :goto_86

    .line 615
    :cond_84
    move-object/from16 v13, v17

    :goto_86
    sput-object v15, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 616
    sput-boolean v12, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    .line 617
    move-object/from16 v18, v11

    move/from16 v19, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 619
    move-object/from16 v20, v8

    :try_start_94
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 620
    move-object/from16 v21, v4

    const-string v4, "t"

    move-object/from16 v22, v14

    const-string v14, "state"

    invoke-virtual {v8, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    const-string v4, "v"

    const/4 v14, 0x2

    invoke-virtual {v8, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 622
    const-string v4, "mode"

    invoke-virtual {v8, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    const-string v4, "hr"

    move-object/from16 v16, v15

    const/4 v14, 0x0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v8, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 624
    const-string v4, "z"

    if-lez v1, :cond_c4

    invoke-static/range {p3 .. p4}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v15

    goto :goto_c5

    :cond_c4
    const/4 v15, 0x0

    :goto_c5
    invoke-virtual {v8, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 625
    const-string v4, "lim"

    invoke-virtual {v8, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 626
    const-string v4, "title"

    if-nez v10, :cond_db

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v15

    if-eqz v15, :cond_d8

    goto :goto_db

    :cond_d8
    move-object/from16 v15, p0

    goto :goto_dd

    :cond_db
    :goto_db
    move-object/from16 v15, p1

    :goto_dd
    invoke-virtual {v8, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string v4, "sub"

    if-nez v10, :cond_ee

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v15

    if-eqz v15, :cond_eb

    goto :goto_ee

    :cond_eb
    move-object/from16 v15, p1

    goto :goto_f0

    :cond_ee
    :goto_ee
    move-object/from16 v15, v17

    :goto_f0
    invoke-virtual {v8, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    const-string v4, "kcal"

    invoke-virtual {v8, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 629
    invoke-virtual {v8, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 630
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 631
    const-string v15, "plus"

    if-eqz v10, :cond_10b

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v17

    move/from16 v14, v17

    goto :goto_118

    :cond_10b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v17

    if-nez v17, :cond_117

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v17

    if-eqz v17, :cond_118

    :cond_117
    const/4 v14, 0x1

    :cond_118
    :goto_118
    invoke-virtual {v4, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 632
    const-string v14, "minus"

    if-eqz v10, :cond_124

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v15

    goto :goto_134

    :cond_124
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v15

    if-nez v15, :cond_133

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v15

    if-eqz v15, :cond_131

    goto :goto_133

    :cond_131
    const/4 v15, 0x0

    goto :goto_134

    :cond_133
    :goto_133
    const/4 v15, 0x1

    :goto_134
    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 633
    if-eqz v10, :cond_141

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v14

    if-eqz v14, :cond_141

    const/4 v14, 0x1

    goto :goto_142

    :cond_141
    const/4 v14, 0x0

    :goto_142
    invoke-virtual {v4, v6, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 634
    invoke-virtual {v8, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    if-eqz v10, :cond_152

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v4

    if-eqz v4, :cond_152

    const/4 v4, 0x1

    goto :goto_153

    :cond_152
    const/4 v4, 0x0

    :goto_153
    invoke-virtual {v8, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 636
    const-string v4, "vib"

    invoke-virtual {v8, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15b
    .catchall {:try_start_94 .. :try_end_15b} :catchall_48a

    .line 640
    const-string v4, "ph"

    const-string v13, "pause"

    const-wide/16 v23, 0x3e8

    const-string v14, "st"

    if-eqz v10, :cond_276

    .line 641
    :try_start_165
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v10

    .line 642
    if-eqz v19, :cond_16e

    const-string v7, "ready"

    goto :goto_17b

    :cond_16e
    sget-object v15, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v10, v15, :cond_175

    const-string v7, "rest"

    goto :goto_17b

    .line 643
    :cond_175
    sget-object v15, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v10, v15, :cond_17a

    goto :goto_17b

    :cond_17a
    move-object v7, v13

    .line 644
    :goto_17b
    invoke-virtual {v8, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v13

    .line 646
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v15

    .line 647
    iget-object v3, v13, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    const-string v3, "pi"

    invoke-virtual {v8, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 649
    const-string v3, "pd"

    iget v1, v13, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v8, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 650
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 651
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 652
    move-object/from16 v19, v6

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1d6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p5, v6

    move-object/from16 v6, v18

    check-cast v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 653
    move-object/from16 v25, v5

    iget v5, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 654
    iget-object v5, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 655
    move-object/from16 v6, p5

    move-object/from16 v5, v25

    goto :goto_1b1

    .line 656
    :cond_1d6
    move-object/from16 v25, v5

    const-string v5, "pds"

    invoke-virtual {v8, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    const-string v1, "pns"

    invoke-virtual {v8, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string v1, "u"

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v5

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v26

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    invoke-virtual {v8, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 659
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 660
    const-string v1, "tot"

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-virtual {v8, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 661
    iget v1, v13, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    move-object/from16 v26, v4

    int-to-double v3, v1

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v27

    sub-double v3, v3, v27

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 662
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v10, v1, :cond_231

    .line 663
    invoke-virtual {v9, v11, v12}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    move-wide/from16 v27, v11

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_235

    :cond_231
    move-wide/from16 v27, v11

    const-wide/16 v1, 0x0

    .line 664
    :goto_235
    sget-boolean v9, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRun:Z

    if-eq v0, v9, :cond_23b

    const/4 v9, 0x1

    goto :goto_23c

    :cond_23b
    const/4 v9, 0x0

    .line 665
    :goto_23c
    if-nez v9, :cond_24a

    sget v11, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppPi:I

    if-ne v15, v11, :cond_24a

    sget-object v11, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppSt:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25d

    .line 666
    :cond_24a
    sput-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppEl:J

    .line 667
    sput-wide v3, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppPl:J

    .line 668
    sput-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRl:J

    .line 669
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v10, v1, :cond_256

    const/4 v1, 0x1

    goto :goto_257

    :cond_256
    const/4 v1, 0x0

    :goto_257
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRlActive:Z

    .line 670
    sput v15, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppPi:I

    .line 671
    sput-object v7, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppSt:Ljava/lang/String;

    .line 673
    :cond_25d
    if-eqz v9, :cond_261

    .line 674
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRun:Z

    .line 676
    :cond_261
    const-string v1, "pl"

    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppPl:J

    invoke-virtual {v8, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 677
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRlActive:Z

    if-eqz v1, :cond_273

    .line 678
    const-string v1, "rl"

    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRl:J

    invoke-virtual {v8, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 680
    :cond_273
    move-object/from16 v15, v16

    goto :goto_2b9

    :cond_276
    move-object/from16 v26, v4

    move-object/from16 v25, v5

    move-object/from16 v19, v6

    move-wide/from16 v27, v11

    move-object/from16 v15, v16

    move-object/from16 v1, v18

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a3

    .line 681
    if-eqz v0, :cond_28b

    goto :goto_28c

    :cond_28b
    move-object v7, v13

    .line 682
    :goto_28c
    invoke-virtual {v8, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    const-string v1, "pos"

    move/from16 v2, p7

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 684
    const-string v1, "dur"

    move/from16 v2, p8

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 685
    div-long v5, p5, v23

    .line 686
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->resyncAppClock(ZJ)V

    goto :goto_2b9

    .line 688
    :cond_2a3
    if-eqz v0, :cond_2a6

    goto :goto_2b1

    :cond_2a6
    move-object/from16 v1, v22

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b0

    move-object v7, v1

    goto :goto_2b1

    :cond_2b0
    move-object v7, v13

    .line 689
    :goto_2b1
    invoke-virtual {v8, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    div-long v5, p5, v23

    .line 691
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->resyncAppClock(ZJ)V

    .line 693
    :goto_2b9
    const-string v1, "el"

    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppEl:J

    invoke-virtual {v8, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 696
    const-wide/32 v1, 0x2bf20

    move-wide/from16 v3, v27

    invoke-static {v3, v4, v1, v2}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v7

    .line 697
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 698
    const/4 v10, 0x0

    :goto_2cf
    const/16 v11, 0x1e

    if-ge v10, v11, :cond_314

    .line 699
    sub-long v11, v3, v1

    int-to-long v1, v10

    const-wide/16 v27, 0x1770

    mul-long v1, v1, v27

    add-long/2addr v11, v1

    .line 700
    add-long v27, v11, v27

    .line 701
    nop

    .line 702
    nop

    .line 703
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_2e2
    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v0

    if-ge v1, v0, :cond_304

    .line 704
    iget-object v0, v7, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v29, v0, v1

    cmp-long v0, v29, v11

    if-ltz v0, :cond_2ff

    iget-object v0, v7, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v29, v0, v1

    cmp-long v0, v29, v27

    if-gez v0, :cond_2ff

    .line 705
    iget-object v0, v7, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v0, v0, v1

    add-int/2addr v13, v0

    .line 706
    add-int/lit8 v2, v2, 0x1

    .line 703
    :cond_2ff
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p2

    goto :goto_2e2

    .line 709
    :cond_304
    if-lez v2, :cond_308

    div-int/2addr v13, v2

    goto :goto_309

    :cond_308
    const/4 v13, 0x0

    :goto_309
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 698
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p2

    const-wide/32 v1, 0x2bf20

    goto :goto_2cf

    .line 711
    :cond_314
    const-string v0, "hh"

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-lez v2, :cond_325

    const-wide/16 v0, 0x5

    add-long/2addr v5, v0

    mul-long v1, v5, v23

    goto :goto_328

    :cond_325
    const-wide/32 v1, 0x2bf20

    :goto_328
    invoke-static {v3, v4, v1, v2}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v0

    .line 713
    const-string v1, "avg"

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 714
    const-string v1, "max"

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v2

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 715
    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v0

    .line 716
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 717
    const/4 v5, 0x1

    :goto_34a
    const/4 v6, 0x5

    if-gt v5, v6, :cond_357

    .line 718
    aget-wide v6, v0, v5

    div-long v6, v6, v23

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 717
    add-int/lit8 v5, v5, 0x1

    goto :goto_34a

    .line 720
    :cond_357
    const-string v0, "zt"

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/wearable/BandRemote;->modules(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 722
    const-string v1, "mods"

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;
    :try_end_367
    .catchall {:try_start_165 .. :try_end_367} :catchall_48a

    const-string v2, "sum"

    if-eqz v1, :cond_376

    :try_start_36b
    sget-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_376

    .line 724
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    :cond_376
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v1

    if-eqz v1, :cond_37f

    const-string v1, "bg"

    goto :goto_381

    :cond_37f
    const-string v1, "en"

    :goto_381
    move-object/from16 v3, v21

    invoke-virtual {v8, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 728
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_38f
    if-ge v6, v5, :cond_39f

    aget-object v7, v4, v6

    .line 729
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39c

    .line 730
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 728
    :cond_39c
    add-int/lit8 v6, v6, 0x1

    goto :goto_38f

    .line 733
    :cond_39f
    const-string v4, "lic"

    invoke-virtual {v8, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->channels()Lorg/json/JSONArray;

    move-result-object v4

    .line 735
    const-string v5, "ch"

    invoke-virtual {v8, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStrength()I

    move-result v5

    .line 737
    const-string v6, "ms"

    invoke-virtual {v8, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 738
    const-string v6, "ack"

    sget-object v7, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v26

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    move-object/from16 v9, v25

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v19

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43d

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_43e

    :cond_43d
    const/4 v13, 0x0

    :goto_43e
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    .line 746
    xor-int/2addr v1, v2

    if-nez p10, :cond_46c

    if-nez v1, :cond_46c

    sget-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    sub-long v1, p11, v1

    const-wide/16 v3, 0xfa0

    cmp-long v5, v1, v3

    if-gez v5, :cond_46c

    .line 747
    return-void

    .line 749
    :cond_46c
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    .line 750
    sput-wide p11, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    .line 751
    const-string v0, "seq"

    sget v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 752
    const-string v0, "boot"

    sget-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 753
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->send(Ljava/lang/String;)Z
    :try_end_489
    .catchall {:try_start_36b .. :try_end_489} :catchall_48a

    .line 756
    goto :goto_4a1

    .line 754
    :catchall_48a
    move-exception v0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "applink"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :goto_4a1
    return-void
.end method

.method public static start()V
    .registers 4

    .line 61
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 62
    return-void

    .line 64
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;)V

    .line 65
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;)V

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 67
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRun:Z

    .line 68
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppSt:Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppPi:I

    .line 70
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppEl:J

    .line 71
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->syncAppRlActive:Z

    .line 72
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    if-nez v0, :cond_33

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 74
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    :cond_33
    return-void
.end method

.method public static stop()V
    .registers 2

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 80
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onAppInstalled(I)V
    .registers 2

    .line 97
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(I)V

    .line 98
    return-void
.end method

.method public onAppMessage(Ljava/lang/String;)V
    .registers 4

    .line 103
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public onMediaKey(II)V
    .registers 5

    .line 92
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Key;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/BandRemote$Key;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public onMusicRequest()V
    .registers 4

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method
