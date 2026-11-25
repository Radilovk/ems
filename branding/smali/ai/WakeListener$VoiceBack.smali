.class final Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;
.super Ljava/lang/Object;
.source "WakeListener.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VoiceBack"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 859
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOKEN:Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;->onDone(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public sayLocal(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .prologue
    const/16 v3, 0x190

    const/4 v0, 0x0

    .line 843
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()V

    .line 844
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_12

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1500()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 845
    :cond_12
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 846
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOKEN:Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    invoke-virtual {v0, p2}, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;->onDone(Ljava/lang/String;)V

    .line 855
    :goto_1c
    return-void

    .line 850
    :cond_1d
    :try_start_1d
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1500()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2e

    const/4 v2, 0x0

    const/16 v3, 0x190

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 851
    :cond_2e
    if-eqz p3, :cond_3c

    :goto_30
    const/4 v2, 0x0

    .line 850
    invoke-virtual {v1, p1, v0, v2, p2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_34} :catch_35

    goto :goto_1c

    .line 852
    :catch_35
    move-exception v0

    .line 853
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOKEN:Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    invoke-virtual {v0, p2}, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;->onDone(Ljava/lang/String;)V

    goto :goto_1c

    .line 851
    :cond_3c
    const/4 v0, 0x1

    goto :goto_30
.end method
