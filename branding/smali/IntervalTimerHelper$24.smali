.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->presetMenu(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

.field final synthetic val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 4

    .line 1219
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1222
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object p1, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1223
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 1224
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object p1, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object p1, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1225
    const-string p1, ""

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 1227
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u0418\u0437\u0442\u0440\u0438\u0442\u043e: "

    const-string v1, "Deleted: "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toastText(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2100(Ljava/lang/String;)V

    .line 1228
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSheets()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2200()V

    .line 1229
    return-void
.end method
