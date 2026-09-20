.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;
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
    name = "LoopsAdjustListener"
.end annotation


# instance fields
.field private final delta:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;->delta:I

    .line 926
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 930
    iget p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;->delta:I

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->adjustLoops(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$300(I)V

    .line 931
    return-void
.end method
