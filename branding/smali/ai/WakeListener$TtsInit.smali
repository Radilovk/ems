.class final Lcom/isaigu/gymapp/ai/WakeListener$TtsInit;
.super Ljava/lang/Object;
.source "WakeListener.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TtsInit"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 551
    if-nez p1, :cond_34

    :try_start_3
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 552
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_55

    new-instance v0, Ljava/util/Locale;

    const-string v3, "bg"

    const-string v4, "BG"

    invoke-direct {v0, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 553
    const/4 v2, -0x1

    if-eq v0, v2, :cond_58

    const/4 v2, -0x2

    if-eq v0, v2, :cond_58

    const/4 v0, 0x1

    :goto_27
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1102(Z)Z

    .line 554
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_34} :catch_5a

    .line 559
    :cond_34
    :goto_34
    const-string v1, "wake"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "bg ok"

    :goto_49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void

    .line 552
    :cond_55
    :try_start_55
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_57} :catch_5a

    goto :goto_1c

    :cond_58
    move v0, v1

    .line 553
    goto :goto_27

    .line 556
    :catch_5a
    move-exception v0

    .line 557
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1102(Z)Z

    goto :goto_34

    .line 559
    :cond_5f
    const-string v0, "none \u2014 tones only"

    goto :goto_49
.end method
