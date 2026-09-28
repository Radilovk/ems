.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseOverlayListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1294
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1295
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1702(Z)Z

    .line 1296
    if-eqz v0, :cond_10

    .line 1297
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 1298
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopListening(Landroid/content/Context;)V

    .line 1300
    :cond_10
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1800(Z)V

    .line 1301
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1900()V

    .line 1302
    return-void
.end method
