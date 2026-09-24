.class final Lcom/isaigu/gymapp/wearable/WearableLivePanel$RefreshTask;
.super Ljava/lang/Object;
.source "WearableLivePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableLivePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefreshTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V
    .registers 2

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$RefreshTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 285
    # getter for: Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->access$500()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_7

    .line 290
    :goto_6
    return-void

    .line 288
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->refresh()V

    .line 289
    # getter for: Lcom/isaigu/gymapp/wearable/WearableLivePanel;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->access$600()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method
