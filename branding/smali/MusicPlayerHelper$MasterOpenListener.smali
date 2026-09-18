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

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    .line 402
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 403
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 407
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    :goto_5
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveClickActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 408
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->canShowOn(Landroid/app/Activity;)Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 409
    const v0, 0x7f0d010b

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200(Landroid/app/Activity;I)V

    .line 410
    return-void

    .line 412
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 413
    if-nez v0, :cond_25

    .line 414
    const v0, 0x7f0d011a

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200(Landroid/app/Activity;I)V

    .line 415
    return-void

    .line 417
    :cond_25
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 418
    return-void
.end method
