.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$21;
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
.field final synthetic val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 2

    .line 1175
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$21;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1178
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1179
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$21;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyPreset(Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 1180
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$21;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object p1, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 1181
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->closeSub()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1600()V

    .line 1182
    return-void
.end method
