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
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_resolve_context

    goto :cond_has_activity

    :cond_resolve_context
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_has_activity
    if-eqz v0, :cond_start

    const v1, 0x7f0d010b

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    return-void

    :cond_start
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->getMinAmount()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    const/16 v2, 0x14

    if-eqz v1, :cond_min

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v2

    :cond_min
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->getMaxAmount()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    const/16 v3, 0x50

    if-eqz v1, :cond_max

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v3

    :cond_max
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->attachManager(Landroid/app/Activity;)Z

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->start(Landroid/app/Activity;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    :catch_all
    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    return-void
.end method
