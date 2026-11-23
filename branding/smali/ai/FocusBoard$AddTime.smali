.class final Lcom/isaigu/gymapp/ai/FocusBoard$AddTime;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AddTime"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .prologue
    .line 1119
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1120
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ProgramLive;->canAddTime(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1121
    const-string v0, "\u0412\u0440\u0435\u043c\u0435\u0442\u043e \u043d\u0430 \u0410\u0432\u0442\u043e / AI \u0441\u0435 \u0432\u043e\u0434\u0438 \u043e\u0442 \u043f\u043b\u0430\u043d\u0430 \u0438\u043c."

    const-string v1, "Auto / AI keep their own plan\'s time."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$600(Ljava/lang/String;)V

    .line 1130
    :goto_15
    return-void

    .line 1125
    :cond_16
    mul-int/lit8 v1, p1, 0x3c

    :try_start_18
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsAddTime(I)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1f

    .line 1129
    :goto_1b
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->later()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$300()V

    goto :goto_15

    .line 1126
    :catch_1f
    move-exception v0

    .line 1127
    const-string v1, "FocusBoard.addTime"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method
