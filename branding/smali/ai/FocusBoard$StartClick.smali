.class final Lcom/isaigu/gymapp/ai/FocusBoard$StartClick;
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
    name = "StartClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 209
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 210
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->clients()Ljava/util/List;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$000()Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 212
    :cond_14
    const-string v0, "startpaulse"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->press(Ljava/lang/String;)Z

    .line 230
    :goto_19
    return-void

    .line 215
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->targets()Ljava/util/List;

    move-result-object v2

    .line 216
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->anyRunning(Ljava/util/List;)Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$100(Ljava/util/List;)Z

    move-result v3

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 219
    :try_start_2a
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 220
    if-eqz v3, :cond_3f

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$200(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 221
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 217
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 222
    :cond_3f
    if-nez v3, :cond_3b

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->running(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$200(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 223
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->start()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_4a} :catch_4b

    goto :goto_3b

    .line 225
    :catch_4b
    move-exception v0

    .line 226
    const-string v4, "FocusBoard.start"

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 229
    :cond_52
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->later()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$300()V

    goto :goto_19
.end method
