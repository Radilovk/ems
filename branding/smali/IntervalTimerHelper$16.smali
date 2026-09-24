.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildPresetSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1003
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_45

    .line 1004
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;->val$a:Landroid/app/Activity;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->findById(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v0

    .line 1005
    :goto_14
    if-eqz v0, :cond_47

    .line 1006
    iget-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->captureCurrentPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v0

    .line 1007
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;->val$a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->upsert(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041e\u0431\u043d\u043e\u0432\u0435\u043d\u043e: "

    const-string v3, "Updated: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toastText(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2100(Ljava/lang/String;)V

    .line 1009
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$600()V

    .line 1022
    :goto_44
    return-void

    .line 1004
    :cond_45
    const/4 v0, 0x0

    goto :goto_14

    .line 1012
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;->val$a:Landroid/app/Activity;

    const-string v1, "\u0418\u043c\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    const-string v2, "Program name"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16$1;-><init>(Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;)V

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->promptName(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2200(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V

    goto :goto_44
.end method
