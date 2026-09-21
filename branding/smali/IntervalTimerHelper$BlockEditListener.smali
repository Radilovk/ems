.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockEditListener"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1783
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditListener;->activity:Landroid/app/Activity;

    .line 1784
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1788
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditListener;->activity:Landroid/app/Activity;

    .line 1790
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    .line 1791
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditDoneRunnable;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditDoneRunnable;-><init>()V

    .line 1788
    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/Runnable;)V

    .line 1793
    return-void
.end method
