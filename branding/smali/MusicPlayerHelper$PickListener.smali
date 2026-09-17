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

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 373
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 374
    if-nez p1, :cond_d

    .line 375
    const p1, 0x7f0d010b

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 376
    return-void

    .line 378
    :cond_d
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 379
    if-nez v0, :cond_1b

    .line 380
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 382
    :cond_1b
    if-nez v0, :cond_24

    .line 383
    const p1, 0x7f0d011a

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 384
    return-void

    .line 386
    :cond_24
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 387
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$302(Landroid/app/Activity;)Landroid/app/Activity;

    .line 388
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingItem:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$102(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 389
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(Z)Z

    .line 390
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hideDialogForPicker()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()V

    .line 392
    :try_start_34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostFragment:Landroid/support/v4/app/Fragment;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x4255

    if-eqz v1, :cond_55

    .line 396
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostFragment:Landroid/support/v4/app/Fragment;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_58

    .line 398
    :cond_55
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_58
    .catchall {:try_start_34 .. :try_end_58} :catchall_59

    .line 404
    :goto_58
    goto :goto_67

    .line 400
    :catchall_59
    move-exception p1

    .line 401
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(Z)Z

    .line 402
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDialogAfterPick()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$700()V

    .line 403
    const p1, 0x7f0d0113

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 405
    :goto_67
    return-void
.end method
