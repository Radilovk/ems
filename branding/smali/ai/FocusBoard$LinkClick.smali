.class final Lcom/isaigu/gymapp/ai/FocusBoard$LinkClick;
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
    name = "LinkClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1469
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$200()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1470
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->state(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v1

    .line 1471
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 1472
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->retryNow(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    .line 1473
    const-string v0, "\u041e\u043f\u0438\u0442\u0432\u0430\u043c \u0434\u0430 \u0441\u0432\u044a\u0440\u0436\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u0441\u0435\u0433\u0430 \u2014 \u043e\u0441\u0442\u0430\u043d\u0438 \u043d\u0430 \u0442\u043e\u0437\u0438 \u0435\u043a\u0440\u0430\u043d."

    const-string v1, "Trying the suit now \u2014 stay on this screen."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V

    .line 1484
    :goto_19
    return-void

    .line 1475
    :cond_1a
    if-nez v1, :cond_28

    .line 1476
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d."

    const-string v1, "The suit is connected."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V

    goto :goto_19

    .line 1477
    :cond_28
    const/4 v0, 0x2

    if-ne v1, v0, :cond_37

    .line 1478
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u043e\u0442\u043d\u043e\u0432\u043e \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u25b6 \u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430 \u043e\u0442 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u0441\u043f\u0440\u044f."

    const-string v1, "The suit is back \u2014 tap \u25b6 to go on from where it stopped."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V

    goto :goto_19

    .line 1481
    :cond_37
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 \u043a\u043e\u0441\u0442\u044e\u043c\u0430. \u0412\u043a\u043b\u044e\u0447\u0438 \u0433\u043e \u2014 \u0442\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u0449\u0435 \u0433\u043e \u0441\u0432\u044a\u0440\u0436\u0435 \u0441\u0430\u043c."

    const-string v1, "No suit link. Turn the suit on \u2014 the tablet links it by itself."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V

    goto :goto_19
.end method
