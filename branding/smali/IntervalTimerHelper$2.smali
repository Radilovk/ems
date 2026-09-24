.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showSheet(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 648
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 653
    :goto_7
    return-void

    .line 651
    :cond_8
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$000(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->saveSettings(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$200(Landroid/app/Activity;)V

    .line 652
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$302(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    goto :goto_7
.end method
