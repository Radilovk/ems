.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConfigDismissListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 865
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 866
    return-void

    .line 868
    :cond_7
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$902(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 869
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1102(Landroid/view/View;)Landroid/view/View;

    .line 870
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1202(Lcom/isaigu/gymapp/widget/AmountView;)Lcom/isaigu/gymapp/widget/AmountView;

    .line 871
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1302(Lcom/isaigu/gymapp/widget/AmountView;)Lcom/isaigu/gymapp/widget/AmountView;

    .line 872
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1402(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 873
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1502(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 874
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1602(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 875
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundOffBtn:Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1702(Landroid/view/View;)Landroid/view/View;

    .line 876
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeepBtn:Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1802(Landroid/view/View;)Landroid/view/View;

    .line 877
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundChimeBtn:Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1902(Landroid/view/View;)Landroid/view/View;

    .line 878
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBellBtn:Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2002(Landroid/view/View;)Landroid/view/View;

    .line 879
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundCustomBtn:Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2102(Landroid/view/View;)Landroid/view/View;

    .line 880
    return-void
.end method
