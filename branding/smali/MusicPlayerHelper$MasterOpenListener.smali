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
    .locals 0

    .prologue
    .line 1740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1741
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    .line 1742
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 1743
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1747
    if-eqz p1, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1748
    if-nez v0, :cond_1

    .line 1749
    const/4 v0, 0x0

    const v1, 0x7f0d010b

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;I)V

    .line 1759
    :goto_1
    return-void

    .line 1747
    :cond_0
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->root:Landroid/view/View;

    goto :goto_0

    .line 1752
    :cond_1
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 1753
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 1754
    if-nez v1, :cond_2

    .line 1755
    const v1, 0x7f0d011a

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1758
    :cond_2
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_1
.end method
