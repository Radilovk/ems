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

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 825
    # getter for: Lcom/isaigu/gymapp/wearable/BandRemote;->running:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->access$100()Z

    move-result v0

    if-nez v0, :cond_7

    .line 826
    return-void

    .line 829
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->push(Z)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    .line 832
    goto :goto_12

    .line 830
    :catchall_c
    move-exception v0

    .line 831
    const-string v1, "BandRemote.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    :goto_12
    # getter for: Lcom/isaigu/gymapp/wearable/BandRemote;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandRemote;->access$200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 834
    return-void
.end method
