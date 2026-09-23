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

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 859
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$500(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 860
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$902(Z)Z

    .line 861
    if-eqz p1, :cond_10

    .line 862
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 863
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopListening(Landroid/content/Context;)V

    .line 865
    :cond_10
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1000(Z)V

    .line 866
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1100()V

    .line 867
    return-void
.end method
