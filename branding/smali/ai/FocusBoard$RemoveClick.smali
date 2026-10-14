.class final Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;
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
    name = "RemoveClick"
.end annotation


# instance fields
.field private final item:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .prologue
    .line 1627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1628
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1629
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42600000    # 56.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1633
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1634
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->activity(Landroid/content/Context;)Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2300(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 1635
    if-nez v1, :cond_13

    .line 1654
    :goto_12
    return-void

    .line 1638
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->name(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2400(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0414\u0430 \u043c\u0430\u0445\u043d\u0430 \u043b\u0438 "

    const-string v4, "Remove "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b2

    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043e\u0442 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430?"

    const-string v3, " from the training?"

    .line 1640
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1641
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2500(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043c\u0443 \u0441\u043f\u0438\u0440\u0430 \u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0441\u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0432\u0430."

    const-string v3, "Their training stops and the suit disconnects."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1643
    :goto_54
    const/16 v3, 0x230

    .line 1639
    invoke-static {v1, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 1645
    const-string v2, "\u041e\u0441\u0442\u0430\u0432\u0438"

    const-string v3, "Keep"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 1646
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1647
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v8, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1648
    const-string v2, "\u041c\u0430\u0445\u043d\u0438"

    const-string v3, "Remove"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 1649
    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveClick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/ai/FocusBoard$RemoveAnswer;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1650
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v8, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1651
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1652
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1653
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_12

    .line 1639
    :cond_b2
    const-string v0, "\u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v3, "the client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 1643
    :cond_bc
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0441\u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0432\u0430; \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u043e\u0441\u0442\u0430\u0432\u0430 \u0432 \u0441\u043f\u0438\u0441\u044a\u043a\u0430 \u0441 \u043a\u043b\u0438\u0435\u043d\u0442\u0438."

    const-string v3, "The suit disconnects; the client stays in the client list."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_54
.end method
