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

.field private static final MUSIC_REFRESH_MS:J = 0x4e20L

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

    .line 102
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    .line 104
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 210
    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    .line 211
    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    sput-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    .line 263
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 264
    const/4 v1, 0x1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 265
    sput v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    .line 585
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    rem-long/2addr v1, v3

    sput-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    .line 595
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

    .line 296
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p0

    .line 297
    if-eqz p0, :cond_33

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v1, :cond_16

    goto :goto_33

    .line 300
    :cond_16
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 301
    array-length v2, v1

    new-array v2, v2, [I

    .line 302
    const/4 v3, 0x0

    :goto_1e
    array-length v4, v1

    if-ge v3, v4, :cond_32

    .line 303
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

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 305
    :cond_32
    return-object v2

    .line 298
    :cond_33
    :goto_33
    return-object v0

    .line 306
    :catchall_34
    move-exception p0

    .line 307
    return-object v0
.end method

.method static channelSet(II)V
    .registers 5

    .line 337
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 339
    :goto_c
    if-eqz v0, :cond_29

    if-ltz p0, :cond_29

    array-length v1, v0

    if-lt p0, v1, :cond_14

    goto :goto_29

    .line 342
    :cond_14
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 343
    aget v0, v0, p0

    sub-int/2addr p1, v0

    .line 344
    if-nez p1, :cond_25

    .line 345
    return-void

    .line 347
    :cond_25
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelStep(II)V

    .line 348
    return-void

    .line 340
    :cond_29
    :goto_29
    return-void
.end method

.method static channelStep(II)V
    .registers 8

    .line 315
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 317
    :goto_a
    if-eqz v1, :cond_80

    if-ltz p0, :cond_80

    array-length v2, v1

    if-ge p0, v2, :cond_80

    if-nez p1, :cond_14

    goto :goto_80

    .line 320
    :cond_14
    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    .line 323
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    :try_start_1c
    array-length v5, v1

    if-ge v4, v5, :cond_29

    .line 324
    if-ne v4, p0, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    aput-boolean v5, v1, v4

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 326
    :cond_29
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v4
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_7a

    .line 328
    array-length v5, v2

    invoke-static {v2, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    nop

    .line 330
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    .line 331
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

    .line 332
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

    .line 331
    const-string p1, "applink"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void

    .line 328
    :catchall_7a
    move-exception p0

    array-length p1, v2

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    throw p0

    .line 318
    :cond_80
    :goto_80
    return-void
.end method

.method private static channels()Lorg/json/JSONArray;
    .registers 5

    .line 736
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 737
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 738
    if-eqz v1, :cond_10

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelRealStrength(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 739
    :goto_11
    if-nez v2, :cond_14

    .line 740
    return-object v0

    .line 742
    :cond_14
    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 743
    const/4 v3, 0x0

    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_2d

    .line 744
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

    .line 743
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 746
    :cond_2d
    return-object v0
.end method

.method static handleApp(Ljava/lang/String;)V
    .registers 8

    .line 107
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "cmd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    .line 109
    const-string v2, "id"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_47

    .line 111
    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 112
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 113
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void

    .line 116
    :cond_32
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 117
    :goto_37
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v4, 0x20

    if-le v2, v4, :cond_47

    .line 118
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_37

    .line 122
    :cond_47
    const-string v2, "hello"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "v"

    const/4 v5, 0x0

    if-eqz v2, :cond_6e

    .line 123
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_5f

    :try_start_58
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_5f

    .line 126
    :catch_5d
    move-exception p0

    goto :goto_68

    .line 125
    :cond_5f
    :goto_5f
    const-string v0, "lang"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(ILjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_68} :catch_5d

    .line 128
    :goto_68
    const-string p0, ""

    sput-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    goto/16 :goto_147

    .line 129
    :cond_6e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 130
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applink"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "toggle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x32

    if-eqz v1, :cond_9f

    .line 133
    invoke-static {v5, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_148

    .line 134
    :cond_9f
    const-string v1, "plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 135
    const/4 p0, 0x4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_148

    .line 136
    :cond_ad
    const-string v1, "minus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x3

    if-eqz v1, :cond_bb

    .line 137
    invoke-static {v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto/16 :goto_148

    .line 138
    :cond_bb
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 139
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object p0

    .line 140
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_df

    if-eqz p0, :cond_df

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    .line 143
    :cond_df
    goto :goto_148

    :cond_e0
    const-string v1, "stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p0

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p0, v0, :cond_f4

    .line 145
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    goto :goto_148

    .line 147
    :cond_f4
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_148

    .line 150
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

    .line 153
    :cond_10c
    const-string v1, "ch_set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 154
    invoke-static {p0, v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 155
    const/16 v1, 0x64

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    goto :goto_143

    .line 151
    :cond_12b
    :goto_12b
    invoke-static {p0, v6, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 152
    const/16 v1, 0xa

    const-string v2, "d"

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 157
    :cond_143
    :goto_143
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleCommand(Ljava/lang/String;)V

    goto :goto_148

    .line 129
    :cond_147
    :goto_147
    nop

    .line 162
    :goto_148
    sget-boolean p0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    if-nez p0, :cond_157

    .line 163
    sput-boolean v3, Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z

    .line 164
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushSoon:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    :cond_157
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->pushLater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void
.end method

.method static handleKey(II)V
    .registers 7

    .line 363
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 364
    return-void

    .line 367
    :cond_b
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2d

    if-ne p0, v2, :cond_13

    goto :goto_2d

    .line 369
    :cond_13
    const/4 v3, 0x4

    if-ne p0, v3, :cond_18

    .line 370
    const/4 v0, 0x1

    goto :goto_2e

    .line 371
    :cond_18
    const/4 v3, 0x3

    if-ne p0, v3, :cond_1c

    .line 372
    goto :goto_2e

    .line 373
    :cond_1c
    const/4 v3, 0x5

    if-ne p0, v3, :cond_2c

    .line 374
    const/16 v3, 0x32

    if-le p1, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_29

    :cond_25
    if-ge p1, v3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 375
    :goto_29
    if-nez v0, :cond_2e

    .line 376
    return-void

    .line 379
    :cond_2c
    return-void

    .line 368
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .line 381
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

    .line 382
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object p0

    .line 383
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object p1

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne p1, v3, :cond_64

    if-eqz p0, :cond_64

    const/4 p1, 0x1

    goto :goto_65

    :cond_64
    const/4 p1, 0x0

    .line 384
    :goto_65
    if-eqz p1, :cond_89

    .line 385
    if-nez v0, :cond_7f

    .line 386
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object p1

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne p1, v0, :cond_7b

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 387
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    goto :goto_b3

    .line 389
    :cond_7b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_b3

    .line 391
    :cond_7f
    if-lez v0, :cond_85

    .line 392
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    goto :goto_b3

    .line 394
    :cond_85
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    goto :goto_b3

    .line 396
    :cond_89
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result p0

    if-nez p0, :cond_a8

    if-nez v0, :cond_98

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result p0

    if-nez p0, :cond_98

    goto :goto_a8

    .line 399
    :cond_98
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 400
    if-nez v0, :cond_a4

    .line 401
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_b3

    .line 403
    :cond_a4
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_b3

    .line 397
    :cond_a8
    :goto_a8
    if-nez v0, :cond_ab

    goto :goto_b0

    .line 398
    :cond_ab
    if-lez v0, :cond_af

    const/4 v1, 0x1

    goto :goto_b0

    :cond_af
    const/4 v1, 0x2

    .line 397
    :goto_b0
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 406
    :cond_b3
    :goto_b3
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {p1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    return-void
.end method

.method static intField(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 269
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return p0

    .line 270
    :catchall_a
    move-exception p0

    .line 271
    return p2
.end method

.method static jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 352
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 353
    return-object v0

    .line 356
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    return-object p0

    .line 357
    :catchall_e
    move-exception p0

    .line 358
    return-object v0
.end method

.method static leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 4

    .line 277
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 278
    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 279
    :goto_d
    if-nez v0, :cond_10

    .line 280
    return-object v1

    .line 282
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

    .line 283
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_2d

    .line 284
    return-object v2

    .line 286
    :cond_2d
    goto :goto_14

    .line 287
    :cond_2e
    return-object v1
.end method

.method static mainStep(I)V
    .registers 5

    .line 231
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 232
    if-nez v0, :cond_f

    .line 233
    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x2

    :goto_b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 234
    return-void

    .line 237
    :cond_f
    :try_start_f
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->onMaStrengthDelta(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 238
    return-void

    .line 240
    :cond_16
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_28

    iget-boolean v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_28

    .line 242
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addMainAndPauseStrenth(I)V

    goto :goto_2b

    .line 244
    :cond_28
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V

    .line 246
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

    .line 249
    goto :goto_60

    .line 247
    :catchall_5a
    move-exception p0

    .line 248
    const-string v0, "BandRemote.mainStep"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    :goto_60
    return-void
.end method

.method static mainStrength()I
    .registers 2

    .line 255
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 257
    :goto_11
    if-eqz v1, :cond_15

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    :cond_15
    return v0

    .line 258
    :catchall_16
    move-exception v1

    .line 259
    return v0
.end method

.method private static mmss(D)Ljava/lang/String;
    .registers 8

    .line 829
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 830
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

    .line 172
    if-nez p0, :cond_3

    .line 173
    return-void

    .line 175
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    const-string v1, "train_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 177
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_fb

    .line 178
    :cond_15
    const-string v1, "train_plus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    .line 179
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto/16 :goto_fb

    .line 180
    :cond_23
    const-string v1, "train_minus"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_31

    .line 181
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    goto/16 :goto_fb

    .line 182
    :cond_31
    const-string v1, "train_stop"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 183
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_fb

    .line 184
    :cond_3f
    const-string v1, "tm_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 185
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandTogglePause()V

    goto/16 :goto_fb

    .line 186
    :cond_4c
    const-string v1, "mu_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto/16 :goto_fb

    .line 188
    :cond_59
    const-string v1, "mu_next"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 189
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto/16 :goto_fb

    .line 190
    :cond_66
    const-string v1, "mu_prev"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 191
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto/16 :goto_fb

    .line 192
    :cond_73
    const-string v1, "mu_up"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 193
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_fb

    .line 194
    :cond_80
    const-string v1, "mu_down"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 195
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto/16 :goto_fb

    .line 196
    :cond_8d
    const-string v1, "pause_all"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 197
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->pauseAll()V

    goto :goto_fb

    .line 198
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

    .line 200
    :cond_aa
    const-string v1, "ch_set"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 201
    sget p0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSet:I

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelSet(II)V

    goto :goto_fb

    .line 202
    :cond_ba
    const-string v1, "hg_toggle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fb

    if-eqz v0, :cond_fb

    .line 203
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 204
    xor-int/2addr p0, v2

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 205
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

    .line 199
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

    .line 207
    :cond_fb
    :goto_fb
    return-void
.end method

.method private static moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7

    .line 751
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 752
    const-string v1, "mu"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 753
    const-string v2, "hg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 754
    const-string v3, "tr"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    const-string v4, "run"

    if-eqz p0, :cond_28

    .line 757
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 759
    :cond_28
    const/16 p0, 0x7c

    if-eqz v0, :cond_5a

    .line 760
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

    .line 761
    const-string v4, "loop"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "lbl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    :cond_5a
    if-eqz v1, :cond_8c

    .line 764
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

    .line 765
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ceil"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    :cond_8c
    if-eqz v2, :cond_b5

    .line 768
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

    .line 769
    const-string p0, "up"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
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

    .line 776
    const-string v0, "tm"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 777
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 779
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 780
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v4

    const-string v5, "run"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 781
    const-string v4, "tr"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    :try_start_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandState()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    .line 787
    goto :goto_2f

    .line 785
    :catchall_26
    move-exception v3

    .line 786
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    :goto_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 790
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v3

    .line 791
    const-string v4, "on"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 792
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

    .line 793
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

    .line 794
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v6

    .line 795
    const-string v7, ""

    if-eqz v6, :cond_6e

    goto :goto_6f

    :cond_6e
    move-object v6, v7

    :goto_6f
    const-string v8, "title"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    const-string v8, "pos"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 797
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    const-string v8, "dur"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 798
    if-eqz v3, :cond_91

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v6

    goto :goto_92

    :cond_91
    const/4 v6, 0x0

    :goto_92
    const-string v8, "lvl"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 799
    if-eqz v3, :cond_9e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v3

    goto :goto_9f

    :cond_9e
    const/4 v3, 0x0

    :goto_9f
    const-string v6, "ceil"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 800
    const-string v3, "mu"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 803
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v3

    .line 804
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

    .line 805
    const-string v2, "up"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 806
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

    .line 807
    if-eqz v3, :cond_114

    .line 808
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int p0, v8

    const-string v2, "sf"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 809
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isHold()Z

    move-result p0

    const-string v2, "hold"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 810
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getForecast()D

    move-result-wide v8

    .line 811
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

    .line 812
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastAction()Ljava/lang/String;

    move-result-object p0

    .line 813
    if-eqz p0, :cond_10f

    move-object v7, p0

    :cond_10f
    const-string p0, "act"

    invoke-virtual {v0, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 815
    :cond_114
    const-string p0, "hg"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    return-object v1
.end method

.method private static musicOnly()Z
    .registers 1

    .line 410
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

    .line 521
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 522
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

    .line 523
    sput-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 524
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 525
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v0, :cond_31

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_31

    const-wide/16 v0, 0x7530

    cmp-long v4, v2, v0

    if-ltz v4, :cond_31

    .line 526
    const-string v0, "manual"

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    .line 530
    :cond_31
    goto :goto_38

    .line 528
    :catchall_32
    move-exception v0

    .line 529
    const-string v1, "BandRemote.stop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 531
    :goto_38
    return-void
.end method

.method static onSessionEnd(Ljava/lang/String;J)V
    .registers 19

    .line 536
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "applink"

    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 537
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 538
    if-eqz v6, :cond_15

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v6

    goto :goto_17

    :cond_15
    const/16 v6, 0xaa

    .line 539
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

    .line 540
    const-string v8, "ai"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v11

    goto :goto_46

    .line 541
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

    .line 542
    :goto_46
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 543
    const-string v13, "n"

    sget v14, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    sput v14, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 544
    const-string v13, "kind"

    invoke-virtual {v8, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string v13, "dur"

    invoke-virtual {v8, v13, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 546
    const-string v13, "kcal"

    const-wide/16 v9, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v13, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 547
    const-string v9, "avg"

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 548
    const-string v9, "max"

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 549
    invoke-virtual {v7, v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v6

    .line 550
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 551
    const/4 v9, 0x1

    :goto_8b
    const/4 v10, 0x5

    if-gt v9, v10, :cond_99

    .line 552
    aget-wide v10, v6, v9

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 551
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    .line 554
    :cond_99
    const-string v6, "zt"

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    sput-object v8, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    .line 556
    const-wide/32 v6, 0x15f90

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    .line 557
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

    .line 558
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v1, v15}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_d3
    .catchall {:try_start_6 .. :try_end_d3} :catchall_d4

    .line 561
    goto :goto_e9

    .line 559
    :catchall_d4
    move-exception v0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :goto_e9
    return-void
.end method

.method static pauseAll()V
    .registers 3

    .line 566
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    .line 567
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_1a

    if-eqz v0, :cond_1a

    .line 568
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_24

    .line 569
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_24

    .line 571
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 572
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    .line 574
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

    .line 575
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 576
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    .line 578
    :cond_3f
    return-void
.end method

.method private static phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;
    .registers 2

    .line 820
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

    .line 824
    const-string p0, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v0, "Cool-down"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 823
    :cond_1a
    const-string p0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v0, "Metabolic"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 822
    :cond_23
    const-string p0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v0, "Main"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 821
    :cond_2c
    const-string p0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v0, "Warm-up"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static push(Z)V
    .registers 35

    .line 416
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_2e1

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2e1

    .line 418
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_2e1

    .line 421
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 422
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v1

    .line 423
    if-eqz v1, :cond_28

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-nez v4, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 424
    :goto_29
    if-eqz v4, :cond_2f

    .line 425
    sput-wide v12, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    .line 426
    const/4 v4, 0x1

    goto :goto_40

    .line 427
    :cond_2f
    if-nez v1, :cond_3e

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v4, :cond_3e

    .line 428
    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-wide v6, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v6, v12, v6

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 430
    :cond_3e
    move/from16 v4, p0

    :goto_40
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 431
    sget-wide v5, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    if-eqz v1, :cond_4b

    sget-wide v9, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v9, v12, v9

    goto :goto_4d

    :cond_4b
    const-wide/16 v9, 0x0

    :goto_4d
    add-long/2addr v9, v5

    .line 432
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

    .line 433
    :goto_5f
    if-eqz v5, :cond_66

    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v6, :cond_66

    .line 434
    const/4 v4, 0x1

    .line 436
    :cond_66
    if-eqz v5, :cond_77

    .line 437
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    sput-wide v14, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    goto :goto_82

    .line 438
    :cond_77
    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-eqz v6, :cond_82

    .line 439
    sget-wide v14, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    const-string v6, "ai"

    invoke-static {v6, v14, v15}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V

    .line 441
    :cond_82
    :goto_82
    sput-boolean v5, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    .line 443
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v5

    .line 444
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_97

    .line 445
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v6

    goto :goto_99

    :cond_97
    const/16 v6, 0xaa

    .line 446
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

    .line 447
    :cond_b4
    const-string v11, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v14, "Workout"

    invoke-static {v11, v14}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 453
    :goto_bc
    nop

    .line 454
    nop

    .line 456
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v14

    .line 457
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

    .line 458
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    .line 459
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 460
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v19

    .line 461
    sget-object v15, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v15, :cond_ee

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v15

    if-eqz v15, :cond_ee

    const/4 v15, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v15, 0x0

    .line 462
    :goto_ef
    nop

    .line 463
    if-eqz v15, :cond_101

    .line 464
    const-string v3, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 \u00b7 \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v8, "Rest done \u00b7 \u25b6 continue"

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v23, v6

    move-object/from16 p0, v11

    move-wide/from16 v24, v12

    goto :goto_14b

    .line 466
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

    .line 467
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

    .line 469
    :goto_14b
    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v6, :cond_151

    const/4 v1, 0x1

    goto :goto_152

    :cond_151
    const/4 v1, 0x0

    .line 470
    :goto_152
    nop

    .line 471
    xor-int/lit8 v6, v1, 0x1

    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v11

    double-to-int v8, v11

    .line 472
    invoke-virtual {v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v11

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    .line 473
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

    .line 474
    move/from16 v27, v6

    move v12, v11

    move v6, v1

    move v11, v8

    move-object/from16 v1, p0

    goto/16 :goto_29b

    .line 457
    :cond_188
    move/from16 v23, v6

    move-object/from16 p0, v11

    move-wide/from16 v24, v12

    .line 474
    if-nez v1, :cond_227

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-lez v2, :cond_19e

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-nez v2, :cond_19e

    goto/16 :goto_227

    .line 482
    :cond_19e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v1

    if-eqz v1, :cond_210

    .line 483
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v1

    .line 484
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

    .line 485
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

    .line 486
    :cond_1d8
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    :goto_1dc
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v3

    const/4 v6, 0x1

    .line 488
    xor-int/2addr v3, v6

    .line 489
    xor-int/lit8 v6, v3, 0x1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    .line 490
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v11

    div-int/lit16 v11, v11, 0x3e8

    .line 491
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mu|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 492
    move/from16 v27, v6

    move v12, v11

    move v6, v3

    move v11, v8

    move-object v3, v2

    move-object v2, v7

    goto/16 :goto_29b

    .line 493
    :cond_210
    nop

    .line 494
    const-string v1, "\u041c\u0443\u0437\u0438\u043a\u0430 \u00b7 \u25b6 \u0441\u0442\u0430\u0440\u0442"

    const-string v2, "Music \u00b7 \u25b6 start"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    nop

    .line 496
    nop

    .line 497
    const-string v2, "idle"

    const/4 v6, 0x0

    move-object v3, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v27, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_29b

    .line 475
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

    .line 476
    :goto_238
    nop

    .line 477
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

    .line 478
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

    .line 479
    nop

    .line 480
    nop

    .line 481
    xor-int/lit8 v6, v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tr|"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 482
    move/from16 v27, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, v1

    move-object/from16 v1, p0

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    .line 501
    :goto_29b
    sget-object v7, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    .line 502
    xor-int/2addr v7, v8

    if-nez v4, :cond_2b1

    if-nez v7, :cond_2b1

    sget-wide v13, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    sub-long v13, v24, v13

    const-wide/16 v17, 0x4e20

    cmp-long v15, v13, v17

    if-ltz v15, :cond_2c8

    .line 503
    :cond_2b1
    sput-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 504
    sput-wide v24, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    .line 505
    const/16 v28, 0x32

    move/from16 v26, v6

    move-object/from16 v29, v1

    move-object/from16 v30, v3

    move/from16 v31, v11

    move/from16 v32, v12

    invoke-static/range {v26 .. v32}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->musicInfo(ZZILjava/lang/String;Ljava/lang/String;II)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 509
    :cond_2c8
    if-nez v4, :cond_2d0

    if-eqz v7, :cond_2cd

    goto :goto_2d0

    :cond_2cd
    const/16 v16, 0x0

    goto :goto_2d2

    :cond_2d0
    :goto_2d0
    const/16 v16, 0x1

    :goto_2d2
    move-object v2, v1

    move v4, v6

    move/from16 v6, v23

    move-wide v7, v9

    move v9, v11

    move v10, v12

    move/from16 v11, v16

    move-wide/from16 v12, v24

    invoke-static/range {v2 .. v13}, Lcom/isaigu/gymapp/wearable/BandRemote;->sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V

    .line 510
    return-void

    .line 419
    :cond_2e1
    :goto_2e1
    return-void
.end method

.method private static sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V
    .registers 42

    .line 599
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

    .line 600
    return-void

    .line 602
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v8

    .line 603
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v9

    sget-object v10, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v9, v10, :cond_27

    if-eqz v8, :cond_27

    const/4 v9, 0x1

    goto :goto_28

    :cond_27
    const/4 v9, 0x0

    .line 604
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

    .line 605
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

    .line 606
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

    .line 607
    :goto_73
    nop

    .line 608
    const-string v12, ""

    if-eqz v11, :cond_85

    sget-boolean v18, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    if-nez v18, :cond_85

    .line 609
    const-string v18, "long"

    move-object/from16 v29, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v29

    goto :goto_9c

    .line 610
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

    .line 611
    const-string v12, "short"

    goto :goto_9c

    .line 613
    :cond_9a
    move-object/from16 v12, v18

    :goto_9c
    sput-object v14, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 614
    sput-boolean v11, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    .line 615
    move-object/from16 v19, v10

    move/from16 v20, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 617
    move-object/from16 v21, v7

    :try_start_aa
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 618
    move-object/from16 v22, v3

    const-string v3, "t"

    move-object/from16 v23, v13

    const-string v13, "state"

    invoke-virtual {v7, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    const-string v3, "v"

    const/4 v13, 0x2

    invoke-virtual {v7, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 620
    const-string v3, "mode"

    invoke-virtual {v7, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    const-string v3, "hr"

    move-object/from16 v17, v14

    const/4 v13, 0x0

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v7, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 622
    const-string v3, "z"

    if-lez v1, :cond_da

    invoke-static/range {p3 .. p4}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v1

    goto :goto_db

    :cond_da
    const/4 v1, 0x0

    :goto_db
    invoke-virtual {v7, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 623
    const-string v1, "lim"

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 624
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

    .line 625
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

    .line 626
    const-string v1, "kcal"

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v7, v1, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 627
    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 628
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 629
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

    .line 630
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

    .line 631
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

    .line 632
    invoke-virtual {v7, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
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

    .line 634
    const-string v1, "vib"

    invoke-virtual {v7, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17c
    .catchall {:try_start_aa .. :try_end_17c} :catchall_44c

    .line 637
    const-string v1, "ph"

    const-string v12, "pause"

    const-string v13, "st"

    if-eqz v9, :cond_247

    .line 638
    :try_start_184
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v9

    .line 639
    if-eqz v20, :cond_18d

    const-string v6, "ready"

    goto :goto_19a

    :cond_18d
    sget-object v14, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v9, v14, :cond_194

    const-string v6, "rest"

    goto :goto_19a

    .line 640
    :cond_194
    sget-object v14, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v9, v14, :cond_199

    goto :goto_19a

    :cond_199
    move-object v6, v12

    .line 639
    :goto_19a
    invoke-virtual {v7, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v6

    .line 642
    iget-object v12, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v12}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 643
    const-string v12, "pi"

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v14

    invoke-virtual {v7, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 644
    const-string v12, "pd"

    iget v14, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v7, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 645
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

    .line 646
    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v9, v6, :cond_1e5

    .line 647
    const-string v6, "rl"

    invoke-virtual {v8, v10, v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v7, v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 649
    :cond_1e5
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 650
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 651
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

    .line 652
    iget v15, v14, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 653
    iget-object v14, v14, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v14}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 654
    goto :goto_1f9

    .line 655
    :cond_214
    const-string v12, "pds"

    invoke-virtual {v7, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v6, "pns"

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    const-string v6, "u"

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v14

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v9, v14

    invoke-virtual {v7, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 658
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    .line 659
    const-string v6, "tot"

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v8

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 660
    move-wide v8, v14

    move-object/from16 v14, v17

    goto :goto_283

    :cond_247
    move-object/from16 v14, v17

    move-object/from16 v8, v19

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26d

    .line 661
    if-eqz v0, :cond_254

    goto :goto_255

    :cond_254
    move-object v6, v12

    :goto_255
    invoke-virtual {v7, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v6, "pos"

    move/from16 v8, p7

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 663
    const-string v6, "dur"

    move/from16 v8, p8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 664
    const-wide/16 v8, 0x3e8

    div-long v17, p5, v8

    move-wide/from16 v8, v17

    goto :goto_283

    .line 666
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

    .line 667
    const-wide/16 v8, 0x3e8

    div-long v17, p5, v8

    move-wide/from16 v8, v17

    .line 669
    :goto_283
    const-string v6, "el"

    invoke-virtual {v7, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 672
    const-wide/32 v2, 0x2bf20

    invoke-static {v10, v11, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v6

    .line 673
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 674
    const/4 v15, 0x0

    :goto_295
    const/16 v2, 0x1e

    if-ge v15, v2, :cond_2e5

    .line 675
    const-wide/32 v2, 0x2bf20

    sub-long v19, v10, v2

    int-to-long v2, v15

    const-wide/16 v23, 0x1770

    mul-long v2, v2, v23

    add-long v19, v19, v2

    .line 676
    add-long v23, v19, v23

    .line 677
    nop

    .line 678
    nop

    .line 679
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v25, 0x0

    :goto_2ad
    move-object/from16 v26, v5

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v5

    if-ge v2, v5, :cond_2d2

    .line 680
    iget-object v5, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v27, v5, v2

    cmp-long v5, v27, v19

    if-ltz v5, :cond_2cd

    iget-object v5, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v27, v5, v2

    cmp-long v5, v27, v23

    if-gez v5, :cond_2cd

    .line 681
    iget-object v5, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v5, v5, v2

    add-int v25, v25, v5

    .line 682
    add-int/lit8 v3, v3, 0x1

    .line 679
    :cond_2cd
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v26

    goto :goto_2ad

    .line 685
    :cond_2d2
    if-lez v3, :cond_2d9

    div-int v25, v25, v3

    move/from16 v2, v25

    goto :goto_2da

    :cond_2d9
    const/4 v2, 0x0

    :goto_2da
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 674
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v26

    const-wide/32 v2, 0x2bf20

    goto :goto_295

    .line 687
    :cond_2e5
    move-object/from16 v26, v5

    const-string v2, "hh"

    invoke-virtual {v7, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 688
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

    .line 689
    const-string v3, "avg"

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 690
    const-string v3, "max"

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 691
    move/from16 v3, p4

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v2

    .line 692
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 693
    const/4 v6, 0x1

    :goto_320
    const/4 v8, 0x5

    if-gt v6, v8, :cond_32f

    .line 694
    aget-wide v8, v2, v6

    const-wide/16 v17, 0x3e8

    div-long v8, v8, v17

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 693
    add-int/lit8 v6, v6, 0x1

    goto :goto_320

    .line 696
    :cond_32f
    const-string v2, "zt"

    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/wearable/BandRemote;->modules(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 698
    const-string v3, "mods"

    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    sget-object v3, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;
    :try_end_33f
    .catchall {:try_start_184 .. :try_end_33f} :catchall_44c

    const-string v5, "sum"

    if-eqz v3, :cond_34e

    :try_start_343
    sget-wide v8, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    cmp-long v3, v10, v8

    if-gez v3, :cond_34e

    .line 700
    sget-object v3, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
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

    .line 703
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 704
    sget-object v8, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_367
    if-ge v10, v9, :cond_377

    aget-object v11, v8, v10

    .line 705
    invoke-static {v11}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_374

    .line 706
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 704
    :cond_374
    add-int/lit8 v10, v10, 0x1

    goto :goto_367

    .line 709
    :cond_377
    const-string v8, "lic"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->channels()Lorg/json/JSONArray;

    move-result-object v8

    .line 711
    const-string v9, "ch"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStrength()I

    move-result v9

    .line 713
    const-string v10, "ms"

    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 714
    const-string v10, "ack"

    sget-object v11, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
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

    .line 718
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

    .line 719
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

    .line 720
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    .line 721
    xor-int/2addr v1, v2

    if-nez p9, :cond_42e

    if-nez v1, :cond_42e

    sget-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    sub-long v1, p10, v1

    const-wide/16 v3, 0xfa0

    cmp-long v5, v1, v3

    if-gez v5, :cond_42e

    .line 722
    return-void

    .line 724
    :cond_42e
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    .line 725
    sput-wide p10, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    .line 726
    const-string v0, "seq"

    sget v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 727
    const-string v0, "boot"

    sget-wide v1, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    invoke-virtual {v7, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 728
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->send(Ljava/lang/String;)Z
    :try_end_44b
    .catchall {:try_start_343 .. :try_end_44b} :catchall_44c

    .line 731
    goto :goto_463

    .line 729
    :catchall_44c
    move-exception v0

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "applink"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :goto_463
    return-void
.end method

.method public static start()V
    .registers 2

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
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    if-nez v0, :cond_25

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 69
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_25
    return-void
.end method

.method public static stop()V
    .registers 2

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 75
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onAppInstalled(I)V
    .registers 2

    .line 92
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(I)V

    .line 93
    return-void
.end method

.method public onAppMessage(Ljava/lang/String;)V
    .registers 4

    .line 98
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public onMediaKey(II)V
    .registers 5

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Key;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/BandRemote$Key;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public onMusicRequest()V
    .registers 4

    .line 82
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method
