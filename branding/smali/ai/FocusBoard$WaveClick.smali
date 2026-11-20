.class final Lcom/isaigu/gymapp/ai/FocusBoard$WaveClick;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WaveClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 671
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 672
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 673
    if-nez v0, :cond_a

    .line 679
    :goto_9
    return-void

    .line 676
    :cond_a
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->toggle(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V

    .line 677
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->later()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$300()V

    .line 678
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_9
.end method
