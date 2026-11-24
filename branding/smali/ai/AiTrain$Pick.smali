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
    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Pick;->which:I

    .line 843
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 847
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 848
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Pick;->which:I

    packed-switch v0, :pswitch_data_b0

    .line 878
    :pswitch_b
    if-nez p1, :cond_ac

    .line 879
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiCoach;->clearHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)V

    .line 880
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    .line 886
    :cond_12
    :goto_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 887
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$000()V

    .line 888
    :goto_18
    return-void

    .line 850
    :pswitch_19
    if-nez p1, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_1d
    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_12

    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_1d

    .line 853
    :pswitch_23
    invoke-static {v3, p1}, Lcom/isaigu/gymapp/ai/AiCoach;->experience(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)V

    goto :goto_12

    .line 856
    :pswitch_27
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 857
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 858
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v1, :cond_5d

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_4e
    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 860
    :cond_50
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto :goto_12

    .line 858
    :cond_5d
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_4e

    .line 863
    :pswitch_60
    if-ne p1, v1, :cond_91

    move v0, v1

    :goto_63
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    .line 864
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_12

    .line 865
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 866
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$000()V

    .line 867
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_85
    const-string v3, "\u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u043d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442."

    const-string v4, "Write a new workout for this client."

    .line 868
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-static {v0, v3, v2, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_18

    :cond_91
    move v0, v2

    .line 863
    goto :goto_63

    .line 867
    :cond_93
    const/4 v0, 0x0

    goto :goto_85

    .line 874
    :pswitch_95
    if-nez p1, :cond_a9

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_99
    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 875
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    goto/16 :goto_12

    .line 874
    :cond_a9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_99

    .line 882
    :cond_ac
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    goto/16 :goto_12

    .line 848
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_23
        :pswitch_27
        :pswitch_95
        :pswitch_b
        :pswitch_60
    .end packed-switch
.end method
