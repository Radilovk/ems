.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$9;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildIntervalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$refresh:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 804
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$9;->val$refresh:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .line 807
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1000()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x1e

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I
    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1300(III)I

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1002(I)I

    .line 808
    const-string p1, ""

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 809
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$9;->val$refresh:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 810
    return-void
.end method
