.class final Lcom/isaigu/gymapp/wearable/WearableLivePanel$DismissListener;
.super Ljava/lang/Object;
.source "WearableLivePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableLivePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DismissListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V
    .registers 2

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$DismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 327
    # getter for: Lcom/isaigu/gymapp/wearable/WearableLivePanel;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->access$600()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/wearable/WearableLivePanel;->refreshTask:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->access$800()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    # invokes: Lcom/isaigu/gymapp/wearable/WearableLivePanel;->clearRefs()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->access$900()V

    .line 329
    return-void
.end method
