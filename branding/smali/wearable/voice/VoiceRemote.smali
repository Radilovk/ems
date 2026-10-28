.class public final Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;
.super Ljava/lang/Object;
.source "VoiceRemote.java"


# static fields
.field public static last:Ljava/lang/String;

.field public static lastMs:J

.field static tone:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->last:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static beep(Z)V
    .registers 4

    .prologue
    .line 100
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->tone:Landroid/media/ToneGenerator;

    if-nez v0, :cond_e

    .line 101
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x46

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->tone:Landroid/media/ToneGenerator;

    .line 103
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->tone:Landroid/media/ToneGenerator;

    if-eqz p0, :cond_1a

    const/16 v0, 0x1c

    :goto_14
    const/16 v2, 0x96

    invoke-virtual {v1, v0, v2}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1d

    .line 106
    :goto_19
    return-void

    .line 103
    :cond_1a
    const/16 v0, 0x19

    goto :goto_14

    .line 104
    :catch_1d
    move-exception v0

    goto :goto_19
.end method

.method public static onCommand(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 31
    if-nez p0, :cond_3

    .line 44
    :cond_2
    :goto_2
    return-void

    .line 34
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->route(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "voice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2192 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-eqz v0, :cond_2

    .line 37
    sput-object p0, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->last:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->lastMs:J

    .line 39
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_43
    const/4 v0, 0x1

    :goto_44
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->beep(Z)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_47} :catch_48

    goto :goto_2

    .line 41
    :catch_48
    move-exception v0

    .line 42
    const-string v1, "VoiceRemote.onCommand"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 39
    :cond_4f
    const/4 v0, 0x0

    goto :goto_44
.end method

.method static route(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->voice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 49
    const-string v2, "mastogo"

    .line 94
    :cond_b
    :goto_b
    return-object v2

    .line 51
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->voice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 52
    const-string v2, "bluetens"

    goto :goto_b

    .line 54
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v3

    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v4, v5, :cond_82

    if-eqz v3, :cond_82

    .line 56
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    .line 57
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v4, :cond_2f

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v4, :cond_30

    :cond_2f
    move v0, v1

    .line 58
    :cond_30
    const-string v1, "start"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 59
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v0, :cond_48

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    .line 75
    :cond_45
    :goto_45
    const-string v2, "ai"

    goto :goto_b

    .line 61
    :cond_48
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v0, :cond_45

    .line 62
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_45

    .line 64
    :cond_50
    const-string v1, "pause"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 65
    if-nez v0, :cond_45

    .line 66
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_45

    .line 68
    :cond_5e
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 69
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    goto :goto_45

    .line 70
    :cond_6a
    const-string v0, "plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    goto :goto_45

    .line 72
    :cond_76
    const-string v0, "minus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    goto :goto_45

    .line 77
    :cond_82
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v3

    .line 79
    const-string v4, "start"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 80
    if-nez v3, :cond_96

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    move-result v3

    if-eqz v3, :cond_97

    :cond_96
    move v0, v1

    .line 94
    :cond_97
    :goto_97
    if-eqz v0, :cond_e0

    const-string v0, "suit"

    :goto_9b
    move-object v2, v0

    goto/16 :goto_b

    .line 81
    :cond_9e
    const-string v4, "pause"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 82
    if-eqz v3, :cond_ae

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    move-result v3

    if-eqz v3, :cond_97

    :cond_ae
    move v0, v1

    goto :goto_97

    .line 83
    :cond_b0
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 84
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    move-result v0

    goto :goto_97

    .line 85
    :cond_be
    const-string v0, "plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    const-string v0, "minus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    :cond_ce
    if-eqz v3, :cond_b

    .line 89
    const-string v0, "plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    move v0, v1

    :goto_d9
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    move v0, v1

    .line 90
    goto :goto_97

    .line 89
    :cond_de
    const/4 v0, -0x1

    goto :goto_d9

    :cond_e0
    move-object v0, v2

    .line 94
    goto :goto_9b
.end method
