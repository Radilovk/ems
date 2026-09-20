.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabBlockListener;
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
    name = "TabBlockListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1580
    const/4 p1, 0x1

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectModeTab(Z)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$000(Z)V

    .line 1581
    return-void
.end method
