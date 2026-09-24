.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19$1;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;)V
    .registers 2

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19$1;->this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onName(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19$1;->this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;->copy()Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v0

    .line 1027
    iput-object p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 1028
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19$1;->this$0:Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;->val$a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->upsert(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 1029
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$600()V

    .line 1030
    return-void
.end method
