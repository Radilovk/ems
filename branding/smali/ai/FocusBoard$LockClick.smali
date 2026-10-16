.class final Lcom/isaigu/gymapp/ai/FocusBoard$LockClick;
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
    name = "LockClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 506
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 507
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$000()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$002(Z)Z

    .line 508
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->RATIO:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$100()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 509
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$200()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 510
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 511
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$000()Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz v1, :cond_37

    .line 512
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->ratio(Lcom/isaigu/gymapp/train/model/TrainItem;II)F
    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$300(Lcom/isaigu/gymapp/train/model/TrainItem;II)F

    .line 513
    const-string v0, "\u0421\u044a\u043e\u0442\u043d\u043e\u0448\u0435\u043d\u0438\u0435\u0442\u043e \u0435 \u0437\u0430\u043a\u043b\u044e\u0447\u0435\u043d\u043e: 1 \u0438 2 \u0441\u0435 \u0434\u0432\u0438\u0436\u0430\u0442 \u0437\u0430\u0435\u0434\u043d\u043e."

    const-string v1, "Ratio locked: 1 and 2 move together."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V

    .line 517
    :cond_37
    :try_start_37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_focus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lock"

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->locked:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$000()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_53} :catch_5b

    .line 521
    :goto_53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->paintLock(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$500(Landroid/content/Context;)V

    .line 522
    return-void

    .line 519
    :catch_5b
    move-exception v0

    goto :goto_53
.end method
