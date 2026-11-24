.class final Lcom/isaigu/gymapp/ai/AiTrain$Act;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Act"
.end annotation


# instance fields
.field final code:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Act;->code:I

    .line 859
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 863
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 864
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 865
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$Act;->code:I

    packed-switch v0, :pswitch_data_10a

    .line 930
    :pswitch_e
    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiTrain;->access$902(Z)Z

    .line 931
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()V

    .line 934
    :goto_14
    return-void

    .line 867
    :pswitch_15
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 868
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v2

    if-nez v2, :cond_31

    .line 869
    :cond_25
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 871
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 872
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 873
    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->view:I
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiTrain;->access$502(I)I

    .line 874
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$600()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_59

    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$600()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 875
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$600()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 877
    :cond_59
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$700()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$700()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 878
    :goto_67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_74

    .line 879
    invoke-static {v1, v0, v4, v4}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_14

    .line 877
    :cond_71
    const-string v0, ""

    goto :goto_67

    .line 881
    :cond_74
    const-string v0, "\u041d\u0430\u0433\u043b\u0430\u0441\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442 \u0438 \u0434\u0430\u0439 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438\u0442\u0435."

    const-string v2, "Tune the session for this client and give the advice."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_14

    .line 887
    :pswitch_80
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->close()V

    goto :goto_14

    .line 890
    :pswitch_84
    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->view:I
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiTrain;->access$502(I)I

    .line 891
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()V

    goto :goto_14

    .line 894
    :pswitch_8b
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 895
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->free:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$000()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 896
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$100()Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    move-result-object v2

    if-nez v2, :cond_a8

    .line 897
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u2726 \u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v2, "First \u2726 write the workout."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->access$800(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 901
    :cond_a8
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$100()Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiWorkout;->toWorkout(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v2

    .line 902
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 903
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/MapRunner;->arm(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/Workout;)Ljava/lang/String;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_c2

    .line 905
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiTrain;->access$800(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 907
    :cond_c2
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->go()V

    goto/16 :goto_14

    .line 911
    :cond_c7
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v2

    if-nez v2, :cond_d0

    .line 912
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 914
    :cond_d0
    if-eqz v0, :cond_dd

    :goto_d2
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->startDirect(Landroid/content/Context;)V

    .line 915
    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiTrain;->access$902(Z)Z

    .line 916
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()V

    goto/16 :goto_14

    :cond_dd
    move-object v0, v1

    .line 914
    goto :goto_d2

    .line 920
    :pswitch_df
    const-string v0, "\u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u043d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442."

    const-string v2, "Write a new workout for this client."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_14

    .line 924
    :pswitch_ec
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderUserId()J

    move-result-wide v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/isaigu/gymapp/ai/AiProfile;->addCond(Landroid/content/Context;JLjava/util/Set;)V

    .line 925
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->savedLearned()V

    .line 926
    const-string v0, "\u0437\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430"

    const-string v1, "saved to the profile"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 927
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$300()V

    goto/16 :goto_14

    .line 865
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_80
        :pswitch_84
        :pswitch_8b
        :pswitch_ec
        :pswitch_e
        :pswitch_df
    .end packed-switch
.end method
