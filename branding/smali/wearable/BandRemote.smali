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
        Lcom/isaigu/gymapp/wearable/BandRemote$Tick;
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

.field private static lastSentMs:J

.field private static lastSig:Ljava/lang/String;

.field private static lastStep:I

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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
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

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    .line 98
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 191
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 192
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 471
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    rem-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    .line 481
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static channelStep(II)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 232
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v6

    .line 233
    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelValues(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v1

    move-object v5, v1

    .line 234
    :goto_0
    if-eqz v6, :cond_2

    iget-object v0, v6, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    move-object v4, v0

    .line 235
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-ltz p0, :cond_0

    array-length v0, v5

    if-ge p0, v0, :cond_0

    array-length v0, v4

    if-lt p0, v0, :cond_3

    .line 248
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v5, v0

    .line 233
    goto :goto_0

    :cond_2
    move-object v4, v0

    .line 234
    goto :goto_1

    .line 238
    :cond_3
    invoke-virtual {v4}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    move v3, v2

    .line 240
    :goto_3
    :try_start_0
    array-length v1, v4

    if-ge v3, v1, :cond_5

    .line 241
    if-ne v3, p0, :cond_4

    const/4 v1, 0x1

    :goto_4
    aput-boolean v1, v4, v3

    .line 240
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_4
    move v1, v2

    .line 241
    goto :goto_4

    .line 243
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v6, p1, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    array-length v1, v0

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    const-string v1, "applink"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez p1, :cond_6

    const-string v0, " +"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2192 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v5, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 245
    :catchall_0
    move-exception v1

    array-length v3, v0

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    throw v1

    .line 247
    :cond_6
    const-string v0, " "

    goto :goto_5
.end method

.method static channelValues(Lcom/isaigu/gymapp/train/model/TrainItem;)[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static channels()Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 620
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 621
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 622
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelValues(Lcom/isaigu/gymapp/train/model/TrainItem;)[I

    move-result-object v0

    move-object v3, v0

    .line 623
    :goto_0
    if-nez v3, :cond_1

    move-object v0, v2

    .line 630
    :goto_1
    return-object v0

    .line 622
    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    .line 626
    :cond_1
    iget-object v4, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    .line 627
    const/4 v0, 0x0

    :goto_2
    array-length v1, v3

    if-ge v0, v1, :cond_3

    .line 628
    if-eqz v4, :cond_2

    array-length v1, v4

    if-ge v0, v1, :cond_2

    aget-boolean v1, v4, v0

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :goto_3
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 628
    :cond_2
    aget v1, v3, v0

    goto :goto_3

    :cond_3
    move-object v0, v2

    .line 630
    goto :goto_1
.end method

.method static handleApp(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x32

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 101
    const-string v2, "t"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string v3, "cmd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    const-string v3, "id"

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 105
    sput-object v3, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    .line 106
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 111
    :goto_1
    sget-object v3, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    .line 112
    sget-object v3, Lcom/isaigu/gymapp/wearable/BandRemote;->seenIds:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 116
    :cond_1
    const-string v3, "hello"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    const-string v2, "v"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    const-string v2, "lang"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_2
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    .line 151
    :cond_3
    :goto_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v4, 0x78

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 123
    :cond_4
    const-string v3, "cmd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    const-string v2, "a"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v3, "applink"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "toggle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto :goto_3

    .line 128
    :cond_5
    const-string v3, "plus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    const/4 v0, 0x4

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto :goto_3

    .line 130
    :cond_6
    const-string v3, "minus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 131
    invoke-static {v7, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto :goto_3

    .line 132
    :cond_7
    const-string v3, "double"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v2

    .line 134
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    goto :goto_3

    .line 137
    :cond_9
    const-string v0, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v2, :cond_a

    .line 139
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    goto/16 :goto_3

    .line 141
    :cond_a
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_3

    .line 144
    :cond_b
    const-string v0, "ch_plus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "ch_minus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 145
    :cond_c
    const-string v0, "c"

    const/4 v3, -0x1

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    .line 146
    const/16 v0, 0xa

    const-string v3, "d"

    invoke-static {p0, v3, v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->intField(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    .line 148
    :cond_d
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleCommand(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 120
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method static handleKey(II)V
    .locals 6

    .prologue
    const/16 v4, 0x32

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 263
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    if-eqz p0, :cond_2

    if-ne p0, v1, :cond_5

    :cond_2
    move v0, v2

    .line 281
    :cond_3
    :goto_1
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

    .line 282
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v4

    .line 283
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v3

    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v3, v5, :cond_9

    if-eqz v4, :cond_9

    move v3, v1

    .line 284
    :goto_2
    if-eqz v3, :cond_d

    .line 285
    if-nez v0, :cond_b

    .line 286
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v2, :cond_a

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 287
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    .line 306
    :cond_4
    :goto_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 269
    :cond_5
    const/4 v3, 0x4

    if-ne p0, v3, :cond_6

    move v0, v1

    .line 270
    goto :goto_1

    .line 271
    :cond_6
    const/4 v3, 0x3

    if-eq p0, v3, :cond_3

    .line 273
    const/4 v3, 0x5

    if-ne p0, v3, :cond_0

    .line 274
    if-le p1, v4, :cond_8

    move v0, v1

    .line 275
    :cond_7
    :goto_4
    if-nez v0, :cond_3

    goto :goto_0

    .line 274
    :cond_8
    if-lt p1, v4, :cond_7

    move v0, v2

    goto :goto_4

    :cond_9
    move v3, v2

    .line 283
    goto :goto_2

    .line 289
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_3

    .line 291
    :cond_b
    if-lez v0, :cond_c

    .line 292
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    goto :goto_3

    .line 294
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    goto :goto_3

    .line 296
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v3

    if-nez v3, :cond_e

    if-nez v0, :cond_11

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v3

    if-nez v3, :cond_11

    .line 297
    :cond_e
    if-nez v0, :cond_f

    :goto_5
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_3

    .line 298
    :cond_f
    if-lez v0, :cond_10

    move v2, v1

    goto :goto_5

    :cond_10
    const/4 v2, 0x2

    goto :goto_5

    .line 299
    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    if-nez v0, :cond_12

    .line 301
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_3

    .line 303
    :cond_12
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_3
.end method

.method static intField(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 196
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 198
    :goto_0
    return p2

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    if-nez p0, :cond_0

    .line 258
    :goto_0
    return-object v0

    .line 256
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static leaderItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 206
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 214
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 205
    goto :goto_0

    .line 209
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 210
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 214
    goto :goto_1
.end method

.method private static mmss(D)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3c

    .line 713
    const-wide/16 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 714
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
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 156
    if-nez p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 160
    const-string v3, "train_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_0

    .line 162
    :cond_2
    const-string v3, "train_plus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_0

    .line 164
    :cond_3
    const-string v3, "train_minus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_0

    .line 166
    :cond_4
    const-string v3, "train_stop"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 167
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_0

    .line 168
    :cond_5
    const-string v3, "tm_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandTogglePause()V

    goto :goto_0

    .line 170
    :cond_6
    const-string v3, "mu_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_0

    .line 172
    :cond_7
    const-string v3, "mu_next"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 173
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_0

    .line 174
    :cond_8
    const-string v3, "mu_prev"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 175
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_0

    .line 176
    :cond_9
    const-string v3, "mu_up"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 177
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto :goto_0

    .line 178
    :cond_a
    const-string v3, "mu_down"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 179
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto :goto_0

    .line 180
    :cond_b
    const-string v3, "pause_all"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->pauseAll()V

    goto/16 :goto_0

    .line 182
    :cond_c
    const-string v3, "ch_plus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "ch_minus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 183
    :cond_d
    sget v1, Lcom/isaigu/gymapp/wearable/BandRemote;->lastChannel:I

    const-string v0, "ch_plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    :goto_1
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->channelStep(II)V

    goto/16 :goto_0

    :cond_e
    sget v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastStep:I

    neg-int v0, v0

    goto :goto_1

    .line 184
    :cond_f
    const-string v3, "hg_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 185
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 186
    :goto_2
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 187
    const-string v1, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hr module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_11

    const-string v0, "on"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move v0, v1

    .line 185
    goto :goto_2

    .line 187
    :cond_11
    const-string v0, "off"

    goto :goto_3
.end method

.method private static moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x7c

    .line 635
    const-string v0, "tm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 636
    const-string v1, "mu"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 637
    const-string v2, "hg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 638
    const-string v3, "tr"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    if-eqz v3, :cond_0

    .line 641
    const-string v5, "run"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 643
    :cond_0
    if-eqz v0, :cond_1

    .line 644
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

    .line 645
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "lbl"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    :cond_1
    if-eqz v1, :cond_2

    .line 648
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

    .line 649
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ceil"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    :cond_2
    if-eqz v2, :cond_3

    .line 652
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

    .line 653
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static modules(I)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 660
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 661
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 663
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 664
    const-string v5, "run"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 665
    const-string v5, "tr"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 668
    :try_start_0
    const-string v0, "tm"

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandState()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 674
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v6

    .line 675
    const-string v0, "on"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 676
    const-string v7, "pm"

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 677
    const-string v7, "play"

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 678
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v0

    .line 679
    const-string v7, "title"

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    const-string v0, "pos"

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 681
    const-string v0, "dur"

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 682
    const-string v7, "lvl"

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v0

    :goto_4
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 683
    const-string v7, "ceil"

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v0

    :goto_5
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 684
    const-string v0, "mu"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 687
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v6

    .line 688
    const-string v7, "en"

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 689
    const-string v0, "up"

    invoke-virtual {v5, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 690
    const-string v0, "ai"

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v4

    sget-object v7, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v4, v7, :cond_7

    :goto_7
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 691
    if-eqz v6, :cond_0

    .line 692
    const-string v0, "sf"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v1, v8

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 693
    const-string v0, "hold"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isHold()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 694
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getForecast()D

    move-result-wide v0

    .line 695
    const-string v4, "fc"

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_8
    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 696
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastAction()Ljava/lang/String;

    move-result-object v0

    .line 697
    const-string v1, "act"

    if-eqz v0, :cond_9

    :goto_9
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    :cond_0
    const-string v0, "hg"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    return-object v3

    .line 669
    :catch_0
    move-exception v0

    .line 670
    const-string v0, "tm"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 676
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 677
    goto/16 :goto_2

    .line 679
    :cond_3
    const-string v0, ""

    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 682
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 683
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 688
    goto :goto_6

    :cond_7
    move v1, v2

    .line 690
    goto :goto_7

    .line 695
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v2, v0

    goto :goto_8

    .line 697
    :cond_9
    const-string v0, ""

    goto :goto_9
.end method

.method private static musicOnly()Z
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onManualStop()V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 407
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 408
    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-boolean v6, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v6, :cond_0

    sget-wide v0, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v0, v2, v0

    :cond_0
    add-long/2addr v0, v4

    .line 409
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    .line 410
    const/4 v2, 0x0

    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 411
    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v2, v3, :cond_1

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 412
    const-string v2, "manual"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    const-string v1, "BandRemote.stop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static onSessionEnd(Ljava/lang/String;J)V
    .locals 13

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v0, 0x1

    .line 422
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 423
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    .line 425
    :goto_0
    const-wide/16 v2, 0x3c

    const-wide/16 v6, 0x5

    add-long/2addr v6, p1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    mul-long/2addr v2, v8

    invoke-static {v4, v5, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v6

    .line 426
    const-string v2, "ai"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v2

    .line 428
    :goto_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 429
    const-string v8, "n"

    sget v9, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/isaigu/gymapp/wearable/BandRemote;->endSeq:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 430
    const-string v8, "kind"

    invoke-virtual {v7, v8, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string v8, "dur"

    invoke-virtual {v7, v8, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 432
    const-string v8, "kcal"

    const-wide/16 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v7, v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 433
    const-string v2, "avg"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 434
    const-string v2, "max"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 435
    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v1

    .line 436
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 437
    :goto_2
    const/4 v3, 0x5

    if-gt v0, v3, :cond_3

    .line 438
    aget-wide v8, v1, v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 424
    :cond_0
    const/16 v1, 0xaa

    goto :goto_0

    .line 427
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 440
    :cond_3
    const-string v0, "zt"

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    sput-object v7, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    .line 442
    const-wide/32 v0, 0x15f90

    add-long/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    .line 443
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

    .line 444
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_3
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
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

    goto :goto_3
.end method

.method static pauseAll()V
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v0

    .line 453
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_0

    .line 455
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    .line 460
    :cond_0
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    .line 464
    :cond_1
    return-void

    .line 457
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_0
.end method

.method private static phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 704
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 708
    const-string v0, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v1, "Cool-down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 705
    :pswitch_0
    const-string v0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v1, "Warm-up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 706
    :pswitch_1
    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v1, "Main"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 707
    :pswitch_2
    const-string v0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v1, "Metabolic"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static push(Z)V
    .locals 24

    .prologue
    .line 316
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v10

    .line 317
    if-eqz v10, :cond_0

    invoke-interface {v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 322
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v9

    .line 323
    if-eqz v9, :cond_7

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-nez v2, :cond_7

    .line 324
    sput-wide v20, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    .line 328
    :cond_2
    :goto_1
    sput-boolean v9, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 329
    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    if-eqz v9, :cond_8

    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v2, v20, v2

    :goto_2
    add-long v15, v4, v2

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_9

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 331
    :goto_3
    if-eqz v2, :cond_a

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    sput-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    .line 336
    :cond_3
    :goto_4
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    .line 338
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v13

    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 340
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v14

    .line 341
    :goto_5
    if-lez v13, :cond_c

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

    .line 347
    :goto_6
    const/4 v7, 0x0

    .line 348
    const/4 v8, 0x0

    .line 349
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v5

    .line 350
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_11

    if-eqz v5, :cond_11

    .line 351
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 352
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 353
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v6

    .line 355
    sget-object v8, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v8, :cond_d

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 356
    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 \u00b7 \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v6, "Rest done \u00b7 \u25b6 continue"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 361
    :goto_7
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v2, :cond_f

    const/4 v9, 0x1

    .line 362
    :goto_8
    if-nez v9, :cond_10

    const/4 v2, 0x1

    move v3, v2

    .line 363
    :goto_9
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v7, v0

    .line 364
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v2

    iget v8, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    move v2, v9

    move-object v5, v4

    .line 386
    :goto_a
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

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "|"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-lez v8, :cond_1c

    div-int/lit8 v4, v7, 0x5

    :goto_b
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 387
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    move v9, v4

    .line 388
    :goto_c
    if-nez p0, :cond_4

    if-nez v9, :cond_4

    sget-wide v18, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    sub-long v18, v20, v18

    const-wide/16 v22, 0x4e20

    cmp-long v4, v18, v22

    if-ltz v4, :cond_5

    .line 389
    :cond_4
    sput-object v11, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 390
    sput-wide v20, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    .line 391
    const/16 v4, 0x32

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->musicInfo(ZZILjava/lang/String;Ljava/lang/String;II)[B

    move-result-object v3

    invoke-interface {v10, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 395
    :cond_5
    if-nez p0, :cond_6

    if-eqz v9, :cond_1e

    :cond_6
    const/16 v19, 0x1

    :goto_d
    move-object v10, v5

    move-object v11, v6

    move v12, v2

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-static/range {v10 .. v21}, Lcom/isaigu/gymapp/wearable/BandRemote;->sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V

    goto/16 :goto_0

    .line 325
    :cond_7
    if-nez v9, :cond_2

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v2, :cond_2

    .line 326
    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v4, v20, v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    goto/16 :goto_1

    .line 329
    :cond_8
    const-wide/16 v2, 0x0

    goto/16 :goto_2

    .line 330
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 333
    :cond_a
    sget-boolean v3, Lcom/isaigu/gymapp/wearable/BandRemote;->aiWasRunning:Z

    if-eqz v3, :cond_3

    .line 334
    const-string v3, "ai"

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->aiElapsedS:J

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->onSessionEnd(Ljava/lang/String;J)V

    goto/16 :goto_4

    .line 340
    :cond_b
    const/16 v14, 0xaa

    goto/16 :goto_5

    .line 341
    :cond_c
    const-string v2, "XEMS"

    move-object v4, v2

    goto/16 :goto_6

    .line 358
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u00b7 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v22

    sub-double v18, v18, v22

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/BandRemote;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 359
    const-wide/16 v18, 0x0

    cmpl-double v2, v6, v18

    if-lez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :goto_e
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_7

    :cond_e
    const-string v2, ""

    goto :goto_e

    .line 361
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 362
    :cond_10
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_9

    .line 365
    :cond_11
    if-nez v9, :cond_12

    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-lez v2, :cond_16

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-nez v2, :cond_16

    .line 366
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v2

    .line 368
    :goto_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v11, "Training "

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 369
    const-wide/16 v18, 0x0

    cmpl-double v6, v2, v18

    if-lez v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " \u00b7 "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :goto_10
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 371
    if-nez v9, :cond_15

    const/4 v2, 0x1

    move v3, v2

    :goto_11
    move v2, v9

    move-object v5, v4

    .line 372
    goto/16 :goto_a

    .line 366
    :cond_13
    const-wide/16 v2, 0x0

    goto :goto_f

    .line 369
    :cond_14
    const-string v2, ""

    goto :goto_10

    .line 371
    :cond_15
    const/4 v2, 0x0

    move v3, v2

    goto :goto_11

    .line 372
    :cond_16
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 373
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v5

    .line 374
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 375
    :goto_12
    if-lez v13, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XEMS \u266b \u00b7 "

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

    .line 376
    :goto_13
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v9, 0x1

    .line 377
    :goto_14
    if-nez v9, :cond_1a

    const/4 v2, 0x1

    move v3, v2

    .line 378
    :goto_15
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v2

    div-int/lit16 v7, v2, 0x3e8

    .line 379
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v2

    div-int/lit16 v8, v2, 0x3e8

    move v2, v9

    move-object v6, v4

    .line 380
    goto/16 :goto_a

    .line 374
    :cond_17
    const-string v5, "XEMS"

    goto :goto_12

    .line 375
    :cond_18
    const-string v2, "XEMS \u266b"

    move-object v4, v2

    goto :goto_13

    .line 376
    :cond_19
    const/4 v9, 0x0

    goto :goto_14

    .line 377
    :cond_1a
    const/4 v2, 0x0

    move v3, v2

    goto :goto_15

    .line 382
    :cond_1b
    const-string v2, "\u0413\u043e\u0442\u043e\u0432 \u00b7 \u25b6 \u0441\u0442\u0430\u0440\u0442"

    const-string v3, "Ready \u00b7 \u25b6 start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 383
    const/4 v2, 0x0

    .line 384
    const/4 v3, 0x1

    move-object v5, v4

    goto/16 :goto_a

    .line 386
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 387
    :cond_1d
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_c

    .line 395
    :cond_1e
    const/16 v19, 0x0

    goto/16 :goto_d
.end method

.method private static sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJIIZJ)V
    .locals 20

    .prologue
    .line 485
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isLinked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v9

    .line 489
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_8

    if-eqz v9, :cond_8

    const/4 v2, 0x1

    move v5, v2

    .line 490
    :goto_1
    if-eqz v5, :cond_9

    const-string v2, "ai"

    move-object v8, v2

    .line 491
    :goto_2
    if-eqz v5, :cond_d

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v2

    move-wide v6, v2

    .line 492
    :goto_3
    if-eqz v5, :cond_f

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_f

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    .line 493
    :goto_4
    const-string v3, ""

    .line 494
    if-eqz v2, :cond_10

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    if-nez v4, :cond_10

    .line 495
    const-string v3, "long"

    .line 499
    :cond_2
    :goto_5
    sput-object v8, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 500
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 503
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 504
    const-string v4, "t"

    const-string v13, "state"

    invoke-virtual {v12, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    const-string v4, "v"

    const/4 v13, 0x2

    invoke-virtual {v12, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 506
    const-string v4, "mode"

    invoke-virtual {v12, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string v4, "hr"

    const/4 v13, 0x0

    move/from16 v0, p3

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v12, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 508
    const-string v13, "z"

    if-lez p3, :cond_11

    invoke-static/range {p3 .. p4}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v4

    :goto_6
    invoke-virtual {v12, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 509
    const-string v4, "lim"

    move/from16 v0, p4

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    const-string v4, "title"

    if-nez v5, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    move-object/from16 p0, p1

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string v4, "sub"

    if-nez v5, :cond_5

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    const-string p1, ""

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string v4, "kcal"

    const-wide/16 v14, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v12, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 513
    const-string v4, "run"

    move/from16 v0, p2

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 514
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 515
    const-string v7, "plus"

    if-eqz v5, :cond_12

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v4

    :goto_7
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 516
    const-string v7, "minus"

    if-eqz v5, :cond_15

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v4

    :goto_8
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 517
    const-string v7, "dbl"

    if-eqz v5, :cond_18

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    :goto_9
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 518
    const-string v4, "can"

    invoke-virtual {v12, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v6, "dbl"

    if-eqz v5, :cond_19

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    :goto_a
    invoke-virtual {v12, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 520
    const-string v4, "vib"

    invoke-virtual {v12, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    if-eqz v5, :cond_1f

    .line 524
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 525
    const-string v4, "st"

    if-eqz v2, :cond_1a

    const-string v2, "ready"

    :goto_b
    invoke-virtual {v12, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 528
    const-string v4, "ph"

    iget-object v5, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    const-string v4, "pi"

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v5

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 530
    const-string v4, "pd"

    iget v5, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 531
    const-string v4, "pl"

    const-wide/16 v6, 0x0

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v14, v2

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v12, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 532
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v2, :cond_7

    .line 533
    const-string v2, "rl"

    const-wide/16 v4, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v12, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 535
    :cond_7
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 536
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 537
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 538
    iget v6, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 539
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 613
    :catch_0
    move-exception v2

    .line 614
    const-string v3, "applink"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :cond_8
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_1

    .line 490
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v2

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "manual"

    move-object v8, v2

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "music"

    move-object v8, v2

    goto/16 :goto_2

    :cond_c
    const-string v2, "idle"

    move-object v8, v2

    goto/16 :goto_2

    .line 491
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v2

    move-wide v6, v2

    goto/16 :goto_3

    :cond_e
    const-wide/16 v2, 0x0

    move-wide v6, v2

    goto/16 :goto_3

    .line 492
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 496
    :cond_10
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 497
    const-string v3, "short"

    goto/16 :goto_5

    .line 508
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 515
    :cond_12
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    const/4 v4, 0x1

    goto/16 :goto_7

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 516
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    const/4 v4, 0x1

    goto/16 :goto_8

    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 517
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 519
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 525
    :cond_1a
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v2, :cond_1b

    const-string v2, "rest"

    goto/16 :goto_b

    .line 526
    :cond_1b
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v2, :cond_1c

    const-string v2, "run"

    goto/16 :goto_b

    :cond_1c
    const-string v2, "pause"

    goto/16 :goto_b

    .line 541
    :cond_1d
    const-string v2, "pds"

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string v2, "pns"

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    const-string v2, "u"

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 544
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 545
    const-string v4, "tot"

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v5

    iget v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-wide v6, v2

    .line 555
    :goto_d
    const-string v2, "el"

    invoke-virtual {v12, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 558
    const-wide/32 v2, 0x2bf20

    invoke-static {v10, v11, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v9

    .line 559
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 560
    const/4 v2, 0x0

    move v5, v2

    :goto_e
    const/16 v2, 0x1e

    if-ge v5, v2, :cond_26

    .line 561
    const-wide/32 v2, 0x2bf20

    sub-long v2, v10, v2

    int-to-long v14, v5

    const-wide/16 v16, 0x1770

    mul-long v14, v14, v16

    add-long/2addr v14, v2

    .line 562
    const-wide/16 v2, 0x1770

    add-long v16, v14, v2

    .line 563
    const/4 v3, 0x0

    .line 564
    const/4 v2, 0x0

    .line 565
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_24

    .line 566
    iget-object v0, v9, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v4

    cmp-long v18, v18, v14

    if-ltz v18, :cond_1e

    iget-object v0, v9, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v4

    cmp-long v18, v18, v16

    if-gez v18, :cond_1e

    .line 567
    iget-object v0, v9, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    add-int v3, v3, v18

    .line 568
    add-int/lit8 v2, v2, 0x1

    .line 565
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 546
    :cond_1f
    const-string v2, "music"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 547
    const-string v3, "st"

    if-eqz p2, :cond_20

    const-string v2, "run"

    :goto_10
    invoke-virtual {v12, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    const-string v2, "pos"

    move/from16 v0, p7

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 549
    const-string v2, "dur"

    move/from16 v0, p8

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 550
    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    move-wide v6, v2

    goto :goto_d

    .line 547
    :cond_20
    const-string v2, "pause"

    goto :goto_10

    .line 552
    :cond_21
    const-string v3, "st"

    if-eqz p2, :cond_22

    const-string v2, "run"

    :goto_11
    invoke-virtual {v12, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    move-wide v6, v2

    goto/16 :goto_d

    .line 552
    :cond_22
    const-string v2, "idle"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "idle"

    goto :goto_11

    :cond_23
    const-string v2, "pause"

    goto :goto_11

    .line 571
    :cond_24
    if-lez v2, :cond_25

    div-int v2, v3, v2

    :goto_12
    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 560
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_e

    .line 571
    :cond_25
    const/4 v2, 0x0

    goto :goto_12

    .line 573
    :cond_26
    const-string v2, "hh"

    invoke-virtual {v12, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_27

    const-wide/16 v2, 0x5

    add-long/2addr v2, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :goto_13
    invoke-static {v10, v11, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v2

    .line 575
    const-string v3, "avg"

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v4

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    const-string v3, "max"

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v4

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 577
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v3

    .line 578
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 579
    const/4 v2, 0x1

    :goto_14
    const/4 v5, 0x5

    if-gt v2, v5, :cond_28

    .line 580
    aget-wide v6, v3, v2

    const-wide/16 v14, 0x3e8

    div-long/2addr v6, v14

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 574
    :cond_27
    const-wide/32 v2, 0x2bf20

    goto :goto_13

    .line 582
    :cond_28
    const-string v2, "zt"

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/wearable/BandRemote;->modules(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 584
    const-string v2, "mods"

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    if-eqz v2, :cond_29

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->summaryUntilMs:J

    cmp-long v2, v10, v4

    if-gez v2, :cond_29

    .line 586
    const-string v2, "sum"

    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    :cond_29
    const-string v4, "lang"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "bg"

    :goto_15
    invoke-virtual {v12, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 590
    sget-object v5, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v6, v5

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v6, :cond_2c

    aget-object v7, v5, v2

    .line 591
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 592
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 590
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 588
    :cond_2b
    const-string v2, "en"

    goto :goto_15

    .line 595
    :cond_2c
    const-string v2, "lic"

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->channels()Lorg/json/JSONArray;

    move-result-object v2

    .line 597
    const-string v5, "ch"

    invoke-virtual {v12, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    const-string v5, "ack"

    sget-object v6, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v12, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "st"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ph"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "can"

    .line 602
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dbl"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAck:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "lang"

    .line 603
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleSig(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "sum"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->summary:Lorg/json/JSONObject;

    const-string v4, "n"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    :goto_17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 604
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x1

    .line 605
    :goto_18
    if-nez p9, :cond_2d

    if-nez v2, :cond_2d

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    sub-long v4, p10, v4

    const-wide/16 v6, 0xfa0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 608
    :cond_2d
    sput-object v3, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSig:Ljava/lang/String;

    .line 609
    sput-wide p10, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    .line 610
    const-string v2, "seq"

    sget v3, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/isaigu/gymapp/wearable/BandRemote;->seq:I

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 611
    const-string v2, "boot"

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->BOOT:J

    invoke-virtual {v12, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 612
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->send(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 603
    :cond_2e
    const/4 v2, 0x0

    goto :goto_17

    .line 604
    :cond_2f
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;)V

    .line 59
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;)V

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 63
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 69
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onAppInstalled(I)V
    .locals 0

    .prologue
    .line 86
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(I)V

    .line 87
    return-void
.end method

.method public onAppMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public onMediaKey(II)V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Key;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/BandRemote$Key;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public onMusicRequest()V
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
