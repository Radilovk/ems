.class Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;
.super Ljava/lang/Object;
.source "MusicSyncHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_activity

    return-void

    :cond_activity
    check-cast p1, Landroid/app/Activity;

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->getMinAmount()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v0

    const/16 v1, 0x14

    if-eqz v0, :cond_min

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v1

    :cond_min
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->getMaxAmount()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v0

    const/16 v2, 0x50

    if-eqz v0, :cond_max

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v2

    :cond_max
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->attachManager(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_has_manager

    return-void

    :cond_has_manager
    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->start(Landroid/app/Activity;II)V

    return-void
.end method
