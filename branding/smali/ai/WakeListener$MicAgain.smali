.class final Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;
.super Ljava/lang/Object;
.source "WakeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MicAgain"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 831
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->speaking()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 832
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 838
    :cond_13
    :goto_13
    return-void

    .line 835
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    if-nez v0, :cond_2a

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->ready()Z

    move-result v0

    if-eqz v0, :cond_13

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$800()Z

    move-result v0

    if-nez v0, :cond_13

    .line 836
    :cond_2a
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    goto :goto_13
.end method
