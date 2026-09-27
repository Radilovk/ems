.class final Lcom/isaigu/gymapp/wearable/PlanScreen$SyncClick;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SyncClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 716
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 717
    const-string v0, "poke"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->sync(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    .line 718
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$Runnable0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$Runnable0;-><init>()V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    return-void
.end method
