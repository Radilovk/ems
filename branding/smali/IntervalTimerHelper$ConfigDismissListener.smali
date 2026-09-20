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

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 536
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$502(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 537
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$602(Landroid/view/View;)Landroid/view/View;

    .line 538
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$702(Lcom/isaigu/gymapp/widget/AmountView;)Lcom/isaigu/gymapp/widget/AmountView;

    .line 539
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$802(Lcom/isaigu/gymapp/widget/AmountView;)Lcom/isaigu/gymapp/widget/AmountView;

    .line 540
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$902(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 541
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1002(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 542
    return-void
.end method
