.class final Lcom/isaigu/gymapp/ai/WakeListener$NotReady;
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
    name = "NotReady"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1039
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->window:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$800()Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$1300()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1040
    const-string v0, "not ready in 3000 ms"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->giveUpBackground(Ljava/lang/String;)V

    .line 1042
    :cond_11
    return-void
.end method
