.class public final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;,
        Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateStatusRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECT:Ljava/lang/String; = "com.mc.xiaomi.connectToBand"

.field public static final ACTION_HR_DISABLE:Ljava/lang/String; = "com.mc.xiaomi.taskerHeartDisable"

.field public static final ACTION_HR_ENABLE:Ljava/lang/String; = "com.mc.xiaomi.taskerHeartEnable"

.field private static final AUTO_REDUCE_COOLDOWN_MS:J = 0x2710L

.field static final HR_LABEL_ID:I = 0x7f090296

.field public static final NOTIFY_PACKAGE:Ljava/lang/String; = "com.mc.xiaomi1"

.field private static final RECEIVER_EXPORTED_FLAG:I = 0x2

.field static final RIGHT_LAYOUT_ID:I = 0x7f090155

.field private static bandConnected:Z

.field private static hrLabel:Landroid/widget/TextView;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastAutoReduceMs:J

.field private static lastHr:I

.field private static mainHandler:Landroid/os/Handler;

.field private static panelRoot:Landroid/view/View;

.field private static receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

.field private static receiverRegistered:Z

.field private static sessionActive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)V
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->updateHrLabel(I)V

    return-void
.end method

.method static synthetic access$200()I
    .registers 1

    .line 27
    sget v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    return v0
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 54
    if-eqz p0, :cond_d

    if-nez p1, :cond_5

    goto :goto_d

    .line 57
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->panelRoot:Landroid/view/View;

    .line 58
    sput-object p1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 59
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->ensureHrLabel(Landroid/view/View;)V

    .line 60
    return-void

    .line 55
    :cond_d
    :goto_d
    return-void
.end method

.method private static ensureHrLabel(Landroid/view/View;)V
    .registers 5

    .line 219
    if-nez p0, :cond_3

    .line 220
    return-void

    .line 222
    :cond_3
    const v0, 0x7f090296

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 223
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_13

    .line 224
    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrLabel:Landroid/widget/TextView;

    .line 225
    return-void

    .line 227
    :cond_13
    const v1, 0x7f090155

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 228
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-nez v2, :cond_1f

    .line 229
    return-void

    .line 231
    :cond_1f
    check-cast v1, Landroid/widget/LinearLayout;

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 233
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setId(I)V

    .line 235
    const/4 p0, 0x2

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v2, p0, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 236
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    const/4 p0, -0x1

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 239
    const/4 v0, 0x4

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 240
    const-string v0, "--"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, p0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    const/4 v3, 0x1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 245
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 246
    sput-object v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrLabel:Landroid/widget/TextView;

    .line 247
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->updateHrLabel(I)V

    .line 248
    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .registers 1

    .line 269
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .line 165
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 166
    return v1

    .line 169
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 170
    if-nez v0, :cond_d

    .line 171
    return v1

    .line 173
    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 175
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_27

    .line 176
    goto :goto_2f

    .line 178
    :cond_27
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_33

    if-eqz v3, :cond_2f

    .line 179
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 183
    :cond_32
    goto :goto_34

    .line 182
    :catchall_33
    move-exception v0

    .line 184
    :goto_34
    return v1
.end method

.method private static maybeAutoReduce(I)V
    .registers 7

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v2

    if-le p0, v2, :cond_1f

    sget-wide v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastAutoReduceMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long p0, v2, v4

    if-gez p0, :cond_19

    goto :goto_1f

    .line 193
    :cond_19
    sput-wide v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastAutoReduceMs:J

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reduceStrengthOnRunningItems()V

    .line 195
    return-void

    .line 191
    :cond_1f
    :goto_1f
    return-void
.end method

