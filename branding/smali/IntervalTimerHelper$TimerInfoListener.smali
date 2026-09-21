.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TimerInfoListener;
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
    name = "TimerInfoListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1743
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1744
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_10

    .line 1745
    :cond_c
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$100(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p1

    .line 1746
    :goto_10
    if-nez p1, :cond_16

    .line 1747
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$100(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p1

    .line 1749
    :cond_16
    if-nez p1, :cond_19

    .line 1750
    return-void

    .line 1752
    :cond_19
    const v0, 0x7f0d0175

    const v1, 0x7f0d0176

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;II)V

    .line 1753
    return-void
.end method
