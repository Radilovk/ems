.class final Lcom/isaigu/gymapp/wearable/PlanScreen$Tick;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 132
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$000()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$000()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_1d

    .line 137
    :cond_13
    :goto_13
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void

    .line 135
    :catch_1d
    move-exception v0

    goto :goto_13
.end method
