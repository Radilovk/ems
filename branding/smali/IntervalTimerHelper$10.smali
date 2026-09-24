.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$10;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->fillQuickIntervals(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$refresh:Ljava/lang/Runnable;

.field final synthetic val$s:I


# direct methods
.method constructor <init>(ILjava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 769
    iput p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$10;->val$s:I

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$10;->val$refresh:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 772
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 773
    iget v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$10;->val$s:I

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$702(I)I

    .line 774
    const-string v0, ""

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$10;->val$refresh:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 776
    return-void
.end method
