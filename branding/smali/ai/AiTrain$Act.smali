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
    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Act;->code:I

    .line 1261
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1265
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1266
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1267
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Act;->code:I

    packed-switch v1, :pswitch_data_58

    .line 1295
    :pswitch_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    .line 1298
    :goto_10
    return-void

    .line 1269
    :pswitch_11
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->tune(Landroid/content/Context;)V

    goto :goto_10

    .line 1272
    :pswitch_15
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->close()V

    goto :goto_10

    .line 1275
    :pswitch_19
    sput v3, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    .line 1276
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    goto :goto_10

    .line 1279
    :pswitch_1f
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiTrain;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->start(Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_10

    .line 1282
    :pswitch_27
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiTrain;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeSetup;->open(Landroid/app/Activity;)V

    goto :goto_10

    .line 1285
    :pswitch_2f
    const-string v1, "\u0421\u044a\u0441\u0442\u0430\u0432\u0438 \u043d\u043e\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0437\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442."

    const-string v2, "Write a new workout for this client."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_10

    .line 1289
    :pswitch_3c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderUserId()J

    move-result-wide v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/ai/AiProfile;->addCond(Landroid/content/Context;JLjava/util/Set;)V

    .line 1290
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->savedLearned()V

    .line 1291
    const-string v0, "\u0437\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430"

    const-string v1, "saved to the profile"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    .line 1292
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    goto :goto_10

    .line 1267
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1f
        :pswitch_3c
        :pswitch_d
        :pswitch_2f
        :pswitch_27
    .end packed-switch
.end method
