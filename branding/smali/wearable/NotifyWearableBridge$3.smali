.class Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->scheduleConnectSequence(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 377
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 378
    return-void

    .line 380
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$3;->val$app:Landroid/content/Context;

    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeStart(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$300(Landroid/content/Context;)V

    .line 381
    return-void
.end method
