.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$14;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 874
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$14;->val$time:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .prologue
    .line 877
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2000()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    const/16 v1, 0x3c

    const/16 v2, 0x1518

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1600(III)I

    move-result v0

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2002(I)I

    .line 878
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$14;->val$time:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2000()I

    move-result v1

    int-to-long v2, v1

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u043c\u0438\u043d : \u0441\u0435\u043a"

    const-string v3, "min : sec"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-void
.end method
