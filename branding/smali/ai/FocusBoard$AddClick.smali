.class final Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AddClick"
.end annotation


# instance fields
.field private addPos:I

.field private tries:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1595
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->addPos:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1571
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1573
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 1574
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 1575
    :goto_e
    if-nez v2, :cond_14

    .line 1593
    :goto_10
    return-void

    .line 1574
    :cond_11
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_e

    .line 1578
    :cond_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1b
    if-ltz v1, :cond_50

    .line 1579
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1580
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1581
    :cond_2b
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2200(IZ)Landroid/view/View;

    .line 1582
    iput v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->addPos:I

    .line 1583
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->tries:I

    .line 1584
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1800()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1585
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1800()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_44} :catch_45

    goto :goto_10

    .line 1590
    :catch_45
    move-exception v0

    .line 1591
    const-string v1, "FocusBoard.add"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 1578
    :cond_4c
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1b

    .line 1589
    :cond_50
    :try_start_50
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e \u043c\u044f\u0441\u0442\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442."

    const-string v1, "No free slot for a client."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_5b} :catch_45

    goto :goto_10
.end method

.method public run()V
    .registers 5

    .prologue
    .line 1600
    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->addPos:I

    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->tries:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_9
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2200(IZ)Landroid/view/View;

    move-result-object v1

    .line 1601
    if-eqz v1, :cond_1d

    const-string v0, "typeButton"

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1000(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1602
    :goto_15
    if-eqz v0, :cond_1f

    .line 1603
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1611
    :goto_1a
    return-void

    .line 1600
    :cond_1b
    const/4 v0, 0x0

    goto :goto_9

    .line 1601
    :cond_1d
    const/4 v0, 0x0

    goto :goto_15

    .line 1604
    :cond_1f
    if-eqz v1, :cond_25

    .line 1605
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_1a

    .line 1606
    :cond_25
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->tries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->tries:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_39

    .line 1607
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1800()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a

    .line 1609
    :cond_39
    const-string v0, "\u041c\u044f\u0441\u0442\u043e\u0442\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442 \u043e\u0449\u0435 \u0441\u0435 \u0437\u0430\u0440\u0435\u0436\u0434\u0430 \u2014 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "The client slot is loading \u2014 try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V

    goto :goto_1a
.end method
