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

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 926
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 927
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1102(Z)Z

    .line 928
    if-eqz p1, :cond_10

    .line 929
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 930
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->stopListening(Landroid/content/Context;)V

    .line 932
    :cond_10
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1200(Z)V

    .line 933
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$1300()V

    .line 934
    return-void
.end method
