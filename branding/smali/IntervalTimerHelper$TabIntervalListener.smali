.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabIntervalListener;
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
    name = "TabIntervalListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1573
    const/4 p1, 0x0

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectModeTab(Z)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$000(Z)V

    .line 1574
    return-void
.end method
