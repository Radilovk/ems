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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1252
    iput p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;->val$snd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1255
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1256
    iget v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;->val$snd:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    .line 1257
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->closeSub()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1500()V

    .line 1258
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startRingtonePick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2400(Landroid/view/View;)V

    .line 1270
    :goto_e
    return-void

    .line 1261
    :cond_f
    iget v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;->val$snd:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    .line 1262
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->closeSub()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1500()V

    .line 1263
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2500(Landroid/view/View;)V

    goto :goto_e

    .line 1266
    :cond_1c
    iget v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;->val$snd:I

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2602(I)I

    .line 1267
    const-string v0, ""

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 1268
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2700()V

    .line 1269
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSheets()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2100()V

    goto :goto_e
.end method
