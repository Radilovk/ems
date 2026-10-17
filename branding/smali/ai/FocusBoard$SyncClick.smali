.class final Lcom/isaigu/gymapp/ai/FocusBoard$SyncClick;
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
    name = "SyncClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 528
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 529
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$200()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 530
    if-nez v0, :cond_a

    .line 542
    :goto_9
    return-void

    .line 533
    :cond_a
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->syncSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 534
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u0438\u044f \u0438\u043c\u043f\u0443\u043b\u0441 \u0441 \u223f (\u043d\u0435 \u0438 \u0432 \u041c\u0443\u0441\u043a\u0443\u043b\u0438)."

    const-string v1, "Turn the second impulse on with \u223f (not in Muscle)."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V

    goto :goto_9

    .line 538
    :cond_1c
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$100()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const/4 v0, 0x2

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->pick:I
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$602(I)I

    .line 540
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->later()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$700()V

    .line 541
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto :goto_9
.end method
