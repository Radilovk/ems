.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildBlockSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1032
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1035
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;->val$a:Landroid/app/Activity;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1700()Ljava/util/ArrayList;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1800()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16$1;-><init>(Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;)V

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/Runnable;)V

    .line 1043
    return-void
.end method
