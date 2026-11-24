.class final Lcom/isaigu/gymapp/ai/AiTrain$Pick;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field final which:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Pick;->which:I

    .line 837
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 841
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 842
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Pick;->which:I

    packed-switch v0, :pswitch_data_ba

    .line 872
    :pswitch_b
    if-nez p1, :cond_b4

    .line 873
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiCoach;->clearHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 874
    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->access$402(Z)Z

    .line 880
    :cond_13
    :goto_13
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 881
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()V

    .line 882
    :goto_19
    return-void

    .line 844
    :pswitch_1a
    if-nez p1, :cond_21

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_1e
    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_13

    :cond_21
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_1e

    .line 847
    :pswitch_24
    invoke-static {v3, p1}, Lcom/isaigu/gymapp/ai/AiCoach;->experience(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)V

    goto :goto_13

    .line 850
    :pswitch_28
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 851
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 852
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v1, :cond_5e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_4f
    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 854
    :cond_51
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_13

    .line 852
    :cond_5e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_4f

    .line 857
    :pswitch_61
    if-ne p1, v1, :cond_99

    move v0, v1

    :goto_64
    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->free:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->access$002(Z)Z

    .line 858
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->free:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$000()Z

    move-result v0

    if-eqz v0, :cond_13

    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$100()Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    move-result-object v0

    if-nez v0, :cond_13

    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$200()Z

    move-result v0

    if-nez v0, :cond_13

    .line 859
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 860
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()V

    .line 861
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9b

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_8d
    const-string v3, "\u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u043d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442."

    const-string v4, "Write a new workout for this client."

    .line 862
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 861
    invoke-static {v0, v3, v2, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_19

    :cond_99
    move v0, v2

    .line 857
    goto :goto_64

    .line 861
    :cond_9b
    const/4 v0, 0x0

    goto :goto_8d

    .line 868
    :pswitch_9d
    if-nez p1, :cond_b1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_a1
    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 869
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto/16 :goto_13

    .line 868
    :cond_b1
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_a1

    .line 876
    :cond_b4
    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiTrain;->access$402(Z)Z

    goto/16 :goto_13

    .line 842
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_24
        :pswitch_28
        :pswitch_9d
        :pswitch_b
        :pswitch_61
    .end packed-switch
.end method
