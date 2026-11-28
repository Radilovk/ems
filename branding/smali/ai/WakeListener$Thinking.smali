.class final Lcom/isaigu/gymapp/ai/WakeListener$Thinking;
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
    name = "Thinking"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 714
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v0

    if-eqz v0, :cond_14

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$800()Z

    move-result v0

    if-nez v0, :cond_14

    .line 715
    const-string v0, "listening"

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->access$902(Ljava/lang/String;)Ljava/lang/String;

    .line 716
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 718
    :cond_14
    return-void
.end method
