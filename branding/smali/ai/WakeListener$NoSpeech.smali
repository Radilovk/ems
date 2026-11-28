.class final Lcom/isaigu/gymapp/ai/WakeListener$NoSpeech;
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
    name = "NoSpeech"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 885
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700()Z

    move-result v0

    if-eqz v0, :cond_22

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1000()Z

    move-result v0

    if-nez v0, :cond_22

    .line 886
    const-string v0, "wake"

    const-string v1, "nothing said in the window: closed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->windowResult(Z)V

    .line 888
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1102(I)I

    .line 889
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 890
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    .line 892
    :cond_22
    return-void
.end method
