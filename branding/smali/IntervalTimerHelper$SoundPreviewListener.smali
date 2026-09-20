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

    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1284
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1300()I

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1102(I)I

    .line 1285
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1100()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1b

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1400()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 1286
    const p1, 0x7f0d0133

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1500(I)V

    .line 1287
    return-void

    .line 1289
    :cond_1b
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1600()V

    .line 1290
    return-void
.end method
