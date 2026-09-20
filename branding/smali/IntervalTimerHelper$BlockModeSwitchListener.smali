.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockModeSwitchListener;
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
    name = "BlockModeSwitchListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 1198
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$002(Z)Z

    .line 1199
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$100()V

    .line 1200
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$200()V

    .line 1201
    return-void
.end method