.method static onBandConnected()V
    .registers 2

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 98
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateStatusRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateStatusRunnable;-><init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->postUi(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method static onBandDisconnected()V
    .registers 2

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    .line 103
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateStatusRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateStatusRunnable;-><init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->postUi(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method static onHeartRate(I)V
    .registers 2

    .line 85
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sessionActive:Z

    if-eqz v0, :cond_27

    const/16 v0, 0x28

    if-lt p0, v0, :cond_27

    const/16 v0, 0xdc

    if-le p0, v0, :cond_d

    goto :goto_27

    .line 88
    :cond_d
    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 89
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;-><init>(I)V

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->postUi(Ljava/lang/Runnable;)V

    .line 90
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_26

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 92
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->maybeAutoReduce(I)V

    .line 94
    :cond_26
    return-void

    .line 86
    :cond_27
    :goto_27
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 1

    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    if-nez v0, :cond_a

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sessionActive:Z

    .line 79
    return-void

    .line 81
    :cond_a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopSession(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private static postUi(Ljava/lang/Runnable;)V
    .registers 3

    .line 273
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    .line 276
    :cond_f
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method private static reduceStrengthOnRunningItems()V
    .registers 5

    .line 198
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 199
    return-void

    .line 201
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v0

    .line 203
    :try_start_d
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 204
    if-nez v1, :cond_16

    .line 205
    return-void

    .line 207
    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 208
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 209
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3a

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_3a

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v4, :cond_36

    .line 210
    goto :goto_3a

    .line 212
    :cond_36
    neg-int v4, v0

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->addStrenth(I)V
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_3e

    .line 207
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 215
    :cond_3d
    goto :goto_3f

    .line 214
    :catchall_3e
    move-exception v0

    .line 216
    :goto_3f
    return-void
.end method

.method private static registerReceiver(Landroid/content/Context;)V
    .registers 4

    .line 125
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_5

    .line 126
    return-void

    .line 128
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_10

    .line 129
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    .line 131
    :cond_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    const-string v1, "com.mc.xiaomi.heartRateGot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "com.mc.xiaomi.connected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "com.mc.xiaomi.disconnected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_31

    .line 136
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_36

    .line 138
    :cond_31
    sget-object v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    :goto_36
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 141
    return-void
.end method

.method private static sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    const-string p1, "com.mc.xiaomi1"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getTaskerPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 158
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    .line 159
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_1b
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method private static startSession(Landroid/content/Context;)V
    .registers 2

    .line 107
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->panelRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->ensureHrLabel(Landroid/view/View;)V

    .line 108
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->registerReceiver(Landroid/content/Context;)V

    .line 109
    const-string v0, "com.mc.xiaomi.connectToBand"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    const-string v0, "com.mc.xiaomi.taskerHeartEnable"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sessionActive:Z

    .line 112
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 113
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;-><init>(I)V

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->postUi(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method private static stopSession(Landroid/content/Context;)V
    .registers 2

    .line 117
    const-string v0, "com.mc.xiaomi.taskerHeartDisable"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendNotifyIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->unregisterReceiver(Landroid/content/Context;)V

    .line 119
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sessionActive:Z

    .line 120
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I

    .line 121
    new-instance v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;-><init>(I)V

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->postUi(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public static syncTrainingState()V
    .registers 3

    .line 63
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_25

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_25

    .line 67
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isAnyTrainingRunning()Z

    move-result v1

    .line 68
    if-eqz v1, :cond_1b

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sessionActive:Z

    if-nez v2, :cond_1b

    .line 69
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->startSession(Landroid/content/Context;)V

    goto :goto_24

    .line 70
    :cond_1b
    if-nez v1, :cond_24

    sget-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sessionActive:Z

    if-eqz v1, :cond_24

    .line 71
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopSession(Landroid/content/Context;)V

    .line 73
    :cond_24
    :goto_24
    return-void

    .line 65
    :cond_25
    :goto_25
    return-void
.end method

.method private static unregisterReceiver(Landroid/content/Context;)V
    .registers 2

    .line 144
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiver:Lcom/isaigu/gymapp/wearable/NotifyHrReceiver;

    if-nez v0, :cond_9

    goto :goto_12

    .line 148
    :cond_9
    :try_start_9
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    .line 150
    goto :goto_e

    .line 149
    :catchall_d
    move-exception p0

    .line 151
    :goto_e
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->receiverRegistered:Z

    .line 152
    return-void

    .line 145
    :cond_12
    :goto_12
    return-void
.end method

.method private static updateHrLabel(I)V
    .registers 4

    .line 251
    sget-object v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrLabel:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 252
    return-void

    .line 254
    :cond_5
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sessionActive:Z

    const v2, -0x555556

    if-nez v1, :cond_17

    .line 255
    const-string p0, "--"

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    return-void

    .line 259
    :cond_17
    const/16 v1, -0x339a

    if-lez p0, :cond_3c

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bpm"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrLabel:Landroid/widget/TextView;

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    if-eqz v0, :cond_38

    const v1, -0x9495

    :cond_38
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4c

    .line 263
    :cond_3c
    const-string p0, "\u2665 ..."

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    sget-object p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->hrLabel:Landroid/widget/TextView;

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->bandConnected:Z

    if-eqz v0, :cond_49

    const/16 v2, -0x339a

    :cond_49
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    :goto_4c
    return-void
.end method
