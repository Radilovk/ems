.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildSignalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$snd:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1292
    iput p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;->val$snd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1295
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1296
    iget v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;->val$snd:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    .line 1297
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->closeSub()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1600()V

    .line 1298
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startRingtonePick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2500(Landroid/view/View;)V

    .line 1299
    return-void

    .line 1301
    :cond_f
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    .line 1302
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->closeSub()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1600()V

    .line 1303
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2600(Landroid/view/View;)V

    .line 1304
    return-void

    .line 1306
    :cond_1a
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2702(I)I

    .line 1307
    const-string p1, ""

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 1308
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2800()V

    .line 1309
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSheets()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2200()V

    .line 1310
    return-void
.end method
