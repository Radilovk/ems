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

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    .line 395
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 396
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 400
    const-string v0, "click.master"

    const-string v1, "button tapped"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-eqz p1, :cond_b

    move-object v1, p1

    goto :goto_d

    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    :goto_d
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 403
    if-nez v1, :cond_20

    .line 404
    const-string v1, "no activity"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v1, 0x0

    const v2, 0x7f0d010b

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;I)V

    .line 406
    return-void

    .line 408
    :cond_20
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 409
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v2

    .line 410
    if-nez v2, :cond_37

    .line 411
    const-string v2, "no train item"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const v2, 0x7f0d011a

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;I)V

    .line 413
    return-void

    .line 415
    :cond_37
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_3b

    .line 422
    goto :goto_50

    .line 416
    :catchall_3b
    move-exception v1

    .line 417
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    if-eqz p1, :cond_42

    goto :goto_44

    :cond_42
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    :goto_44
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 419
    if-eqz p1, :cond_50

    .line 420
    const v0, 0x7f0d0113

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;I)V

    .line 423
    :cond_50
    :goto_50
    return-void
.end method
