.class final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$ConnectAfterPermission;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConnectAfterPermission"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_9

    .line 247
    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->performConnect(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$700(Landroid/content/Context;)V

    .line 249
    :cond_9
    return-void
.end method
