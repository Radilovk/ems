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

    .prologue
    .line 1664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1665
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    .line 1666
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 1667
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1671
    if-eqz p1, :cond_10

    :goto_2
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1672
    if-nez v0, :cond_13

    .line 1673
    const/4 v0, 0x0

    const v1, 0x7f0d010b

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;I)V

    .line 1683
    :goto_f
    return-void

    .line 1671
    :cond_10
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    goto :goto_2

    .line 1676
    :cond_13
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 1677
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 1678
    if-nez v1, :cond_25

    .line 1679
    const v1, 0x7f0d011a

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;I)V

    goto :goto_f

    .line 1682
    :cond_25
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_f
.end method
