.class Lcom/isaigu/gymapp/ai/AiUi$11;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenRest(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/content/Context;

.field final synthetic val$actions:Landroid/widget/LinearLayout;

.field final synthetic val$bpm:Landroid/widget/TextView;

.field final synthetic val$configured:Z

.field final synthetic val$detail:Landroid/widget/TextView;

.field final synthetic val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

.field final synthetic val$self:Z

.field final synthetic val$status:Landroid/widget/TextView;

.field final synthetic val$timeLeft:Landroid/widget/TextView;


# direct methods
.method constructor <init>(ZLandroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$configured:Z

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$actions:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$a:Landroid/content/Context;

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$bpm:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$status:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$detail:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$timeLeft:Landroid/widget/TextView;

    iput-boolean p9, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$self:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 799
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v4

    .line 800
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    .line 801
    if-nez v0, :cond_240

    if-eqz v4, :cond_240

    .line 802
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginRestHr()V

    .line 803
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    move-object v3, v0

    .line 805
    :goto_16
    if-nez v3, :cond_ae

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$configured:Z

    if-eqz v0, :cond_aa

    const-string v0, "noband"

    .line 806
    :goto_1e
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 807
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 808
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 809
    if-nez v3, :cond_b8

    .line 810
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$configured:Z

    if-eqz v0, :cond_57

    .line 811
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$a:Landroid/content/Context;

    const-string v5, "\u0421\u0432\u044a\u0440\u0436\u0438 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v6, "Reconnect"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$600(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 812
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$11$1;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$11$1;-><init>(Lcom/isaigu/gymapp/ai/AiUi$11;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 834
    :cond_57
    :goto_57
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v0

    .line 835
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$bpm:Landroid/widget/TextView;

    if-lez v0, :cond_df

    if-eqz v4, :cond_df

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_65
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    if-nez v3, :cond_10c

    .line 838
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 839
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$configured:Z

    if-nez v0, :cond_e2

    .line 840
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$status:Landroid/widget/TextView;

    const-string v3, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u0441\u0434\u0432\u043e\u0435\u043d\u0430"

    const-string v4, "Band not paired"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$detail:Landroid/widget/TextView;

    const-string v3, "AI \u043d\u0435 \u0442\u0440\u044a\u0433\u0432\u0430 \u0431\u0435\u0437 \u043f\u0443\u043b\u0441. \u0412\u044a\u0432\u0435\u0434\u0438 MAC \u0438 \u043a\u043b\u044e\u0447\u0430 \u0432\u0435\u0434\u043d\u044a\u0436 \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430."

    const-string v4, "AI does not start without a pulse. Enter the MAC and key once in Settings \u2192 Band."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    :goto_8e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$timeLeft:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :goto_95
    if-eqz v1, :cond_a9

    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$700()I

    move-result v0

    if-ne v0, v2, :cond_a9

    .line 893
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$800()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$ToPlan;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiUi$ToPlan;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 895
    :cond_a9
    return-void

    .line 805
    :cond_aa
    const-string v0, "nocfg"

    goto/16 :goto_1e

    :cond_ae
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    .line 820
    :cond_b8
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v5, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v5, :cond_57

    .line 821
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$a:Landroid/content/Context;

    const-string v5, "\u041f\u0440\u0438\u0435\u043c\u0438"

    const-string v6, "Accept"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$600(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 822
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$11$2;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$11$2;-><init>(Lcom/isaigu/gymapp/ai/AiUi$11;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_57

    .line 835
    :cond_df
    const-string v0, "--"

    goto :goto_65

    .line 844
    :cond_e2
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$status:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandLinkUp()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 845
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v4, "Connecting to the band\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    :goto_f2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$detail:Landroid/widget/TextView;

    const-string v3, "\u0421\u043b\u043e\u0436\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430. \u0411\u0435\u0437 \u043f\u0443\u043b\u0441 AI \u043d\u0435 \u0442\u0440\u044a\u0433\u0432\u0430."

    const-string v4, "Put the band on the wrist. AI does not start without a pulse."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8e

    .line 846
    :cond_103
    const-string v0, "\u0427\u0430\u043a\u0430\u043c \u043f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v4, "Waiting for band HR"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f2

    .line 852
    :cond_10c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v6

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 853
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$timeLeft:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    .line 855
    sget-object v4, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v4, :cond_1c3

    .line 857
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$status:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0413\u043e\u0442\u043e\u0432\u043e \u00b7 "

    const-string v6, "Done \u00b7 "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v6, "bpm"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$timeLeft:Landroid/widget/TextView;

    const-string v4, "\u2713"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    const-string v0, ""

    .line 860
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1a8

    .line 861
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$self:Z

    if-eqz v0, :cond_19f

    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u0441\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u0430 \u0441\u0435\u0441\u0438\u044f \u043d\u0435 \u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0430."

    const-string v3, "Resting HR \u2265 100 \u2014 self session not allowed."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    :goto_18e
    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$self:Z

    if-eqz v3, :cond_23d

    .line 872
    :goto_192
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$detail:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1ba

    :goto_19a
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_95

    .line 863
    :cond_19f
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0441\u0430\u043c\u043e \u0430\u043a\u043e \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442 \u043f\u0440\u0435\u0446\u0435\u043d\u0438."

    const-string v3, "Resting HR \u2265 100 \u2014 continue only on the trainer\'s judgement."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18e

    .line 868
    :cond_1a8
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v1

    const/16 v3, 0x28

    if-ge v1, v3, :cond_23d

    .line 869
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 < 40 \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0435 \u043d\u043e\u0440\u043c\u0430 \u043f\u0440\u0438 \u0441\u043f\u043e\u0440\u0442\u0438\u0441\u0442\u0438."

    const-string v1, "Resting HR < 40 \u2014 may be normal for athletes."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_192

    .line 873
    :cond_1ba
    const-string v0, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435. \u0421\u043b\u0435\u0434\u0432\u0430 \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v4, "Stable measurement. The plan is next."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19a

    .line 874
    :cond_1c3
    sget-object v4, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v4, :cond_1e3

    .line 875
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$status:Landroid/widget/TextView;

    const-string v3, "\u041d\u0435\u0441\u0442\u0430\u0431\u0438\u043b\u0435\u043d \u043f\u0443\u043b\u0441"

    const-string v4, "Unstable HR"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$detail:Landroid/widget/TextView;

    const-string v3, "\u0420\u0430\u0437\u0441\u0435\u0439\u0432\u0430\u043d\u0435\u0442\u043e \u043e\u0441\u0442\u0430\u0432\u0430 \u043d\u0430\u0434 3 \u0443\u0434/\u043c\u0438\u043d. \u041f\u0440\u0438\u0435\u043c\u0438 \u0438\u043b\u0438 \u0438\u0437\u0447\u0430\u043a\u0430\u0439 \u043e\u0449\u0435."

    const-string v4, "Spread stays above 3 bpm. Accept or wait longer."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_95

    .line 878
    :cond_1e3
    sget-object v4, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v4, :cond_203

    .line 879
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$status:Landroid/widget/TextView;

    const-string v3, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0437\u0430\u043c\u043b\u044a\u043a\u043d\u0430"

    const-string v4, "Band went quiet"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$detail:Landroid/widget/TextView;

    const-string v3, "\u0422\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0435 \u0441\u043f\u0440\u044f\u043d, \u0434\u043e\u043a\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u044a\u0440\u043d\u0435."

    const-string v4, "Timer paused until HR returns."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_95

    .line 882
    :cond_203
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getReason()Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    move-result-object v0

    .line 883
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$status:Landroid/widget/TextView;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->DRIFT:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    if-ne v0, v4, :cond_227

    .line 884
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u043e\u0449\u0435 \u0441\u043f\u0430\u0434\u0430 \u2014 \u043e\u0441\u0442\u0430\u043d\u0438 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v4, "HR still settling \u2014 stay at rest"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    :goto_215
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$11;->val$detail:Landroid/widget/TextView;

    const-string v3, "\u0411\u0435\u0437 \u0433\u043e\u0432\u043e\u0440\u0435\u043d\u0435 \u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435. \u0412\u0440\u0435\u043c\u0435\u0442\u043e (10\u201345 \u0441) \u0437\u0430\u0432\u0438\u0441\u0438 \u043e\u0442 \u0442\u043e\u0432\u0430 \u043a\u043e\u043b\u043a\u043e \u0441\u0442\u0430\u0431\u0438\u043b\u0435\u043d \u0435 \u043f\u0443\u043b\u0441\u044a\u0442."

    const-string v4, "No talking or moving. The time (10\u201345 s) depends on how steady the pulse is."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_95

    .line 885
    :cond_227
    sget-object v4, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->NOISY:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    if-ne v0, v4, :cond_234

    .line 886
    const-string v0, "\u041d\u0435\u0441\u043f\u043e\u043a\u043e\u0435\u043d \u0441\u0438\u0433\u043d\u0430\u043b \u2014 \u043e\u0449\u0435 \u043c\u0430\u043b\u043a\u043e"

    const-string v4, "Noisy signal \u2014 a little longer"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_215

    .line 887
    :cond_234
    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043c \u043f\u0443\u043b\u0441\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439\u2026"

    const-string v4, "Measuring the resting HR\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_215

    :cond_23d
    move v1, v2

    goto/16 :goto_192

    :cond_240
    move-object v3, v0

    goto/16 :goto_16
.end method
