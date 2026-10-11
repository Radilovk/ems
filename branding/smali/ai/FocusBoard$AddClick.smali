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


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1251
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->addPos:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1229
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1231
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 1232
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 1233
    :goto_e
    if-nez v2, :cond_14

    .line 1249
    :goto_10
    return-void

    .line 1232
    :cond_11
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_e

    .line 1236
    :cond_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1b
    if-ltz v1, :cond_46

    .line 1237
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 1238
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1239
    :cond_2b
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1300(IZ)Landroid/view/View;

    .line 1240
    iput v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->addPos:I

    .line 1241
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3a} :catch_3b

    goto :goto_10

    .line 1246
    :catch_3b
    move-exception v0

    .line 1247
    const-string v1, "FocusBoard.add"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 1236
    :cond_42
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1b

    .line 1245
    :cond_46
    :try_start_46
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e \u043c\u044f\u0441\u0442\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442."

    const-string v1, "No free slot for a client."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_51} :catch_3b

    goto :goto_10
.end method

.method public run()V
    .registers 3

    .prologue
    .line 1255
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$AddClick;->addPos:I

    const/4 v1, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->rowAt(IZ)Landroid/view/View;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1300(IZ)Landroid/view/View;

    move-result-object v1

    .line 1256
    if-eqz v1, :cond_15

    const-string v0, "typeButton"

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1400(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1257
    :goto_f
    if-eqz v0, :cond_17

    .line 1258
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1262
    :cond_14
    :goto_14
    return-void

    .line 1256
    :cond_15
    const/4 v0, 0x0

    goto :goto_f

    .line 1259
    :cond_17
    if-eqz v1, :cond_14

    .line 1260
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_14
.end method
