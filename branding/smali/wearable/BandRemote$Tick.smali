.class final Lcom/isaigu/gymapp/wearable/BandRemote$Tick;
.super Ljava/lang/Object;
.source "BandRemote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandRemote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 568
    # getter for: Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 577
    :goto_6
    return-void

    .line 572
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->push(Z)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_15

    .line 576
    :goto_b
    # getter for: Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->access$100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 573
    :catch_15
    move-exception v0

    .line 574
    const-string v1, "BandRemote.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method
