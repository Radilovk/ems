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
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 623
    if-nez p1, :cond_43

    :try_start_3
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 624
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_64

    new-instance v0, Ljava/util/Locale;

    const-string v3, "bg"

    const-string v4, "BG"

    invoke-direct {v0, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 625
    const/4 v2, -0x1

    if-eq v0, v2, :cond_67

    const/4 v2, -0x2

    if-eq v0, v2, :cond_67

    const/4 v0, 0x1

    :goto_27
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1202(Z)Z

    .line 626
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const v2, 0x3f866666    # 1.05f

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 627
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bestVoice()V

    .line 628
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;-><init>()V

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_43} :catch_69

    .line 633
    :cond_43
    :goto_43
    const-string v1, "wake"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "bg ok"

    :goto_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void

    .line 624
    :cond_64
    :try_start_64
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_66} :catch_69

    goto :goto_1c

    :cond_67
    move v0, v1

    .line 625
    goto :goto_27

    .line 630
    :catch_69
    move-exception v0

    .line 631
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1202(Z)Z

    goto :goto_43

    .line 633
    :cond_6e
    const-string v0, "none \u2014 tones only"

    goto :goto_58
.end method
