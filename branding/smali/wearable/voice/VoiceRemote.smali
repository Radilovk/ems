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
    .line 25
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->last:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static beep(Z)V
    .registers 4

    .prologue
    .line 119
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->tone:Landroid/media/ToneGenerator;

    if-nez v0, :cond_e

    .line 120
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x46

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->tone:Landroid/media/ToneGenerator;

    .line 122
    :cond_e
    sget-object v1, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->tone:Landroid/media/ToneGenerator;

    if-eqz p0, :cond_1a

    const/16 v0, 0x1c

    :goto_14
    const/16 v2, 0x96

    invoke-virtual {v1, v0, v2}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1d

    .line 125
    :goto_19
    return-void

    .line 122
    :cond_1a
    const/16 v0, 0x19

    goto :goto_14

    .line 123
    :catch_1d
    move-exception v0

    goto :goto_19
.end method

.method public static onCommand(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 32
    if-nez p0, :cond_3

    .line 49
    :goto_2
    return-void

    .line 35
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->route(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v0, "voice"

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

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sput-object p0, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->last:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->lastMs:J

    .line 39
    if-eqz v1, :cond_47

    .line 40
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_43
    const/4 v0, 0x1

    :goto_44
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->beep(Z)V

    .line 43
    :cond_47
    if-eqz v1, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83c\udfa4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2713"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->show(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6d} :catch_6e

    goto :goto_2

    .line 46
    :catch_6e
    move-exception v0

    .line 47
    const-string v1, "VoiceRemote.onCommand"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 40
    :cond_75
    const/4 v0, 0x0

    goto :goto_44

    .line 44
    :cond_77
    :try_start_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83c\udfa4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->word(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2014 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043d\u044f\u043c\u0430 \u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v2, "no training running"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_9f} :catch_6e

    move-result-object v0

    goto :goto_6a
.end method

.method public static onNoCount()V
    .registers 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83c\udfa4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0441\u0442\u0430\u0440\u0442 \u2014 \u043f\u044a\u0440\u0432\u043e \u043a\u0430\u0436\u0438 \u201e\u0435\u0434\u043d\u043e, \u0434\u0432\u0435, \u0442\u0440\u0438\u201c"

    const-string v2, "start \u2014 say one, two, three first"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceRemote;->show(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method static route(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->voice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 54
    const-string v2, "mastogo"

    .line 99
    :cond_b
    :goto_b
    return-object v2

    .line 56
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->voice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 57
    const-string v2, "bluetens"

    goto :goto_b

    .line 59
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v3

    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v4, v5, :cond_82

    if-eqz v3, :cond_82

    .line 61
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    .line 62
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v2, v4, :cond_2f

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v4, :cond_30

    :cond_2f
    move v0, v1

    .line 63
    :cond_30
    const-string v1, "start"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 64
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v0, :cond_48

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 65
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->continueBlock()V

    .line 80
    :cond_45
    :goto_45
    const-string v2, "ai"

    goto :goto_b

    .line 66
    :cond_48
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v2, v0, :cond_45

    .line 67
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_45

    .line 69
    :cond_50
    const-string v1, "pause"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 70
    if-nez v0, :cond_45

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->togglePause()V

    goto :goto_45

    .line 73
    :cond_5e
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 74
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    goto :goto_45

    .line 75
    :cond_6a
    const-string v0, "plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->increase()V

    goto :goto_45

    .line 77
    :cond_76
    const-string v0, "minus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->reduce()V

    goto :goto_45

    .line 82
    :cond_82
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v3

    .line 84
    const-string v4, "start"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 85
    if-nez v3, :cond_96

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    move-result v3

    if-eqz v3, :cond_97

    :cond_96
    move v0, v1

    .line 99
    :cond_97
    :goto_97
    if-eqz v0, :cond_e0

    const-string v0, "suit"

    :goto_9b
    move-object v2, v0

    goto/16 :goto_b

    .line 86
    :cond_9e
    const-string v4, "pause"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 87
    if-eqz v3, :cond_ae

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    move-result v3

    if-eqz v3, :cond_97

    :cond_ae
    move v0, v1

    goto :goto_97

    .line 88
    :cond_b0
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 89
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->press(I)Z

    move-result v0

    goto :goto_97

    .line 90
    :cond_be
    const-string v0, "plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    const-string v0, "minus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    :cond_ce
    if-eqz v3, :cond_b

    .line 94
    const-string v0, "plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    move v0, v1

    :goto_d9
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->mainStep(I)V

    move v0, v1

    .line 95
    goto :goto_97

    .line 94
    :cond_de
    const/4 v0, -0x1

    goto :goto_d9

    :cond_e0
    move-object v0, v2

    .line 99
    goto :goto_9b
.end method

.method static show(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 109
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 110
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->app:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 114
    :cond_e
    :goto_e
    return-void

    .line 112
    :catch_f
    move-exception v0

    goto :goto_e
.end method
