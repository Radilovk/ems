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

.field private static final MUSIC_CLOCK_MS:J = 0x4e20L

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

.field private static lastSentHr:I

.field private static lastSentMs:J

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

.field private static final tick:Ljava/lang/Runnable;

.field private static trainAccumMs:J

.field private static trainStartMs:J

.field private static trainWasRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 46
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$Tick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote$Tick;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 52
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentHr:I

    .line 104
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    .line 106
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 212
    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;-><init>()V

    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    .line 213
    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    .line 265
    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 266
    const/4 v1, 0x1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 267
    sput v3, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    .line 590
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    rem-long/2addr v1, v3

    sput-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    .line 600
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 58
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

    .line 298
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p0

    .line 299
    if-eqz p0, :cond_33

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v1, :cond_16

    goto :goto_33

    .line 302
    :cond_16
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 303
    array-length v2, v1

    new-array v2, v2, [I

    .line 304
    const/4 v3, 0x0

    :goto_1e
    array-length v4, v1

    if-ge v3, v4, :cond_32

    .line 305
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

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 307
    :cond_32
    return-object v2

    .line 300
    :cond_33
    :goto_33
    return-object v0

    .line 308
    :catchall_34
    move-exception p0

    .line 309
    return-object v0
.end method

.method static channelSet(II)V
    .registers 5

    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 341
    :goto_c
    if-eqz v0, :cond_29

    if-ltz p0, :cond_29

    array-length v1, v0

    if-lt p0, v1, :cond_14

    goto :goto_29

    .line 344
    :cond_14
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 345
    aget v0, v0, p0

    sub-int/2addr p1, v0

    .line 346
    if-nez p1, :cond_25

    .line 347
    return-void

    .line 349
    :cond_25
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelStep(II)V

    .line 350
    return-void

    .line 342
    :cond_29
    :goto_29
    return-void
.end method

.method static channelStep(II)V
    .registers 8

    .line 317
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 319
    :goto_a
    if-eqz v1, :cond_80

    if-ltz p0, :cond_80

    array-length v2, v1

    if-ge p0, v2, :cond_80

    if-nez p1, :cond_14

    goto :goto_80

    .line 322
    :cond_14
    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 325
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    :try_start_1c
    array-length v5, v1

    if-ge v4, v5, :cond_29

    .line 326
    if-ne v4, p0, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    aput-boolean v5, v1, v4

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 328
    :cond_29
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v4
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_7a

    .line 330
    array-length v5, v2

    invoke-static {v2, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    nop

    .line 332
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    .line 333
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

    .line 334
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

    .line 333
    const-string p1, "applink"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void

    .line 330
    :catchall_7a
    move-exception p0

    array-length p1, v2

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    throw p0

    .line 320
    :cond_80
    :goto_80
    return-void
.end method

.method private static channels()Lorg/json/JSONArray;
    .registers 5

    .line 741
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 742
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 743
    if-eqz v1, :cond_10

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 744
    :goto_11
    if-nez v2, :cond_14

    .line 745
    return-object v0

    .line 747
    :cond_14
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 748
    const/4 v3, 0x0

    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_2d

    .line 749
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

    .line 748
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 751
    :cond_2d
    return-object v0
.end method

.method static handleApp(Ljava/lang/String;)V
    .registers 8

    .line 109
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "cmd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    .line 111
    const-string v2, "id"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_47

    .line 113
    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 114
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 115
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void

    .line 118
    :cond_32
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 119
    :goto_37
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v4, 0x20

    if-le v2, v4, :cond_47

    .line 120
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_37

    .line 124
    :cond_47
    const-string v2, "hello"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "v"

    const/4 v5, 0x0

    if-eqz v2, :cond_6e

    .line 125
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_5f

    :try_start_58
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_5f

    .line 128
    :catch_5d
    move-exception p0

    goto :goto_68

    .line 127
    :cond_5f
    :goto_5f
    const-string v0, "lang"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(ILjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_68} :catch_5d

    .line 130
    :goto_68
    const-string p0, ""

    sput-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    goto/16 :goto_147

    .line 131
    :cond_6e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 132
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applink"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "toggle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_9f

    .line 135
    invoke-static {v5, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_148

    .line 136
    :cond_9f
    const-string v1, "plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 137
    const/4 p0, 0x4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_148

    .line 138
    :cond_ad
    const-string v1, "minus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x3

    if-eqz v1, :cond_bb

    .line 139
    invoke-static {v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_148

    .line 140
    :cond_bb
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object p0

    .line 142
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_df

    if-eqz p0, :cond_df

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 143
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    .line 145
    :cond_df
    goto :goto_148

    :cond_e0
    const-string v1, "stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p0

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p0, v0, :cond_f4

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    goto :goto_148

    .line 149
    :cond_f4
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_148

    .line 152
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

    .line 155
    :cond_10c
    const-string v1, "ch_set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 156
    invoke-static {p0, v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 157
    const/16 v1, 0x64

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    goto :goto_143

    .line 153
    :cond_12b
    :goto_12b
    invoke-static {p0, v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 154
    const/16 v1, 0xa

    const-string v2, "d"

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 159
    :cond_143
    :goto_143
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleCommand(Ljava/lang/String;)V

    goto :goto_148

    .line 131
    :cond_147
    :goto_147
    nop

    .line 164
    :goto_148
    sget-boolean p0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    if-nez p0, :cond_157

    .line 165
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    .line 166
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_157
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method

.method static handleKey(II)V
    .registers 7

    .line 365
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 366
    return-void

    .line 369
    :cond_b
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2d

    if-ne p0, v2, :cond_13

    goto :goto_2d

    .line 371
    :cond_13
    const/4 v3, 0x4

    if-ne p0, v3, :cond_18

    .line 372
    const/4 v0, 0x1

    goto :goto_2e

    .line 373
    :cond_18
    const/4 v3, 0x3

    if-ne p0, v3, :cond_1c

    .line 374
    goto :goto_2e

    .line 375
    :cond_1c
    const/4 v3, 0x5

    if-ne p0, v3, :cond_2c

    .line 376
    const/16 v3, 0x32

    if-le p1, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_29

    :cond_25
    if-ge p1, v3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 377
    :goto_29
    if-nez v0, :cond_2e

    .line 378
    return-void

    .line 381
    :cond_2c
    return-void

    .line 370
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .line 383
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

    .line 384
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object p0

    .line 385
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p1

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p1, v3, :cond_64

    if-eqz p0, :cond_64

    const/4 p1, 0x1

    goto :goto_65

    :cond_64
    const/4 p1, 0x0

    .line 386
    :goto_65
    if-eqz p1, :cond_89

    .line 387
    if-nez v0, :cond_7f

    .line 388
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object p1

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne p1, v0, :cond_7b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 389
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    goto :goto_b3

    .line 391
    :cond_7b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_b3

    .line 393
    :cond_7f
    if-lez v0, :cond_85

    .line 394
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    goto :goto_b3

    .line 396
    :cond_85
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    goto :goto_b3

    .line 398
    :cond_89
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result p0

    if-nez p0, :cond_a8

    if-nez v0, :cond_98

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result p0

    if-nez p0, :cond_98

    goto :goto_a8

    .line 401
    :cond_98
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 402
    if-nez v0, :cond_a4

    .line 403
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_b3

    .line 405
    :cond_a4
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_b3

    .line 399
    :cond_a8
    :goto_a8
    if-nez v0, :cond_ab

    goto :goto_b0

    .line 400
    :cond_ab
    if-lez v0, :cond_af

    const/4 v1, 0x1

    goto :goto_b0

    :cond_af
    const/4 v1, 0x2

    .line 399
    :goto_b0
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 408
    :cond_b3
    :goto_b3
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {p1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    return-void
.end method

.method static intField(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 271
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return p0

    .line 272
    :catchall_a
    move-exception p0

    .line 273
    return p2
.end method

.method static jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 354
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 355
    return-object v0

    .line 358
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    return-object p0

    .line 359
    :catchall_e
    move-exception p0

    .line 360
    return-object v0
.end method

.method static leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 4

    .line 279
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 280
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 281
    :goto_d
    if-nez v0, :cond_10

    .line 282
    return-object v1

    .line 284
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

    .line 285
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_2d

    .line 286
    return-object v2

    .line 288
    :cond_2d
    goto :goto_14

    .line 289
    :cond_2e
    return-object v1
.end method

.method static mainStep(I)V
    .registers 5

    .line 233
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 234
    if-nez v0, :cond_f

    .line 235
    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x2

    :goto_b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 236
    return-void

    .line 239
    :cond_f
    :try_start_f
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 240
    return-void

    .line 242
    :cond_16
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_28

    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_28

    .line 244
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    goto :goto_2b

    .line 246
    :cond_28
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 248
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

    .line 251
    goto :goto_60

    .line 249
    :catchall_5a
    move-exception p0

    .line 250
    const-string v0, "BandRemote.mainStep"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :goto_60
    return-void
.end method

.method static mainStrength()I
    .registers 2

    .line 257
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 259
    :goto_11
    if-eqz v1, :cond_15

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    :cond_15
    return v0

    .line 260
    :catchall_16
    move-exception v1

    .line 261
    return v0
.end method

.method private static mmss(D)Ljava/lang/String;
    .registers 8

    .line 834
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 835
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

    .line 174
    if-nez p0, :cond_3

    .line 175
    return-void

    .line 177
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    const-string v1, "train_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 179
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_fb

    .line 180
    :cond_15
    const-string v1, "train_plus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    .line 181
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto/16 :goto_fb

    .line 182
    :cond_23
    const-string v1, "train_minus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_31

    .line 183
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto/16 :goto_fb

    .line 184
    :cond_31
    const-string v1, "train_stop"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 185
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_fb

    .line 186
    :cond_3f
    const-string v1, "tm_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandTogglePause()V

    goto/16 :goto_fb

    .line 188
    :cond_4c
    const-string v1, "mu_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 189
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto/16 :goto_fb

    .line 190
    :cond_59
    const-string v1, "mu_next"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 191
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto/16 :goto_fb

    .line 192
    :cond_66
    const-string v1, "mu_prev"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 193
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto/16 :goto_fb

    .line 194
    :cond_73
    const-string v1, "mu_up"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 195
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_fb

    .line 196
    :cond_80
    const-string v1, "mu_down"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 197
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_fb

    .line 198
    :cond_8d
    const-string v1, "pause_all"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->pauseAll()V

    goto :goto_fb

    .line 200
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

    .line 202
    :cond_aa
    const-string v1, "ch_set"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 203
    sget p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelSet(II)V

    goto :goto_fb

    .line 204
    :cond_ba
    const-string v1, "hg_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fb

    if-eqz v0, :cond_fb

    .line 205
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 206
    xor-int/2addr p0, v2

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 207
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

    .line 201
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

    .line 209
    :cond_fb
    :goto_fb
    return-void
.end method

.method private static moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7

    .line 756
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 757
    const-string v1, "mu"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 758
    const-string v2, "hg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 759
    const-string v3, "tr"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    const-string v4, "run"

    if-eqz p0, :cond_28

    .line 762
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 764
    :cond_28
    const/16 p0, 0x7c

    if-eqz v0, :cond_5a

    .line 765
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

    .line 766
    const-string v4, "loop"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "lbl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_5a
    if-eqz v1, :cond_8c

    .line 769
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

    .line 770
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ceil"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 772
    :cond_8c
    if-eqz v2, :cond_b5

    .line 773
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

    .line 774
    const-string p0, "up"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 776
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

    .line 781
    const-string v0, "tm"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 782
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 784
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 785
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v4

    const-string v5, "run"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 786
    const-string v4, "tr"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    :try_start_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandState()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    .line 792
    goto :goto_2f

    .line 790
    :catchall_26
    move-exception v3

    .line 791
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    :goto_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 795
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v3

    .line 796
    const-string v4, "on"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 797
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

    .line 798
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

    .line 799
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v6

    .line 800
    const-string v7, ""

    if-eqz v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move-object v6, v7

    :goto_6f
    const-string v8, "title"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    const-string v8, "pos"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 802
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    const-string v8, "dur"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 803
    if-eqz v3, :cond_91

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v6

    goto :goto_92

    :cond_91
    const/4 v6, 0x0

    :goto_92
    const-string v8, "lvl"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 804
    if-eqz v3, :cond_9e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v3

    goto :goto_9f

    :cond_9e
    const/4 v3, 0x0

    :goto_9f
    const-string v6, "ceil"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 805
    const-string v3, "mu"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 807
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 808
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v3

    .line 809
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

    .line 810
    const-string v2, "up"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 811
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

    .line 812
    if-eqz v3, :cond_114

    .line 813
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int p0, v8

    const-string v2, "sf"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 814
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isHold()Z

    move-result p0

    const-string v2, "hold"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 815
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getForecast()D

    move-result-wide v8

    .line 816
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

    .line 817
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastAction()Ljava/lang/String;

    move-result-object p0

    .line 818
    if-eqz p0, :cond_10f

    move-object v7, p0

    :cond_10f
    const-string p0, "act"

    invoke-virtual {v0, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 820
    :cond_114
    const-string p0, "hg"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 821
    return-object v1
.end method

.method private static musicOnly()Z
    .registers 1

    .line 412
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

    .line 526
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 527
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

    .line 528
    sput-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 529
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 530
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v0, :cond_31

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_31

    const-wide/16 v0, 0x7530

    cmp-long v4, v2, v0

    if-ltz v4, :cond_31

    .line 531
    const-string v0, "manual"

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    .line 535
    :cond_31
    goto :goto_38

    .line 533
    :catchall_32
    move-exception v0

    .line 534
    const-string v1, "BandRemote.stop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    :goto_38
    return-void
.end method

.method static onSessionEnd(Ljava/lang/String;J)V
    .registers 19

    .line 541
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "applink"

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 542
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 543
    if-eqz v6, :cond_15

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v6

    goto :goto_17

    :cond_15
    const/16 v6, 0xaa

    .line 544
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

    .line 545
    const-string v8, "ai"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v11

    goto :goto_46

    .line 546
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

    .line 547
    :goto_46
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 548
    const-string v13, "n"

    sget v14, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    sput v14, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 549
    const-string v13, "kind"

    invoke-virtual {v8, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    const-string v13, "dur"

    invoke-virtual {v8, v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 551
    const-string v13, "kcal"

    const-wide/16 v9, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v13, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 552
    const-string v9, "avg"

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 553
    const-string v9, "max"

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 554
    invoke-virtual {v7, v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v6

    .line 555
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 556
    const/4 v9, 0x1

    :goto_8b
    const/4 v10, 0x5

    if-gt v9, v10, :cond_99

    .line 557
    aget-wide v10, v6, v9

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 556
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    .line 559
    :cond_99
    const-string v6, "zt"

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    sput-object v8, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    .line 561
    const-wide/32 v6, 0x15f90

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    .line 562
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

    .line 563
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v1, v15}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d3
    .catchall {:try_start_6 .. :try_end_d3} :catchall_d4

    .line 566
    goto :goto_e9

    .line 564
    :catchall_d4
    move-exception v0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_e9
    return-void
.end method

.method static pauseAll()V
    .registers 3

    .line 571
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    .line 572
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_1a

    if-eqz v0, :cond_1a

    .line 573
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_24

    .line 574
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_24

    .line 576
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 577
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 579
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

    .line 580
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 581
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    .line 583
    :cond_3f
    return-void
.end method

.method private static phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;
    .registers 2

    .line 825
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

    .line 829
    const-string p0, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v0, "Cool-down"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 828
    :cond_1a
    const-string p0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v0, "Metabolic"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 827
    :cond_23
    const-string p0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v0, "Main"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 826
    :cond_2c
    const-string p0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v0, "Warm-up"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static push(Z)V
    .registers 35

    .line 418
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_2f3

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2f3

    .line 420
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_2f3

    .line 423
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 424
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v1

    .line 425
    if-eqz v1, :cond_28

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-nez v4, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 426
    :goto_29
    if-eqz v4, :cond_2f

    .line 427
    sput-wide v12, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    .line 428
    const/4 v4, 0x1

    goto :goto_40

    .line 429
    :cond_2f
    if-nez v1, :cond_3e

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v4, :cond_3e

    .line 430
    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-wide v6, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v6, v12, v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 432
    :cond_3e
    move/from16 v4, p0

    :goto_40
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 433
    sget-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    if-eqz v1, :cond_4b

    sget-wide v9, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v9, v12, v9

    goto :goto_4d

    :cond_4b
    const-wide/16 v9, 0x0

    :goto_4d
    add-long/2addr v9, v5

    .line 434
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

    .line 435
    :goto_5f
    if-eqz v5, :cond_66

    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v6, :cond_66

    .line 436
    const/4 v4, 0x1

    .line 438
    :cond_66
    if-eqz v5, :cond_77

    .line 439
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    sput-wide v14, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    goto :goto_82

    .line 440
    :cond_77
    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-eqz v6, :cond_82

    .line 441
    sget-wide v14, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    const-string v6, "ai"

    invoke-static {v6, v14, v15}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V

    .line 443
    :cond_82
    :goto_82
    sput-boolean v5, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    .line 445
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v5

    .line 446
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_97

    .line 447
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v6

    goto :goto_99

    :cond_97
    const/16 v6, 0xaa

    .line 448
    :goto_99
    if-lez v5, :cond_b4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " bpm \u00b7 Z"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_bc

    .line 449
    :cond_b4
    const-string v11, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v14, "Workout"

    invoke-static {v11, v14}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 455
    :goto_bc
    nop

    .line 456
    nop

    .line 458
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v14

    .line 459
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v15

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const-string v3, " kcal"

    const-string v18, ""

    const-string v7, "|"

    const-string v8, " \u00b7 "

    const-wide/16 v21, 0x0

    if-ne v15, v2, :cond_188

    if-eqz v14, :cond_188

    .line 460
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    .line 461
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 462
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v19

    .line 463
    sget-object v15, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v15, :cond_ee

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v15

    if-eqz v15, :cond_ee

    const/4 v15, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v15, 0x0

    .line 464
    :goto_ef
    nop

    .line 465
    if-eqz v15, :cond_101

    .line 466
    const-string v3, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 \u00b7 \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v8, "Rest done \u00b7 \u25b6 continue"

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v23, v6

    move-object/from16 p0, v11

    move-wide/from16 v24, v12

    goto :goto_14b

    .line 468
    :cond_101
    move-object/from16 p0, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v6

    iget-object v6, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    move-wide/from16 v24, v12

    int-to-double v12, v6

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v26

    sub-double v12, v12, v26

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/BandRemote;->mmss(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    cmpl-double v6, v19, v21

    if-lez v6, :cond_142

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_142
    move-object/from16 v3, v18

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 471
    :goto_14b
    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v6, :cond_151

    const/4 v1, 0x1

    goto :goto_152

    :cond_151
    const/4 v1, 0x0

    .line 472
    :goto_152
    nop

    .line 473
    xor-int/lit8 v6, v1, 0x1

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v11

    double-to-int v8, v11

    .line 474
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v11

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    .line 475
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ai|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    move/from16 v27, v6

    move v12, v11

    move v6, v1

    move v11, v8

    move-object/from16 v1, p0

    goto/16 :goto_29b

    .line 459
    :cond_188
    move/from16 v23, v6

    move-object/from16 p0, v11

    move-wide/from16 v24, v12

    .line 476
    if-nez v1, :cond_227

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-lez v2, :cond_19e

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-nez v2, :cond_19e

    goto/16 :goto_227

    .line 484
    :cond_19e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v1

    if-eqz v1, :cond_210

    .line 485
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v1

    .line 486
    const-string v2, "Music"

    const-string v3, "\u041c\u0443\u0437\u0438\u043a\u0430"

    if-eqz v1, :cond_1b5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1b5

    goto :goto_1b9

    :cond_1b5
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    :goto_1b9
    if-lez v5, :cond_1d8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041c\u0443\u0437\u0438\u043a\u0430 \u00b7 "

    const-string v6, "Music \u00b7 "

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bpm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1dc

    .line 488
    :cond_1d8
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    :goto_1dc
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v3

    const/4 v6, 0x1

    .line 490
    xor-int/2addr v3, v6

    .line 491
    xor-int/lit8 v6, v3, 0x1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    .line 492
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    .line 493
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mu|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 494
    move/from16 v27, v6

    move v12, v11

    move v6, v3

    move v11, v8

    move-object v3, v2

    move-object v2, v7

    goto/16 :goto_29b

    .line 495
    :cond_210
    nop

    .line 496
    const-string v1, "\u041c\u0443\u0437\u0438\u043a\u0430 \u00b7 \u25b6 \u0441\u0442\u0430\u0440\u0442"

    const-string v2, "Music \u00b7 \u25b6 start"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    nop

    .line 498
    nop

    .line 499
    const-string v2, "idle"

    const/4 v6, 0x0

    move-object v3, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v27, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_29b

    .line 477
    :cond_227
    :goto_227
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_236

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v6

    goto :goto_238

    :cond_236
    move-wide/from16 v6, v21

    .line 478
    :goto_238
    nop

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v12, "Training "

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v11, v9

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/BandRemote;->mmss(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    cmpl-double v11, v6, v21

    if-lez v11, :cond_271

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_271
    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    nop

    .line 482
    nop

    .line 483
    xor-int/lit8 v6, v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tr|"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    move/from16 v27, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, v1

    move-object/from16 v1, p0

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    .line 503
    :goto_29b
    sget-object v7, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    .line 504
    xor-int/2addr v7, v8

    sget v13, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentHr:I

    if-eq v5, v13, :cond_2a9

    const/4 v13, 0x1

    goto :goto_2aa

    :cond_2a9
    const/4 v13, 0x0

    .line 505
    :goto_2aa
    sget-wide v14, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    sub-long v14, v24, v14

    const-wide/16 v17, 0x4e20

    cmp-long v19, v14, v17

    if-ltz v19, :cond_2b6

    const/4 v14, 0x1

    goto :goto_2b7

    :cond_2b6
    const/4 v14, 0x0

    .line 506
    :goto_2b7
    if-nez v4, :cond_2bf

    if-nez v7, :cond_2bf

    if-nez v13, :cond_2bf

    if-eqz v14, :cond_2d8

    .line 507
    :cond_2bf
    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 508
    sput v5, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentHr:I

    .line 509
    sput-wide v24, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    .line 510
    const/16 v28, 0x32

    move/from16 v26, v6

    move-object/from16 v29, v1

    move-object/from16 v30, v3

    move/from16 v31, v11

    move/from16 v32, v12

    invoke-static/range {v26 .. v32}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->musicInfo(ZZILjava/lang/String;Ljava/lang/String;II)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 514
    :cond_2d8
    if-nez v4, :cond_2e2

    if-nez v7, :cond_2e2

    if-eqz v13, :cond_2df

    goto :goto_2e2

    :cond_2df
    const/16 v16, 0x0

    goto :goto_2e4

    :cond_2e2
    :goto_2e2
    const/16 v16, 0x1

    :goto_2e4
    move-object v2, v1

    move v4, v6

    move/from16 v6, v23

    move-wide v7, v9

    move v9, v11

    move v10, v12

    move/from16 v11, v16

    move-wide/from16 v12, v24

    invoke-static/range {v2 .. v13}, Lcom/isaigu/gymapp/wearable/BandRemote;->sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V

    .line 515
    return-void

    .line 421
    :cond_2f3
    :goto_2f3
    return-void
.end method

.method private static sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V
    .registers 42

    .line 604
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "lang"

    const-string v4, "can"

    const-string v5, "dbl"

    const-string v6, "run"

    const-string v7, "|"

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isLinked()Z

    move-result v8

    if-nez v8, :cond_17

    .line 605
    return-void

    .line 607
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v8

    .line 608
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v9

    sget-object v10, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v9, v10, :cond_27

    if-eqz v8, :cond_27

    const/4 v9, 0x1

    goto :goto_28

    :cond_27
    const/4 v9, 0x0

    .line 609
    :goto_28
    const-string v10, "music"

    const-string v13, "idle"

    if-eqz v9, :cond_31

    const-string v14, "ai"

    goto :goto_48

    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v14

    if-nez v14, :cond_46

    sget-boolean v14, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v14, :cond_3c

    goto :goto_46

    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v14

    if-eqz v14, :cond_44

    move-object v14, v10

    goto :goto_48

    :cond_44
    move-object v14, v13

    goto :goto_48

    :cond_46
    :goto_46
    const-string v14, "manual"

    .line 610
    :goto_48
    if-eqz v9, :cond_4f

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v15

    goto :goto_60

    :cond_4f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v15

    if-eqz v15, :cond_5e

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v15

    invoke-virtual {v15}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v15

    goto :goto_60

    :cond_5e
    const-wide/16 v15, 0x0

    .line 611
    :goto_60
    if-eqz v9, :cond_72

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v11

    sget-object v12, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v11, v12, :cond_72

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v11

    if-eqz v11, :cond_72

    const/4 v11, 0x1

    goto :goto_73

    :cond_72
    const/4 v11, 0x0

    .line 612
    :goto_73
    nop

    .line 613
    const-string v12, ""

    if-eqz v11, :cond_85

    sget-boolean v18, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    if-nez v18, :cond_85

    .line 614
    const-string v18, "long"

    move-object/from16 v29, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v29

    goto :goto_9c

    .line 615
    :cond_85
    move-object/from16 v18, v12

    sget-object v12, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9a

    sget-object v12, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_9a

    .line 616
    const-string v12, "short"

    goto :goto_9c

    .line 618
    :cond_9a
    move-object/from16 v12, v18

    :goto_9c
    sput-object v14, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 619
    sput-boolean v11, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    .line 620
    move-object/from16 v19, v10

    move/from16 v20, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 622
    move-object/from16 v21, v7

    :try_start_aa
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 623
    move-object/from16 v22, v3

    const-string v3, "t"

    move-object/from16 v23, v13

    const-string v13, "state"

    invoke-virtual {v7, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 624
    const-string v3, "v"

    const/4 v13, 0x2

    invoke-virtual {v7, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 625
    const-string v3, "mode"

    invoke-virtual {v7, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v3, "hr"

    move-object/from16 v17, v14

    const/4 v13, 0x0

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v7, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    const-string v3, "z"

    if-lez v1, :cond_da

    invoke-static/range {p3 .. p4}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v1

    goto :goto_db

    :cond_da
    const/4 v1, 0x0

    :goto_db
    invoke-virtual {v7, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 628
    const-string v1, "lim"

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 629
    const-string v1, "title"

    if-nez v9, :cond_f1

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_ee

    goto :goto_f1

    :cond_ee
    move-object/from16 v3, p0

    goto :goto_f3

    :cond_f1
    :goto_f1
    move-object/from16 v3, p1

    :goto_f3
    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string v1, "sub"

    if-nez v9, :cond_104

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_101

    goto :goto_104

    :cond_101
    move-object/from16 v3, p1

    goto :goto_106

    :cond_104
    :goto_104
    move-object/from16 v3, v18

    :goto_106
    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v1, "kcal"

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v7, v1, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 632
    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 633
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 634
    const-string v14, "plus"

    if-eqz v9, :cond_129

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v15

    goto :goto_139

    :cond_129
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v15

    if-nez v15, :cond_138

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v15

    if-eqz v15, :cond_136

    goto :goto_138

    :cond_136
    const/4 v15, 0x0

    goto :goto_139

    :cond_138
    :goto_138
    const/4 v15, 0x1

    :goto_139
    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 635
    const-string v14, "minus"

    if-eqz v9, :cond_145

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v15

    goto :goto_155

    :cond_145
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v15

    if-nez v15, :cond_154

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v15

    if-eqz v15, :cond_152

    goto :goto_154

    :cond_152
    const/4 v15, 0x0

    goto :goto_155

    :cond_154
    :goto_154
    const/4 v15, 0x1

    :goto_155
    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 636
    if-eqz v9, :cond_162

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v14

    if-eqz v14, :cond_162

    const/4 v14, 0x1

    goto :goto_163

    :cond_162
    const/4 v14, 0x0

    :goto_163
    invoke-virtual {v1, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 637
    invoke-virtual {v7, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    if-eqz v9, :cond_173

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v1

    if-eqz v1, :cond_173

    const/4 v1, 0x1

    goto :goto_174

    :cond_173
    const/4 v1, 0x0

    :goto_174
    invoke-virtual {v7, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 639
    const-string v1, "vib"

    invoke-virtual {v7, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17c
    .catchall {:try_start_aa .. :try_end_17c} :catchall_44c

    .line 642
    const-string v1, "ph"

    const-string v12, "pause"

    const-string v13, "st"

    if-eqz v9, :cond_247

    .line 643
    :try_start_184
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v9

    .line 644
    if-eqz v20, :cond_18d

    const-string v6, "ready"

    goto :goto_19a

    :cond_18d
    sget-object v14, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v9, v14, :cond_194

    const-string v6, "rest"

    goto :goto_19a

    .line 645
    :cond_194
    sget-object v14, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v9, v14, :cond_199

    goto :goto_19a

    :cond_199
    move-object v6, v12

    .line 644
    :goto_19a
    invoke-virtual {v7, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v6

    .line 647
    iget-object v12, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v12}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    const-string v12, "pi"

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v14

    invoke-virtual {v7, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 649
    const-string v12, "pd"

    iget v14, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v7, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 650
    const-string v12, "pl"

    iget v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v14, v6

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v18

    sub-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v7, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 651
    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v9, v6, :cond_1e5

    .line 652
    const-string v6, "rl"

    invoke-virtual {v8, v10, v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v7, v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 654
    :cond_1e5
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 655
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 656
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v12

    iget-object v12, v12, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1f9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_214

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 657
    iget v15, v14, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 658
    iget-object v14, v14, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v14}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 659
    goto :goto_1f9

    .line 660
    :cond_214
    const-string v12, "pds"

    invoke-virtual {v7, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v6, "pns"

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v6, "u"

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v14

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v9, v14

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 663
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    .line 664
    const-string v6, "tot"

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v8

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 665
    move-wide v8, v14

    move-object/from16 v14, v17

    goto :goto_283

    :cond_247
    move-object/from16 v14, v17

    move-object/from16 v8, v19

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26d

    .line 666
    if-eqz v0, :cond_254

    goto :goto_255

    :cond_254
    move-object v6, v12

    :goto_255
    invoke-virtual {v7, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    const-string v6, "pos"

    move/from16 v8, p7

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 668
    const-string v6, "dur"

    move/from16 v8, p8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 669
    const-wide/16 v8, 0x3e8

    div-long v17, p5, v8

    move-wide/from16 v8, v17

    goto :goto_283

    .line 671
    :cond_26d
    if-eqz v0, :cond_270

    :goto_26f
    goto :goto_27a

    :cond_270
    move-object/from16 v6, v23

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_279

    goto :goto_26f

    :cond_279
    move-object v6, v12

    :goto_27a
    invoke-virtual {v7, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    const-wide/16 v8, 0x3e8

    div-long v17, p5, v8

    move-wide/from16 v8, v17

    .line 674
    :goto_283
    const-string v6, "el"

    invoke-virtual {v7, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 677
    const-wide/32 v2, 0x2bf20

    invoke-static {v10, v11, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v6

    .line 678
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 679
    const/4 v15, 0x0

    :goto_295
    const/16 v2, 0x1e

    if-ge v15, v2, :cond_2e5

    .line 680
    const-wide/32 v2, 0x2bf20

    sub-long v19, v10, v2

    int-to-long v2, v15

    const-wide/16 v23, 0x1770

    mul-long v2, v2, v23

    add-long v19, v19, v2

    .line 681
    add-long v23, v19, v23

    .line 682
    nop

    .line 683
    nop

    .line 684
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v25, 0x0

    :goto_2ad
    move-object/from16 v26, v5

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v5

    if-ge v2, v5, :cond_2d2

    .line 685
    iget-object v5, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v27, v5, v2

    cmp-long v5, v27, v19

    if-ltz v5, :cond_2cd

    iget-object v5, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v27, v5, v2

    cmp-long v5, v27, v23

    if-gez v5, :cond_2cd

    .line 686
    iget-object v5, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v5, v5, v2

    add-int v25, v25, v5

    .line 687
    add-int/lit8 v3, v3, 0x1

    .line 684
    :cond_2cd
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v26

    goto :goto_2ad

    .line 690
    :cond_2d2
    if-lez v3, :cond_2d9

    div-int v25, v25, v3

    move/from16 v2, v25

    goto :goto_2da

    :cond_2d9
    const/4 v2, 0x0

    :goto_2da
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 679
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v26

    const-wide/32 v2, 0x2bf20

    goto :goto_295

    .line 692
    :cond_2e5
    move-object/from16 v26, v5

    const-string v2, "hh"

    invoke-virtual {v7, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    const-wide/16 v2, 0x0

    cmp-long v5, v8, v2

    if-lez v5, :cond_2fb

    const-wide/16 v2, 0x5

    add-long/2addr v8, v2

    const-wide/16 v2, 0x3e8

    mul-long v5, v8, v2

    move-wide v2, v5

    goto :goto_2fe

    :cond_2fb
    const-wide/32 v2, 0x2bf20

    :goto_2fe
    invoke-static {v10, v11, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v2

    .line 694
    const-string v3, "avg"

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 695
    const-string v3, "max"

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 696
    move/from16 v3, p4

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v2

    .line 697
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 698
    const/4 v6, 0x1

    :goto_320
    const/4 v8, 0x5

    if-gt v6, v8, :cond_32f

    .line 699
    aget-wide v8, v2, v6

    const-wide/16 v17, 0x3e8

    div-long v8, v8, v17

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 698
    add-int/lit8 v6, v6, 0x1

    goto :goto_320

    .line 701
    :cond_32f
    const-string v2, "zt"

    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/wearable/BandRemote;->modules(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 703
    const-string v3, "mods"

    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    sget-object v3, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;
    :try_end_33f
    .catchall {:try_start_184 .. :try_end_33f} :catchall_44c

    const-string v5, "sum"

    if-eqz v3, :cond_34e

    :try_start_343
    sget-wide v8, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    cmp-long v3, v10, v8

    if-gez v3, :cond_34e

    .line 705
    sget-object v3, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    :cond_34e
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v3

    if-eqz v3, :cond_357

    const-string v3, "bg"

    goto :goto_359

    :cond_357
    const-string v3, "en"

    :goto_359
    move-object/from16 v6, v22

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 708
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 709
    sget-object v8, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_367
    if-ge v10, v9, :cond_377

    aget-object v11, v8, v10

    .line 710
    invoke-static {v11}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_374

    .line 711
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 709
    :cond_374
    add-int/lit8 v10, v10, 0x1

    goto :goto_367

    .line 714
    :cond_377
    const-string v8, "lic"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->channels()Lorg/json/JSONArray;

    move-result-object v8

    .line 716
    const-string v9, "ch"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStrength()I

    move-result v9

    .line 718
    const-string v10, "ms"

    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 719
    const-string v10, "ack"

    sget-object v11, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v21

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40f

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    const-string v1, "n"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_410

    :cond_40f
    const/4 v12, 0x0

    :goto_410
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    .line 726
    xor-int/2addr v1, v2

    if-nez p9, :cond_42e

    if-nez v1, :cond_42e

    sget-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    sub-long v1, p10, v1

    const-wide/16 v3, 0xfa0

    cmp-long v5, v1, v3

    if-gez v5, :cond_42e

    .line 727
    return-void

    .line 729
    :cond_42e
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    .line 730
    sput-wide p10, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    .line 731
    const-string v0, "seq"

    sget v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 732
    const-string v0, "boot"

    sget-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    invoke-virtual {v7, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 733
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->send(Ljava/lang/String;)Z
    :try_end_44b
    .catchall {:try_start_343 .. :try_end_44b} :catchall_44c

    .line 736
    goto :goto_463

    .line 734
    :catchall_44c
    move-exception v0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "applink"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :goto_463
    return-void
.end method

.method public static start()V
    .registers 2

    .line 62
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 63
    return-void

    .line 65
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;)V

    .line 66
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;)V

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 68
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentHr:I

    .line 69
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    if-nez v0, :cond_28

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 71
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    :cond_28
    return-void
.end method

.method public static stop()V
    .registers 2

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 77
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onAppInstalled(I)V
    .registers 2

    .line 94
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(I)V

    .line 95
    return-void
.end method

.method public onAppMessage(Ljava/lang/String;)V
    .registers 4

    .line 100
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public onMediaKey(II)V
    .registers 5

    .line 89
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Key;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/BandRemote$Key;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public onMusicRequest()V
    .registers 4

    .line 84
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
