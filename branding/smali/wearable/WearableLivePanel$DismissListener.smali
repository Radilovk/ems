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

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V
    .registers 2

    .line 331
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$DismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 335
    # getter for: Lcom/isaigu/gymapp/wearable/WearableLivePanel;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->access$600()Landroid/os/Handler;

    move-result-object p1

    # getter for: Lcom/isaigu/gymapp/wearable/WearableLivePanel;->refreshTask:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->access$800()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    # invokes: Lcom/isaigu/gymapp/wearable/WearableLivePanel;->clearRefs()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->access$900()V

    .line 337
    return-void
.end method
