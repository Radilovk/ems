.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditDoneRunnable;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockEditDoneRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 1620
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$600()V

    .line 1621
    return-void
.end method
