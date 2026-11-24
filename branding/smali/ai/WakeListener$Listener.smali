.class final Lcom/isaigu/gymapp/ai/WakeListener$Listener;
.super Ljava/lang/Object;
.source "WakeListener.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Listener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2

    .prologue
    .line 184
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method

.method public onError(I)V
    .registers 5

    .prologue
    .line 154
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->listening:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$102(Z)Z

    .line 156
    const/4 v0, 0x7

    if-eq p1, v0, :cond_a

    const/4 v0, 0x6

    if-ne p1, v0, :cond_28

    :cond_a
    const-wide/16 v0, 0x96

    .line 158
    :goto_c
    const/16 v2, 0x8

    if-eq p1, v2, :cond_13

    const/4 v2, 0x5

    if-ne p1, v2, :cond_24

    .line 160
    :cond_13
    :try_start_13
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$300()Landroid/speech/SpeechRecognizer;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 161
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$300()Landroid/speech/SpeechRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_20} :catch_32

    .line 165
    :cond_20
    :goto_20
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer;

    .line 167
    :cond_24
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->listen(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200(J)V

    .line 168
    return-void

    .line 157
    :cond_28
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2f

    const-wide/16 v0, 0xfa0

    goto :goto_c

    :cond_2f
    const-wide/16 v0, 0x4b0

    goto :goto_c

    .line 163
    :catch_32
    move-exception v2

    goto :goto_20
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 196
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 192
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 172
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 146
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->listening:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$102(Z)Z

    .line 147
    if-eqz p1, :cond_15

    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    :goto_c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->heard(Ljava/util/ArrayList;)V

    .line 149
    const-wide/16 v0, 0x96

    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->listen(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200(J)V

    .line 150
    return-void

    .line 147
    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onRmsChanged(F)V
    .registers 2

    .prologue
    .line 180
    return-void
.end method
