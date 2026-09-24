.class Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$22;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$22;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$22;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$22;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$22;->val$p:Lcom/isaigu/gymapp/dialog/TimerPreset;

    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->presetMenu(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2400(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 1188
    const/4 v0, 0x1

    return v0
.end method
