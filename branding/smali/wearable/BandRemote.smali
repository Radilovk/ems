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

.field private static final HISTORY_BARS:I = 0x1e

.field private static final HISTORY_MS:J = 0x2bf20L

.field private static final INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

.field private static final TICK_MS:J = 0x7d0L

.field private static final VOL:I = 0x32

.field private static final handler:Landroid/os/Handler;

.field private static lastAppMs:J

.field private static lastMode:Ljava/lang/String;

.field private static lastRestReady:Z

.field private static lastSent:Ljava/lang/String;

.field private static lastSentMs:J

.field private static running:Z

.field private static final tick:Ljava/lang/Runnable;

.field private static trainAccumMs:J

.field private static trainStartMs:J

.field private static trainWasRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandRemote$Tick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandRemote$Tick;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 307
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static handleApp(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/16 v6, 0x32

    const/4 v0, 0x0

    .line 92
    const-string v2, "t"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v3, "hello"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 94
    const-string v2, "v"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_1f

    :try_start_1b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1f
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(I)V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_c0

    .line 123
    :cond_22
    :goto_22
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void

    .line 99
    :cond_2f
    const-string v3, "cmd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 100
    const-string v2, "a"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
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

    .line 102
    const-string v3, "toggle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 103
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto :goto_22

    .line 104
    :cond_61
    const-string v3, "plus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 105
    const/4 v0, 0x4

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto :goto_22

    .line 106
    :cond_6e
    const-string v3, "minus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 107
    invoke-static {v7, v6}, Lcom/isaigu/gymapp/wearable/BandRemote;->handleKey(II)V

    goto :goto_22

    .line 108
    :cond_7a
    const-string v3, "double"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 109
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v2

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v3, v4, :cond_22

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 111
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v2

    if-nez v2, :cond_9d

    move v0, v1

    :cond_9d
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    goto :goto_22

    .line 113
    :cond_a1
    const-string v0, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 114
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v2, :cond_b6

    .line 115
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    goto/16 :goto_22

    .line 117
    :cond_b6
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto/16 :goto_22

    .line 120
    :cond_bb
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->moduleCommand(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 97
    :catch_c0
    move-exception v0

    goto/16 :goto_22
.end method

.method static handleKey(II)V
    .registers 8

    .prologue
    const/16 v4, 0x32

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 172
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 216
    :cond_f
    :goto_f
    return-void

    .line 176
    :cond_10
    if-eqz p0, :cond_14

    if-ne p0, v1, :cond_72

    :cond_14
    move v0, v2

    .line 190
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

    .line 191
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v4

    .line 192
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v3

    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v3, v5, :cond_87

    if-eqz v4, :cond_87

    move v3, v1

    .line 193
    :goto_50
    if-eqz v3, :cond_97

    .line 194
    if-nez v0, :cond_8d

    .line 195
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v2, :cond_89

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    .line 215
    :cond_65
    :goto_65
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    .line 178
    :cond_72
    const/4 v3, 0x4

    if-ne p0, v3, :cond_77

    move v0, v1

    .line 179
    goto :goto_15

    .line 180
    :cond_77
    const/4 v3, 0x3

    if-eq p0, v3, :cond_15

    .line 182
    const/4 v3, 0x5

    if-ne p0, v3, :cond_f

    .line 183
    if-le p1, v4, :cond_83

    move v0, v1

    .line 184
    :cond_80
    :goto_80
    if-nez v0, :cond_15

    goto :goto_f

    .line 183
    :cond_83
    if-lt p1, v4, :cond_80

    move v0, v2

    goto :goto_80

    :cond_87
    move v3, v2

    .line 192
    goto :goto_50

    .line 198
    :cond_89
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_65

    .line 200
    :cond_8d
    if-lez v0, :cond_93

    .line 201
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    goto :goto_65

    .line 203
    :cond_93
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    goto :goto_65

    .line 205
    :cond_97
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v3

    if-nez v3, :cond_a5

    if-nez v0, :cond_b1

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v3

    if-nez v3, :cond_b1

    .line 206
    :cond_a5
    if-nez v0, :cond_ab

    :goto_a7
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_65

    .line 207
    :cond_ab
    if-lez v0, :cond_af

    move v2, v1

    goto :goto_a7

    :cond_af
    const/4 v2, 0x2

    goto :goto_a7

    .line 208
    :cond_b1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 209
    if-nez v0, :cond_bd

    .line 210
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_65

    .line 212
    :cond_bd
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_65
.end method

.method static jsonField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 161
    if-nez p0, :cond_4

    .line 167
    :goto_3
    return-object v0

    .line 165
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

    .line 166
    :catch_f
    move-exception v1

    goto :goto_3
.end method

.method private static mmss(D)Ljava/lang/String;
    .registers 12

    .prologue
    const-wide/16 v8, 0x3c

    .line 476
    const-wide/16 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 477
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

    .line 128
    if-nez p0, :cond_6

    .line 157
    :cond_5
    :goto_5
    return-void

    .line 131
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 132
    const-string v3, "train_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 133
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_5

    .line 134
    :cond_16
    const-string v3, "train_plus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 135
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_5

    .line 136
    :cond_22
    const-string v3, "train_minus"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 137
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_5

    .line 138
    :cond_2f
    const-string v3, "train_stop"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 139
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    goto :goto_5

    .line 140
    :cond_3c
    const-string v3, "tm_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandTogglePause()V

    goto :goto_5

    .line 142
    :cond_48
    const-string v3, "mu_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    goto :goto_5

    .line 144
    :cond_54
    const-string v3, "mu_next"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 145
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_5

    .line 146
    :cond_60
    const-string v3, "mu_prev"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 147
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skipTrack(I)V

    goto :goto_5

    .line 148
    :cond_6c
    const-string v3, "mu_up"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 149
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto :goto_5

    .line 150
    :cond_78
    const-string v3, "mu_down"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 151
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->adjustCeiling(I)Z

    goto :goto_5

    .line 152
    :cond_84
    const-string v3, "hg_toggle"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 153
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 154
    :goto_94
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 155
    const-string v1, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hr module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_b7

    const-string v0, "on"

    :goto_a8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_b5
    move v0, v1

    .line 153
    goto :goto_94

    .line 155
    :cond_b7
    const-string v0, "off"

    goto :goto_a8
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

    .line 423
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 424
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 426
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 427
    const-string v5, "run"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 428
    const-string v5, "tr"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    :try_start_1e
    const-string v0, "tm"

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bandState()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_27} :catch_f8

    .line 436
    :goto_27
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 437
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v6

    .line 438
    const-string v0, "on"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 439
    const-string v7, "pm"

    if-eqz v6, :cond_105

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_105

    move v0, v1

    :goto_40
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 440
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

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v7, "title"

    if-eqz v0, :cond_10b

    :goto_5f
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string v0, "pos"

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 444
    const-string v0, "dur"

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 445
    const-string v7, "lvl"

    if-eqz v6, :cond_10f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v0

    :goto_80
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 446
    const-string v7, "ceil"

    if-eqz v6, :cond_112

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v0

    :goto_8b
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 447
    const-string v0, "mu"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v6

    .line 451
    const-string v7, "en"

    if-eqz v4, :cond_115

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_115

    move v0, v1

    :goto_a7
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 452
    const-string v0, "up"

    invoke-virtual {v5, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 453
    const-string v0, "ai"

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v4

    sget-object v7, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v4, v7, :cond_117

    :goto_b9
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 454
    if-eqz v6, :cond_f2

    .line 455
    const-string v0, "sf"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v1, v8

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 456
    const-string v0, "hold"

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isHold()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 457
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getForecast()D

    move-result-wide v0

    .line 458
    const-string v4, "fc"

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_119

    :goto_e4
    invoke-virtual {v5, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 459
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastAction()Ljava/lang/String;

    move-result-object v0

    .line 460
    const-string v1, "act"

    if-eqz v0, :cond_11f

    :goto_ef
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    :cond_f2
    const-string v0, "hg"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    return-object v3

    .line 432
    :catch_f8
    move-exception v0

    .line 433
    const-string v0, "tm"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_27

    :cond_105
    move v0, v2

    .line 439
    goto/16 :goto_40

    :cond_108
    move v0, v2

    .line 440
    goto/16 :goto_54

    .line 442
    :cond_10b
    const-string v0, ""

    goto/16 :goto_5f

    :cond_10f
    move v0, v2

    .line 445
    goto/16 :goto_80

    :cond_112
    move v0, v2

    .line 446
    goto/16 :goto_8b

    :cond_115
    move v0, v2

    .line 451
    goto :goto_a7

    :cond_117
    move v1, v2

    .line 453
    goto :goto_b9

    .line 458
    :cond_119
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v2, v0

    goto :goto_e4

    .line 460
    :cond_11f
    const-string v0, ""

    goto :goto_ef
.end method

.method private static musicOnly()Z
    .registers 1

    .prologue
    .line 219
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

.method private static phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 467
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 471
    const-string v0, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v1, "Cool-down"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    .line 468
    :pswitch_14
    const-string v0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v1, "Warm-up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 469
    :pswitch_1d
    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430"

    const-string v1, "Main"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 470
    :pswitch_26
    const-string v0, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v1, "Metabolic"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 467
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1d
        :pswitch_26
    .end packed-switch
.end method

.method static push(Z)V
    .registers 23

    .prologue
    .line 225
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v10

    .line 226
    if-eqz v10, :cond_16

    invoke-interface {v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 227
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 300
    :cond_16
    :goto_16
    return-void

    .line 230
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 231
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v9

    .line 232
    if-eqz v9, :cond_11a

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-nez v2, :cond_11a

    .line 233
    sput-wide v16, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    .line 237
    :cond_27
    :goto_27
    sput-boolean v9, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    .line 238
    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    if-eqz v9, :cond_12b

    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v2, v16, v2

    :goto_31
    add-long v14, v4, v2

    .line 240
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v12

    .line 241
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_12f

    .line 242
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v13

    .line 243
    :goto_45
    if-lez v12, :cond_133

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bpm \u00b7 Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 249
    :goto_63
    const/4 v7, 0x0

    .line 250
    const/4 v8, 0x0

    .line 251
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v5

    .line 252
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_198

    if-eqz v5, :cond_198

    .line 253
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 254
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 255
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v6

    .line 257
    sget-object v8, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v8, :cond_138

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v8

    if-eqz v8, :cond_138

    .line 258
    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430\u0442\u0430 \u0441\u0442\u0438\u0433\u0430 \u00b7 \u25b6 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v6, "Rest done \u00b7 \u25b6 continue"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 263
    :goto_92
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v2, :cond_191

    const/4 v9, 0x1

    .line 264
    :goto_97
    if-nez v9, :cond_194

    const/4 v2, 0x1

    move v3, v2

    .line 265
    :goto_9b
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v7, v0

    .line 266
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v2

    iget v8, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    move v2, v9

    move-object v5, v4

    .line 288
    :goto_aa
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

    if-lez v8, :cond_275

    div-int/lit8 v4, v7, 0x5

    :goto_d1
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 289
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_278

    const/4 v4, 0x1

    move v9, v4

    .line 290
    :goto_e3
    if-nez p0, :cond_f1

    if-nez v9, :cond_f1

    sget-wide v18, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    sub-long v18, v16, v18

    const-wide/16 v20, 0x4e20

    cmp-long v4, v18, v20

    if-ltz v4, :cond_fe

    .line 291
    :cond_f1
    sput-object v11, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 292
    sput-wide v16, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSentMs:J

    .line 293
    const/16 v4, 0x32

    invoke-static/range {v2 .. v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->musicInfo(ZZILjava/lang/String;Ljava/lang/String;II)[B

    move-result-object v3

    invoke-interface {v10, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 296
    :cond_fe
    if-nez p0, :cond_10c

    if-nez v9, :cond_10c

    sget-wide v10, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    sub-long v10, v16, v10

    const-wide/16 v18, 0xfa0

    cmp-long v3, v10, v18

    if-ltz v3, :cond_16

    .line 297
    :cond_10c
    sput-wide v16, Lcom/isaigu/gymapp/wearable/BandRemote;->lastAppMs:J

    move-object v9, v5

    move-object v10, v6

    move v11, v2

    move/from16 v16, v7

    move/from16 v17, v8

    .line 298
    invoke-static/range {v9 .. v17}, Lcom/isaigu/gymapp/wearable/BandRemote;->sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJII)V

    goto/16 :goto_16

    .line 234
    :cond_11a
    if-nez v9, :cond_27

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v2, :cond_27

    .line 235
    sget-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    sget-wide v4, Lcom/isaigu/gymapp/wearable/BandRemote;->trainStartMs:J

    sub-long v4, v16, v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainAccumMs:J

    goto/16 :goto_27

    .line 238
    :cond_12b
    const-wide/16 v2, 0x0

    goto/16 :goto_31

    .line 242
    :cond_12f
    const/16 v13, 0xaa

    goto/16 :goto_45

    .line 243
    :cond_133
    const-string v2, "XEMS"

    move-object v4, v2

    goto/16 :goto_63

    .line 260
    :cond_138
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

    move-result-wide v20

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/BandRemote;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 261
    const-wide/16 v18, 0x0

    cmpl-double v2, v6, v18

    if-lez v2, :cond_18e

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

    :goto_183
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_92

    :cond_18e
    const-string v2, ""

    goto :goto_183

    .line 263
    :cond_191
    const/4 v9, 0x0

    goto/16 :goto_97

    .line 264
    :cond_194
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_9b

    .line 267
    :cond_198
    if-nez v9, :cond_1a6

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_213

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-nez v2, :cond_213

    .line 268
    :cond_1a6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_20a

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v2

    .line 270
    :goto_1b4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    const-string v11, "Training "

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide v20, 0x408f400000000000L    # 1000.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Lcom/isaigu/gymapp/wearable/BandRemote;->mmss(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 271
    const-wide/16 v18, 0x0

    cmpl-double v6, v2, v18

    if-lez v6, :cond_20d

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

    :goto_1fa
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 273
    if-nez v9, :cond_210

    const/4 v2, 0x1

    move v3, v2

    :goto_206
    move v2, v9

    move-object v5, v4

    .line 274
    goto/16 :goto_aa

    .line 268
    :cond_20a
    const-wide/16 v2, 0x0

    goto :goto_1b4

    .line 271
    :cond_20d
    const-string v2, ""

    goto :goto_1fa

    .line 273
    :cond_210
    const/4 v2, 0x0

    move v3, v2

    goto :goto_206

    .line 274
    :cond_213
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-eqz v2, :cond_268

    .line 275
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentTitle()Ljava/lang/String;

    move-result-object v5

    .line 276
    if-eqz v5, :cond_25c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25c

    .line 277
    :goto_225
    if-lez v12, :cond_25f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XEMS \u266b \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bpm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 278
    :goto_241
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v2

    if-nez v2, :cond_263

    const/4 v9, 0x1

    .line 279
    :goto_248
    if-nez v9, :cond_265

    const/4 v2, 0x1

    move v3, v2

    .line 280
    :goto_24c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v2

    div-int/lit16 v7, v2, 0x3e8

    .line 281
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v2

    div-int/lit16 v8, v2, 0x3e8

    move v2, v9

    move-object v6, v4

    .line 282
    goto/16 :goto_aa

    .line 276
    :cond_25c
    const-string v5, "XEMS"

    goto :goto_225

    .line 277
    :cond_25f
    const-string v2, "XEMS \u266b"

    move-object v4, v2

    goto :goto_241

    .line 278
    :cond_263
    const/4 v9, 0x0

    goto :goto_248

    .line 279
    :cond_265
    const/4 v2, 0x0

    move v3, v2

    goto :goto_24c

    .line 284
    :cond_268
    const-string v2, "\u0413\u043e\u0442\u043e\u0432 \u00b7 \u25b6 \u0441\u0442\u0430\u0440\u0442"

    const-string v3, "Ready \u00b7 \u25b6 start"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 285
    const/4 v2, 0x0

    .line 286
    const/4 v3, 0x1

    move-object v5, v4

    goto/16 :goto_aa

    .line 288
    :cond_275
    const/4 v4, 0x0

    goto/16 :goto_d1

    .line 289
    :cond_278
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_e3
.end method

.method private static sendApp(Ljava/lang/String;Ljava/lang/String;ZIIJII)V
    .registers 30

    .prologue
    .line 316
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isLinked()Z

    move-result v2

    if-nez v2, :cond_7

    .line 419
    :goto_6
    return-void

    .line 319
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v9

    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v2, v3, :cond_19b

    if-eqz v9, :cond_19b

    const/4 v2, 0x1

    move v8, v2

    .line 321
    :goto_17
    if-eqz v8, :cond_19f

    const-string v2, "ai"

    move-object v5, v2

    .line 322
    :goto_1c
    if-eqz v8, :cond_1be

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v2

    move-wide v6, v2

    .line 323
    :goto_23
    if-eqz v8, :cond_1d4

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v3, :cond_1d4

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v2

    if-eqz v2, :cond_1d4

    const/4 v2, 0x1

    .line 324
    :goto_34
    const-string v3, ""

    .line 325
    if-eqz v2, :cond_1d7

    sget-boolean v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    if-nez v4, :cond_1d7

    .line 326
    const-string v3, "long"

    .line 330
    :cond_3e
    :goto_3e
    sput-object v5, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    .line 331
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->lastRestReady:Z

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 334
    :try_start_46
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 335
    const-string v4, "t"

    const-string v13, "state"

    invoke-virtual {v12, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v4, "v"

    const/4 v13, 0x2

    invoke-virtual {v12, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    const-string v4, "mode"

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v4, "hr"

    const/4 v13, 0x0

    move/from16 v0, p3

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v12, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 339
    const-string v13, "z"

    if-lez p3, :cond_1eb

    invoke-static/range {p3 .. p4}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v4

    :goto_71
    invoke-virtual {v12, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 340
    const-string v4, "lim"

    move/from16 v0, p4

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 341
    const-string v4, "title"

    if-nez v8, :cond_85

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_87

    :cond_85
    move-object/from16 p0, p1

    :cond_87
    move-object/from16 v0, p0

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v4, "sub"

    if-nez v8, :cond_96

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_98

    :cond_96
    const-string p1, ""

    :cond_98
    move-object/from16 v0, p1

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v4, "kcal"

    const-wide/16 v14, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v12, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 344
    const-string v4, "run"

    move/from16 v0, p2

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 345
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 346
    const-string v7, "plus"

    if-eqz v8, :cond_1ee

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v4

    :goto_c0
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 347
    const-string v7, "minus"

    if-eqz v8, :cond_200

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v4

    :goto_cb
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 348
    const-string v7, "dbl"

    if-eqz v8, :cond_212

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v4

    if-eqz v4, :cond_212

    const/4 v4, 0x1

    :goto_d9
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 349
    const-string v4, "can"

    invoke-virtual {v12, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v6, "dbl"

    if-eqz v8, :cond_215

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v4

    if-eqz v4, :cond_215

    const/4 v4, 0x1

    :goto_ec
    invoke-virtual {v12, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 351
    const-string v4, "vib"

    invoke-virtual {v12, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    if-eqz v8, :cond_2a4

    .line 355
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 356
    const-string v4, "st"

    if-eqz v2, :cond_218

    const-string v2, "ready"

    :goto_100
    invoke-virtual {v12, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v2

    .line 359
    const-string v4, "ph"

    iget-object v5, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    const-string v4, "pi"

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseIndex()I

    move-result v5

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    const-string v4, "pd"

    iget v5, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 362
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

    .line 363
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v2, :cond_151

    .line 364
    const-string v2, "rl"

    const-wide/16 v4, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v12, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 366
    :cond_151
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 367
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 368
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_165
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 369
    iget v6, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 370
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/BandRemote;->phaseName(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_17f
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_17f} :catch_180

    goto :goto_165

    .line 416
    :catch_180
    move-exception v2

    .line 417
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

    goto/16 :goto_6

    .line 320
    :cond_19b
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_17

    .line 321
    :cond_19f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1a9

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandRemote;->trainWasRunning:Z

    if-eqz v2, :cond_1ae

    :cond_1a9
    const-string v2, "manual"

    move-object v5, v2

    goto/16 :goto_1c

    :cond_1ae
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v2

    if-eqz v2, :cond_1b9

    const-string v2, "music"

    move-object v5, v2

    goto/16 :goto_1c

    :cond_1b9
    const-string v2, "idle"

    move-object v5, v2

    goto/16 :goto_1c

    .line 322
    :cond_1be
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    if-eqz v2, :cond_1cf

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v2

    move-wide v6, v2

    goto/16 :goto_23

    :cond_1cf
    const-wide/16 v2, 0x0

    move-wide v6, v2

    goto/16 :goto_23

    .line 323
    :cond_1d4
    const/4 v2, 0x0

    goto/16 :goto_34

    .line 327
    :cond_1d7
    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    sget-object v4, Lcom/isaigu/gymapp/wearable/BandRemote;->lastMode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3e

    .line 328
    const-string v3, "short"

    goto/16 :goto_3e

    .line 339
    :cond_1eb
    const/4 v4, 0x0

    goto/16 :goto_71

    .line 346
    :cond_1ee
    :try_start_1ee
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v4

    if-nez v4, :cond_1fa

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v4

    if-eqz v4, :cond_1fd

    :cond_1fa
    const/4 v4, 0x1

    goto/16 :goto_c0

    :cond_1fd
    const/4 v4, 0x0

    goto/16 :goto_c0

    .line 347
    :cond_200
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v4

    if-nez v4, :cond_20c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->musicOnly()Z

    move-result v4

    if-eqz v4, :cond_20f

    :cond_20c
    const/4 v4, 0x1

    goto/16 :goto_cb

    :cond_20f
    const/4 v4, 0x0

    goto/16 :goto_cb

    .line 348
    :cond_212
    const/4 v4, 0x0

    goto/16 :goto_d9

    .line 350
    :cond_215
    const/4 v4, 0x0

    goto/16 :goto_ec

    .line 356
    :cond_218
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v2, :cond_220

    const-string v2, "rest"

    goto/16 :goto_100

    .line 357
    :cond_220
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v2, :cond_228

    const-string v2, "run"

    goto/16 :goto_100

    :cond_228
    const-string v2, "pause"

    goto/16 :goto_100

    .line 372
    :cond_22c
    const-string v2, "pds"

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v2, "pns"

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v2, "u"

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 376
    const-string v4, "tot"

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v5

    iget v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-wide v6, v2

    .line 386
    :goto_25b
    const-string v2, "el"

    invoke-virtual {v12, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 389
    const-wide/32 v2, 0x2bf20

    invoke-static {v10, v11, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v8

    .line 390
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 391
    const/4 v2, 0x0

    move v5, v2

    :goto_26e
    const/16 v2, 0x1e

    if-ge v5, v2, :cond_2f7

    .line 392
    const-wide/32 v2, 0x2bf20

    sub-long v2, v10, v2

    int-to-long v14, v5

    const-wide/16 v16, 0x1770

    mul-long v14, v14, v16

    add-long/2addr v14, v2

    .line 393
    const-wide/16 v2, 0x1770

    add-long v16, v14, v2

    .line 394
    const/4 v3, 0x0

    .line 395
    const/4 v2, 0x0

    .line 396
    const/4 v4, 0x0

    :goto_284
    invoke-virtual {v8}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->size()I

    move-result v13

    if-ge v4, v13, :cond_2e9

    .line 397
    iget-object v13, v8, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v18, v13, v4

    cmp-long v13, v18, v14

    if-ltz v13, :cond_2a1

    iget-object v13, v8, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v18, v13, v4

    cmp-long v13, v18, v16

    if-gez v13, :cond_2a1

    .line 398
    iget-object v13, v8, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v13, v13, v4

    add-int/2addr v3, v13

    .line 399
    add-int/lit8 v2, v2, 0x1

    .line 396
    :cond_2a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_284

    .line 377
    :cond_2a4
    const-string v2, "music"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cc

    .line 378
    const-string v3, "st"

    if-eqz p2, :cond_2c9

    const-string v2, "run"

    :goto_2b2
    invoke-virtual {v12, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v2, "pos"

    move/from16 v0, p7

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 380
    const-string v2, "dur"

    move/from16 v0, p8

    invoke-virtual {v12, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 381
    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    move-wide v6, v2

    goto :goto_25b

    .line 378
    :cond_2c9
    const-string v2, "pause"

    goto :goto_2b2

    .line 383
    :cond_2cc
    const-string v3, "st"

    if-eqz p2, :cond_2db

    const-string v2, "run"

    :goto_2d2
    invoke-virtual {v12, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    move-wide v6, v2

    goto :goto_25b

    .line 383
    :cond_2db
    const-string v2, "idle"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const-string v2, "idle"

    goto :goto_2d2

    :cond_2e6
    const-string v2, "pause"

    goto :goto_2d2

    .line 402
    :cond_2e9
    if-lez v2, :cond_2f5

    div-int v2, v3, v2

    :goto_2ed
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 391
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_26e

    .line 402
    :cond_2f5
    const/4 v2, 0x0

    goto :goto_2ed

    .line 404
    :cond_2f7
    const-string v2, "hh"

    invoke-virtual {v12, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_338

    const-wide/16 v2, 0x5

    add-long/2addr v2, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :goto_308
    invoke-static {v10, v11, v2, v3}, Lcom/isaigu/gymapp/wearable/HrHistory;->since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    move-result-object v2

    .line 406
    const-string v3, "avg"

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->avg()I

    move-result v4

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 407
    const-string v3, "max"

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->max()I

    move-result v4

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->zoneMs(I)[J

    move-result-object v3

    .line 409
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 410
    const/4 v2, 0x1

    :goto_32a
    const/4 v5, 0x5

    if-gt v2, v5, :cond_33c

    .line 411
    aget-wide v6, v3, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_32a

    .line 405
    :cond_338
    const-wide/32 v2, 0x2bf20

    goto :goto_308

    .line 413
    :cond_33c
    const-string v2, "zt"

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v2, "mods"

    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/wearable/BandRemote;->modules(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->send(Ljava/lang/String;)Z
    :try_end_351
    .catch Ljava/lang/Throwable; {:try_start_1ee .. :try_end_351} :catch_180

    goto/16 :goto_6
.end method

.method public static start()V
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote$Listener;)V

    .line 55
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->INSTANCE:Lcom/isaigu/gymapp/wearable/BandRemote;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;)V

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->lastSent:Ljava/lang/String;

    .line 57
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    if-nez v0, :cond_1c

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 59
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_1c
    return-void
.end method

.method public static stop()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z

    .line 65
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandRemote;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onAppInstalled(I)V
    .registers 2

    .prologue
    .line 82
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(I)V

    .line 83
    return-void
.end method

.method public onAppMessage(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 88
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/BandRemote$AppMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method public onMediaKey(II)V
    .registers 5

    .prologue
    .line 77
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Key;

    invoke-direct {v1, p1, p2}, Lcom/isaigu/gymapp/wearable/BandRemote$Key;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public onMusicRequest()V
    .registers 4

    .prologue
    .line 72
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandRemote$Push;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/BandRemote$Push;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method
