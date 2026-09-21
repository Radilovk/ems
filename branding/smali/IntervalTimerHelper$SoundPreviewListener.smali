.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundPreviewListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1874
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1900()I

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1802(I)I

    .line 1875
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1800()I

    move-result p1

    const/4 v0, 0x7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_16

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1800()I

    move-result p1

    if-ne p1, v0, :cond_2d

    .line 1876
    :cond_16
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2000()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2d

    .line 1877
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1800()I

    move-result p1

    if-ne p1, v0, :cond_26

    const p1, 0x7f0d0156

    goto :goto_29

    :cond_26
    const p1, 0x7f0d0133

    :goto_29
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2100(I)V

    .line 1878
    return-void

    .line 1880
    :cond_2d
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2200()V

    .line 1881
    return-void
.end method
