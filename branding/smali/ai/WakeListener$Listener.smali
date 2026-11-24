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
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 2

    .prologue
    .line 622
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 623
    const-string v0, "command"

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1202(Ljava/lang/String;)Ljava/lang/String;

    .line 625
    :cond_b
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2

    .prologue
    .line 633
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .prologue
    .line 637
    return-void
.end method

.method public onError(I)V
    .registers 5

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x6

    .line 595
    const/16 v0, 0x8

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    .line 596
    :cond_9
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()V

    .line 598
    :cond_c
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 600
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1100()I

    move-result v0

    if-nez v0, :cond_34

    if-eq p1, v2, :cond_34

    if-eq p1, v1, :cond_34

    .line 602
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

    .line 604
    :cond_34
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1102(I)I

    .line 605
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    .line 611
    :goto_3d
    return-void

    .line 608
    :cond_3e
    if-eq p1, v2, :cond_42

    if-ne p1, v1, :cond_48

    :cond_42
    const-wide/16 v0, 0x96

    .line 610
    :goto_44
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$900(J)V

    goto :goto_3d

    .line 609
    :cond_48
    const/16 v0, 0x9

    if-ne p1, v0, :cond_4f

    const-wide/16 v0, 0xfa0

    goto :goto_44

    :cond_4f
    const-wide/16 v0, 0x4b0

    goto :goto_44
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 645
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 641
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 615
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-nez v0, :cond_f

    .line 616
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 618
    :cond_f
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 584
    if-eqz p1, :cond_12

    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 585
    :goto_8
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 586
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->commandHeard(Ljava/util/ArrayList;)V

    .line 591
    :goto_11
    return-void

    .line 584
    :cond_12
    const/4 v0, 0x0

    goto :goto_8

    .line 588
    :cond_14
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->heardFallback(Ljava/util/ArrayList;)V

    .line 589
    const-wide/16 v0, 0x96

    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->access$900(J)V

    goto :goto_11
.end method

.method public onRmsChanged(F)V
    .registers 2

    .prologue
    .line 629
    return-void
.end method
