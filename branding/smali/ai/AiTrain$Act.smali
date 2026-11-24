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
    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Act;->code:I

    .line 934
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 938
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 940
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Act;->code:I

    packed-switch v1, :pswitch_data_5c

    .line 968
    :pswitch_d
    # setter for: Lcom/isaigu/gymapp/ai/AiTrain;->liveChat:Z
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiTrain;->access$102(Z)Z

    .line 969
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$000()V

    .line 972
    :goto_13
    return-void

    .line 942
    :pswitch_14
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->tune(Landroid/content/Context;)V

    goto :goto_13

    .line 945
    :pswitch_18
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->close()V

    goto :goto_13

    .line 948
    :pswitch_1c
    sput v3, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    .line 949
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$000()V

    goto :goto_13

    .line 952
    :pswitch_22
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->start(Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_13

    .line 955
    :pswitch_2a
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeSetup;->open(Landroid/app/Activity;)V

    goto :goto_13

    .line 958
    :pswitch_32
    const-string v1, "\u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u043d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442."

    const-string v2, "Write a new workout for this client."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_13

    .line 962
    :pswitch_3f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderUserId()J

    move-result-wide v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/ai/AiProfile;->addCond(Landroid/content/Context;JLjava/util/Set;)V

    .line 963
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->savedLearned()V

    .line 964
    const-string v0, "\u0437\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430"

    const-string v1, "saved to the profile"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 965
    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$000()V

    goto :goto_13

    .line 940
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_22
        :pswitch_3f
        :pswitch_d
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method
