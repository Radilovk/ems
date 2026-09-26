.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;
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

    .line 1204
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1207
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;->val$s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object p1, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1208
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;->val$a:Landroid/app/Activity;

    const-string v0, "\u041d\u043e\u0432\u043e \u0438\u043c\u0435"

    const-string v1, "New name"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23$1;-><init>(Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;)V

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->promptName(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V
    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2300(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V

    .line 1217
    return-void
.end method
