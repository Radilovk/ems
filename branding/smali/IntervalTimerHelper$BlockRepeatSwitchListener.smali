.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockRepeatSwitchListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockRepeatSwitchListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1544
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$902(Z)Z

    .line 1545
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1000()V

    .line 1546
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1100()V

    .line 1547
    return-void
.end method
