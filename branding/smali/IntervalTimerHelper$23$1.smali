.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23$1;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;)V
    .registers 2

    .line 1208
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23$1;->this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onName(Ljava/lang/String;)V
    .registers 3

    .line 1211
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23$1;->this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;->copy()Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v0

    .line 1212
    iput-object p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 1213
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23$1;->this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;

    iget-object p1, p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;->val$a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->upsert(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 1214
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSheets()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2200()V

    .line 1215
    return-void
.end method
