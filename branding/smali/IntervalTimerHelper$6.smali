.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$6;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 779
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$6;->val$refresh:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 5

    .prologue
    .line 782
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800()I

    move-result v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->stepFor(I)I
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1200(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x258

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1300(III)I

    move-result v0

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$802(I)I

    .line 783
    const-string v0, ""

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 784
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$6;->val$refresh:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 785
    return-void
.end method
