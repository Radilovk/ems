.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;
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
    name = "ResetOverlayListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1686
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetCurrentInterval()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1500()V

    .line 1687
    return-void
.end method
