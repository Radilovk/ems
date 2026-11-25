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
    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 3

    .prologue
    .line 791
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$902(Z)Z

    .line 792
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 793
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 794
    const-string v0, "command"

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1702(Ljava/lang/String;)Ljava/lang/String;

    .line 796
    :cond_1a
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2

    .prologue
    .line 804
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .prologue
    .line 808
    return-void
.end method

.method public onError(I)V
    .registers 10

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 737
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1200()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 739
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_44

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/WakeListener;->serviceError(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 740
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

    .line 769
    :goto_43
    return-void

    .line 743
    :cond_44
    const/16 v0, 0x8

    if-eq p1, v0, :cond_4b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4e

    .line 744
    :cond_4b
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1500()V

    .line 746
    :cond_4e
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 748
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()I

    move-result v0

    if-nez v0, :cond_76

    if-eq p1, v4, :cond_76

    if-eq p1, v2, :cond_76

    .line 750
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

    .line 752
    :cond_76
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1002(I)I

    .line 753
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-nez v0, :cond_96

    if-ne p1, v4, :cond_96

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$900()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 755
    const-string v0, "wake"

    const-string v1, "window: not recognised"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->windowResult(Z)V

    .line 757
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->rejected()V

    .line 758
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_43

    .line 761
    :cond_96
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->windowResult(Z)V

    .line 762
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 763
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_43

    .line 766
    :cond_a0
    if-eq p1, v4, :cond_a4

    if-ne p1, v2, :cond_aa

    :cond_a4
    const-wide/16 v0, 0x96

    .line 768
    :goto_a6
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1400(J)V

    goto :goto_43

    .line 767
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
    .line 816
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 812
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 773
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1102(Z)Z

    .line 774
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1602(I)I

    .line 775
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1200()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 776
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 777
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$902(Z)Z

    .line 778
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 779
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()Ljava/lang/Runnable;

    move-result-object v3

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_40

    const-wide/16 v0, 0x1194

    :goto_35
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 781
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_43

    .line 782
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->again()V

    .line 787
    :cond_3f
    :goto_3f
    return-void

    .line 779
    :cond_40
    const-wide/16 v0, 0xbb8

    goto :goto_35

    .line 784
    :cond_43
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->ready()V

    goto :goto_3f
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 724
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1200()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 725
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    if-eqz p1, :cond_28

    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 727
    :goto_1e
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 728
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->commandHeard(Ljava/util/ArrayList;)V

    .line 733
    :goto_27
    return-void

    .line 726
    :cond_28
    const/4 v0, 0x0

    goto :goto_1e

    .line 730
    :cond_2a
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->heardFallback(Ljava/util/ArrayList;)V

    .line 731
    const-wide/16 v0, 0x96

    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1400(J)V

    goto :goto_27
.end method

.method public onRmsChanged(F)V
    .registers 2

    .prologue
    .line 800
    return-void
.end method
