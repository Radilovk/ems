.class Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->scheduleGadgetbridgeSequence(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$app:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 398
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->listeningActive:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    .line 399
    return-void

    .line 401
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;->val$app:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$2;->val$action:Ljava/lang/String;

    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->sendGadgetbridgeCommand(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$800(Landroid/content/Context;Ljava/lang/String;)V

    .line 402
    return-void
.end method
