.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildIntervalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$bar:Landroid/widget/LinearLayout;

.field final synthetic val$interval:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field final synthetic val$loopRow:[Landroid/widget/LinearLayout;

.field final synthetic val$loops:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field final synthetic val$quickRow:[Landroid/widget/LinearLayout;

.field final synthetic val$summary:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;Lcom/isaigu/gymapp/widget/XemsUi$Stepper;Landroid/widget/TextView;Landroid/app/Activity;Landroid/widget/LinearLayout;[Landroid/widget/LinearLayout;[Landroid/widget/LinearLayout;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 729
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$interval:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$loops:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$summary:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$a:Landroid/app/Activity;

    iput-object p5, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$bar:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$quickRow:[Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$loopRow:[Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 732
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$interval:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$700()I

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

    .line 733
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$loops:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900()I

    move-result v1

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsText(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1000(I)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900()I

    move-result v2

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsUnit(I)Ljava/lang/String;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$summary:Landroid/widget/TextView;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900()I

    move-result v0

    if-lez v0, :cond_9e

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00d7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$700()I

    move-result v2

    int-to-long v2, v2

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  \u00b7  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u043e\u0431\u0449\u043e "

    const-string v3, "total "

    .line 736
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900()I

    move-result v2

    int-to-long v2, v2

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$700()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    :goto_7d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$bar:Landroid/widget/LinearLayout;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900()I

    move-result v2

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->fillTimeline(Landroid/app/Activity;Landroid/widget/LinearLayout;I)V
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1200(Landroid/app/Activity;Landroid/widget/LinearLayout;I)V

    .line 739
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$quickRow:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v6

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->fillQuickIntervals(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1300(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    .line 740
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;->val$loopRow:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v6

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->fillQuickLoops(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1400(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    .line 741
    return-void

    .line 737
    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0411\u0435\u0437 \u043a\u0440\u0430\u0439 \u2014 \u0441\u0438\u0433\u043d\u0430\u043b \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 "

    const-string v3, "Endless \u2014 a signal every "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$700()I

    move-result v2

    int-to-long v2, v2

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7d
.end method
