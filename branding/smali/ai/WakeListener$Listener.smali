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
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 2

    .prologue
    .line 715
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 716
    const-string v0, "command"

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1402(Ljava/lang/String;)Ljava/lang/String;

    .line 718
    :cond_b
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2

    .prologue
    .line 726
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .prologue
    .line 730
    return-void
.end method

.method public onError(I)V
    .registers 6

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x6

    .line 675
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_36

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$900()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/WakeListener;->serviceError(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 677
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

    .line 697
    :goto_35
    return-void

    .line 680
    :cond_36
    const/16 v0, 0x8

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x5

    if-ne p1, v0, :cond_40

    .line 681
    :cond_3d
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1200()V

    .line 683
    :cond_40
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 685
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()I

    move-result v0

    if-nez v0, :cond_68

    if-eq p1, v3, :cond_68

    if-eq p1, v2, :cond_68

    .line 687
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

    .line 689
    :cond_68
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1302(I)I

    .line 690
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 691
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_35

    .line 694
    :cond_75
    if-eq p1, v3, :cond_79

    if-ne p1, v2, :cond_7f

    :cond_79
    const-wide/16 v0, 0x96

    .line 696
    :goto_7b
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100(J)V

    goto :goto_35

    .line 695
    :cond_7f
    const/16 v0, 0x9

    if-ne p1, v0, :cond_86

    const-wide/16 v0, 0xfa0

    goto :goto_7b

    :cond_86
    const-wide/16 v0, 0x4b0

    goto :goto_7b
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 738
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 734
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 701
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$902(Z)Z

    .line 702
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 703
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 705
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_1d

    .line 706
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->again()V

    .line 711
    :cond_1c
    :goto_1c
    return-void

    .line 708
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->ready()V

    goto :goto_1c
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 663
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 664
    if-eqz p1, :cond_1d

    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 665
    :goto_13
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 666
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->commandHeard(Ljava/util/ArrayList;)V

    .line 671
    :goto_1c
    return-void

    .line 664
    :cond_1d
    const/4 v0, 0x0

    goto :goto_13

    .line 668
    :cond_1f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->heardFallback(Ljava/util/ArrayList;)V

    .line 669
    const-wide/16 v0, 0x96

    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100(J)V

    goto :goto_1c
.end method

.method public onRmsChanged(F)V
    .registers 2

    .prologue
    .line 722
    return-void
.end method
