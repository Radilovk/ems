.class final Lcom/isaigu/gymapp/ai/WakeListener$Spoken;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "WakeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Spoken"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 519
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 526
    if-eqz p1, :cond_22

    const-string v0, "xems-listen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 527
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 528
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    :cond_22
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;->onDone(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 522
    return-void
.end method
