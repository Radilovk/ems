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
    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 3

    .prologue
    .line 1090
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1002(Z)Z

    .line 1091
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1400()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1092
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1093
    const-string v0, "command"

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    :cond_1a
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2

    .prologue
    .line 1103
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .prologue
    .line 1107
    return-void
.end method

.method public onError(I)V
    .registers 10

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 1036
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1037
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1400()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1038
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_44

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1200()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/WakeListener;->serviceError(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->giveUpBackground(Ljava/lang/String;)V

    .line 1068
    :goto_43
    return-void

    .line 1042
    :cond_44
    const/16 v0, 0x8

    if-eq p1, v0, :cond_4b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4e

    .line 1043
    :cond_4b
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1600()V

    .line 1045
    :cond_4e
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1047
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100()I

    move-result v0

    if-nez v0, :cond_76

    if-eq p1, v4, :cond_76

    if-eq p1, v2, :cond_76

    .line 1049
    const-string v0, "wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_76
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1102(I)I

    .line 1052
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-nez v0, :cond_96

    if-ne p1, v4, :cond_96

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1054
    const-string v0, "wake"

    const-string v1, "window: not recognised"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->windowResult(Z)V

    .line 1056
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->rejected()V

    .line 1057
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_43

    .line 1060
    :cond_96
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->windowResult(Z)V

    .line 1061
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 1062
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_43

    .line 1065
    :cond_a0
    if-eq p1, v4, :cond_a4

    if-ne p1, v2, :cond_aa

    :cond_a4
    const-wide/16 v0, 0x96

    .line 1067
    :goto_a6
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1500(J)V

    goto :goto_43

    .line 1066
    :cond_aa
    const/16 v0, 0x9

    if-ne p1, v0, :cond_b1

    const-wide/16 v0, 0xfa0

    goto :goto_a6

    :cond_b1
    const-wide/16 v0, 0x4b0

    goto :goto_a6
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 1115
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 1111
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1072
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1202(Z)Z

    .line 1073
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1702(I)I

    .line 1074
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1075
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1076
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1002(Z)Z

    .line 1077
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1400()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1078
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1400()Ljava/lang/Runnable;

    move-result-object v3

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_40

    const-wide/16 v0, 0x1194

    :goto_35
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1080
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_43

    .line 1081
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->again()V

    .line 1086
    :cond_3f
    :goto_3f
    return-void

    .line 1078
    :cond_40
    const-wide/16 v0, 0xbb8

    goto :goto_35

    .line 1083
    :cond_43
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->ready()V

    goto :goto_3f
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1023
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1024
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1400()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1025
    if-eqz p1, :cond_28

    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1026
    :goto_1e
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1027
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->commandHeard(Ljava/util/ArrayList;)V

    .line 1032
    :goto_27
    return-void

    .line 1025
    :cond_28
    const/4 v0, 0x0

    goto :goto_1e

    .line 1029
    :cond_2a
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->heardFallback(Ljava/util/ArrayList;)V

    .line 1030
    const-wide/16 v0, 0x96

    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1500(J)V

    goto :goto_27
.end method

.method public onRmsChanged(F)V
    .registers 2

    .prologue
    .line 1099
    return-void
.end method
