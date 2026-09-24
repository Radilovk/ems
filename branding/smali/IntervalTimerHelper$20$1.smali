.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20$1;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;)V
    .registers 2

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20$1;->this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onName(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1120
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->newId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->captureCurrentPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20$1;->this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;->val$a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->upsert(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 1122
    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e: "

    const-string v2, "Saved: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toastText(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2000(Ljava/lang/String;)V

    .line 1124
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSheets()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2100()V

    .line 1125
    return-void
.end method
