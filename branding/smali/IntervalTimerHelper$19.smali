.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildBlockSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$time:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)V
    .registers 2

    .line 1078
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;->val$time:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .line 1081
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2000()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    const/16 v0, 0x3c

    const/16 v1, 0x1518

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I
    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1300(III)I

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2002(I)I

    .line 1082
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;->val$time:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2000()I

    move-result v0

    int-to-long v0, v0

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    return-void
.end method
