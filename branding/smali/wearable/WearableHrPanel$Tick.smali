.class final Lcom/isaigu/gymapp/wearable/WearableHrPanel$Tick;
.super Ljava/lang/Object;
.source "WearableHrPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableHrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 314
    :try_start_0
    # invokes: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->refresh()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$700()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 317
    goto :goto_a

    .line 315
    :catchall_4
    move-exception v0

    .line 316
    const-string v1, "WearableHrPanel.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    :goto_a
    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$200()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 319
    # getter for: Lcom/isaigu/gymapp/wearable/WearableHrPanel;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableHrPanel;->access$100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    :cond_19
    return-void
.end method
