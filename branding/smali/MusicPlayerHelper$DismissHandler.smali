.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DismissHandler;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DismissHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 487
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()Z

    move-result p1

    if-nez p1, :cond_23

    .line 488
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 489
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1102(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 490
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1200()V

    .line 491
    return-void

    .line 493
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 494
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(Landroid/app/Activity;)Landroid/app/Activity;

    .line 495
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$202(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 497
    :cond_23
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDialogRefs()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1200()V

    .line 498
    return-void
.end method
