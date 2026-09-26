.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$7;
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

    .line 787
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$7;->val$refresh:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .line 790
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800()I

    move-result p1

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800()I

    move-result v0

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->stepFor(I)I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1200(I)I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x5

    const/16 v1, 0x258

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I
    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1300(III)I

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$802(I)I

    .line 791
    const-string p1, ""

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 792
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$7;->val$refresh:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 793
    return-void
.end method
