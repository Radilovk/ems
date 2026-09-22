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

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 689
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$400(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 690
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$702(Z)Z

    .line 691
    if-eqz p1, :cond_d

    .line 692
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 694
    :cond_d
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$800(Z)V

    .line 695
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$900()V

    .line 696
    return-void
.end method
