.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$3;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .line 732
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$502(Z)Z

    .line 733
    const-string p1, ""

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 734
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$700()V

    .line 735
    return-void
.end method
