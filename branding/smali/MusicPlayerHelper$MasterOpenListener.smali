.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;
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
    name = "MasterOpenListener"
.end annotation


# instance fields
.field private final manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 3

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    .line 422
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 423
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 427
    const-string v0, "click.master"

    const-string v1, "button tapped"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    nop

    .line 430
    :try_start_8
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostFragment:Landroid/support/v4/app/Fragment;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 431
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostFragment:Landroid/support/v4/app/Fragment;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_19

    .line 430
    :cond_18
    move-object v1, v2

    .line 433
    :goto_19
    if-nez v1, :cond_25

    .line 434
    if-eqz p1, :cond_1f

    move-object v1, p1

    goto :goto_21

    :cond_1f
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    :goto_21
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 436
    :cond_25
    if-nez v1, :cond_33

    .line 437
    const-string v1, "no activity"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const v1, 0x7f0d010b

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100(Landroid/app/Activity;I)V

    .line 439
    return-void

    .line 441
    :cond_33
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 442
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 443
    if-nez v2, :cond_4a

    .line 444
    const-string v2, "no train item"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const v2, 0x7f0d011a

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100(Landroid/app/Activity;I)V

    .line 446
    return-void

    .line 448
    :cond_4a
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_4e

    .line 455
    goto :goto_63

    .line 449
    :catchall_4e
    move-exception v1

    .line 450
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    if-eqz p1, :cond_55

    goto :goto_57

    :cond_55
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    :goto_57
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 452
    if-eqz p1, :cond_63

    .line 453
    const v0, 0x7f0d0113

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100(Landroid/app/Activity;I)V

    .line 456
    :cond_63
    :goto_63
    return-void
.end method
