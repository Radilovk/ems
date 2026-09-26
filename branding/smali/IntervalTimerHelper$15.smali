.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$15;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->fillQuickLoops(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$n:I

.field final synthetic val$refresh:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ILjava/lang/Runnable;)V
    .registers 3

    .line 988
    iput p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$15;->val$n:I

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$15;->val$refresh:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 991
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 992
    iget p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$15;->val$n:I

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1002(I)I

    .line 993
    const-string p1, ""

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 994
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$15;->val$refresh:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 995
    return-void
.end method
