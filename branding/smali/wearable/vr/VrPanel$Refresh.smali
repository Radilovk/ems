.class final Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;
.super Ljava/lang/Object;
.source "VrPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Refresh"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 342
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->refresh:Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$000()Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;

    move-result-object v0

    if-eq v0, p0, :cond_7

    .line 352
    :goto_6
    return-void

    .line 346
    :cond_7
    :try_start_7
    # invokes: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->refreshNow()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$100()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_14

    .line 351
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 347
    :catch_14
    move-exception v0

    .line 348
    const-string v1, "VrPanel.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method
