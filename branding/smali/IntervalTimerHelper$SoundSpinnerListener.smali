.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundSpinnerListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 846
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$400()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 847
    return-void

    .line 849
    :cond_7
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {p3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$502(I)I

    .line 850
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$600()V

    .line 851
    const/4 p1, 0x4

    if-ne p3, p1, :cond_1d

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$700()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 852
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolvePickerActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$800(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->launchSignalPicker(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900(Landroid/app/Activity;)V

    .line 854
    :cond_1d
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 858
    return-void
.end method
