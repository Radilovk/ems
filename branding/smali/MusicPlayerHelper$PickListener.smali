.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PickListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 462
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 463
    if-nez p1, :cond_d

    .line 464
    const p1, 0x7f0d010b

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 465
    return-void

    .line 467
    :cond_d
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 468
    if-nez v0, :cond_1b

    .line 469
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 471
    :cond_1b
    if-nez v0, :cond_24

    .line 472
    const p1, 0x7f0d011a

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 473
    return-void

    .line 475
    :cond_24
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 476
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(Landroid/app/Activity;)Landroid/app/Activity;

    .line 477
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$202(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 478
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$502(Z)Z

    .line 479
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hideDialogForPicker()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()V

    .line 481
    :try_start_34
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 485
    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 486
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostFragment:Landroid/support/v4/app/Fragment;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/16 v2, 0x4255

    if-eqz v0, :cond_5d

    .line 487
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostFragment:Landroid/support/v4/app/Fragment;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_60

    .line 489
    :cond_5d
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_60
    .catchall {:try_start_34 .. :try_end_60} :catchall_61

    .line 495
    :goto_60
    goto :goto_6f

    .line 491
    :catchall_61
    move-exception p1

    .line 492
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$502(Z)Z

    .line 493
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDialogAfterPick()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$700()V

    .line 494
    const p1, 0x7f0d0113

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 496
    :goto_6f
    return-void
.end method
