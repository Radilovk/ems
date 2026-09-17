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

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_has_activity

    const v0, 0x7f0d010b

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    return-void

    :cond_has_activity
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

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->start(Landroid/app/Activity;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    return-void
.end method
