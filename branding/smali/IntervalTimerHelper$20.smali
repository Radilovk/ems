.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;
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

    .line 1145
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1148
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$600()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_15

    .line 1149
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;->val$a:Landroid/app/Activity;

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->findById(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 1150
    :goto_16
    if-eqz p1, :cond_45

    .line 1151
    iget-object v0, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->captureCurrentPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object p1

    .line 1152
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;->val$a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->upsert(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041e\u0431\u043d\u043e\u0432\u0435\u043d\u043e: "

    const-string v2, "Updated: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toastText(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2100(Ljava/lang/String;)V

    .line 1154
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSheets()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2200()V

    .line 1155
    return-void

    .line 1157
    :cond_45
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;->val$a:Landroid/app/Activity;

    const-string v0, "\u0418\u043c\u0435 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    const-string v1, "Program name"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20$1;-><init>(Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;)V

    const-string v2, ""

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->promptName(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V
    invoke-static {p1, v0, v2, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V

    .line 1167
    return-void
.end method
