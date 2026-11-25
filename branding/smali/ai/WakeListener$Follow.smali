.class final Lcom/isaigu/gymapp/ai/WakeListener$Follow;
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
    name = "Follow"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 813
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1700()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 814
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v0

    if-eqz v0, :cond_17

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 820
    :cond_17
    :goto_17
    return-void

    .line 817
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 818
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    .line 819
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->openWindow()V

    goto :goto_17
.end method
