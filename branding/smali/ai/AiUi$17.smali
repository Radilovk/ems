.class Lcom/isaigu/gymapp/ai/AiUi$17;
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
.method constructor <init>(ZLandroid/widget/LinearLayout;Landroid/content/Context;ZLandroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 808
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$configured:Z

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$actions:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$self:Z

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$bpm:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iput-object p7, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$status:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$detail:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$timeLeft:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    .line 811
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v4

    .line 812
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    .line 813
    if-nez v0, :cond_288

    if-eqz v4, :cond_288

    .line 814
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginRestHr()V

    .line 815
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    move-object v3, v0

    .line 817
    :goto_17
    if-nez v3, :cond_fa

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$configured:Z

    if-eqz v0, :cond_f6

    const-string v0, "noband"

    .line 818
    :goto_1f
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 819
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 820
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 821
    if-nez v3, :cond_106

    .line 822
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$configured:Z

    if-eqz v0, :cond_58

    .line 823
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    const-string v5, "\u0421\u0432\u044a\u0440\u0436\u0438 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v6, "Reconnect"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$800(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 824
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$17$1;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$17$1;-><init>(Lcom/isaigu/gymapp/ai/AiUi$17;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 832
    :cond_58
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$self:Z

    if-nez v0, :cond_8c

    .line 833
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    const-string v5, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v6, "Without band"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$800(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 834
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$17$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiUi$17$2;-><init>(Lcom/isaigu/gymapp/ai/AiUi$17;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 843
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$configured:Z

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_85
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 844
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    :cond_8c
    :goto_8c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v0

    .line 861
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$bpm:Landroid/widget/TextView;

    if-lez v0, :cond_12d

    if-eqz v4, :cond_12d

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_9a
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    if-nez v3, :cond_172

    .line 864
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 865
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$configured:Z

    if-nez v0, :cond_13a

    .line 866
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$status:Landroid/widget/TextView;

    const-string v3, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430"

    const-string v4, "Band not set up"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$detail:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0412\u044a\u0432\u0435\u0434\u0438 MAC \u0438 \u043a\u043b\u044e\u0447\u0430 \u0432\u0435\u0434\u043d\u044a\u0436 \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430."

    const-string v5, "Enter the MAC and key once in Settings \u2192 Band."

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 869
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$self:Z

    if-eqz v0, :cond_131

    const-string v0, ""

    :goto_cf
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    :goto_da
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$timeLeft:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    :goto_e1
    if-eqz v1, :cond_f5

    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000()I

    move-result v0

    if-ne v0, v2, :cond_f5

    .line 919
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$1100()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$ToPlan;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiUi$ToPlan;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 921
    :cond_f5
    return-void

    .line 817
    :cond_f6
    const-string v0, "nocfg"

    goto/16 :goto_1f

    :cond_fa
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    :cond_104
    move v0, v1

    .line 843
    goto :goto_85

    .line 846
    :cond_106
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v5, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v5, :cond_8c

    .line 847
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    const-string v5, "\u041f\u0440\u0438\u0435\u043c\u0438"

    const-string v6, "Accept"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$800(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 848
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$17$3;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$17$3;-><init>(Lcom/isaigu/gymapp/ai/AiUi$17;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8c

    .line 861
    :cond_12d
    const-string v0, "--"

    goto/16 :goto_9a

    .line 869
    :cond_131
    const-string v0, " \u0418\u043b\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0431\u0435\u0437 \u043f\u0443\u043b\u0441 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v5, " Or continue without HR \u2014 then only the plan controls."

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cf

    .line 872
    :cond_13a
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$status:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandLinkUp()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 873
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v4, "Connecting to the band\u2026"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    :goto_14a
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$detail:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$self:Z

    if-eqz v0, :cond_169

    .line 876
    const-string v0, "\u0421\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u0430\u0442\u0430 \u0441\u0435\u0441\u0438\u044f \u0438\u0437\u0438\u0441\u043a\u0432\u0430 \u0433\u0440\u0438\u0432\u043d\u0430. \u041f\u044a\u0440\u0432\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438\u0434\u0432\u0430 \u0434\u043e ~15 s."

    const-string v4, "A self session requires the band. First HR within ~15 s."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    :goto_15b
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_da

    .line 874
    :cond_160
    const-string v0, "\u0427\u0430\u043a\u0430\u043c \u043f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v4, "Waiting for band HR"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14a

    .line 878
    :cond_169
    const-string v0, "\u041f\u044a\u0440\u0432\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438\u0434\u0432\u0430 \u0434\u043e ~15 s. \u0418\u043b\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0431\u0435\u0437 \u043f\u0443\u043b\u0441 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v4, "First HR within ~15 s. Or continue without HR \u2014 then only the plan controls."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15b

    .line 883
    :cond_172
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v6

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 884
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$timeLeft:Landroid/widget/TextView;

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

    .line 885
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    .line 886
    sget-object v4, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v4, :cond_229

    .line 888
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$status:Landroid/widget/TextView;

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

    .line 889
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$timeLeft:Landroid/widget/TextView;

    const-string v4, "\u2713"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    const-string v0, ""

    .line 891
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_20e

    .line 892
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$self:Z

    if-eqz v0, :cond_205

    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u0441\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u0430 \u0441\u0435\u0441\u0438\u044f \u043d\u0435 \u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0430."

    const-string v3, "Resting HR \u2265 100 \u2014 self session not allowed."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    :goto_1f4
    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$self:Z

    if-eqz v3, :cond_285

    .line 903
    :goto_1f8
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$detail:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_220

    :goto_200
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e1

    .line 894
    :cond_205
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0441\u0430\u043c\u043e \u0430\u043a\u043e \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442 \u043f\u0440\u0435\u0446\u0435\u043d\u0438."

    const-string v3, "Resting HR \u2265 100 \u2014 continue only on the trainer\'s judgement."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f4

    .line 899
    :cond_20e
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v1

    const/16 v3, 0x28

    if-ge v1, v3, :cond_285

    .line 900
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 < 40 \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0435 \u043d\u043e\u0440\u043c\u0430 \u043f\u0440\u0438 \u0441\u043f\u043e\u0440\u0442\u0438\u0441\u0442\u0438."

    const-string v1, "Resting HR < 40 \u2014 may be normal for athletes."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_1f8

    .line 904
    :cond_220
    const-string v0, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435. \u0421\u043b\u0435\u0434\u0432\u0430 \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v4, "Stable measurement. The plan is next."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_200

    .line 905
    :cond_229
    sget-object v3, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v3, :cond_249

    .line 906
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$status:Landroid/widget/TextView;

    const-string v3, "\u041d\u0435\u0441\u0442\u0430\u0431\u0438\u043b\u0435\u043d \u043f\u0443\u043b\u0441"

    const-string v4, "Unstable HR"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$detail:Landroid/widget/TextView;

    const-string v3, "\u0420\u0430\u0437\u0441\u0435\u0439\u0432\u0430\u043d\u0435\u0442\u043e \u043e\u0441\u0442\u0430\u0432\u0430 \u043d\u0430\u0434 3 \u0443\u0434/\u043c\u0438\u043d. \u041f\u0440\u0438\u0435\u043c\u0438 \u0438\u043b\u0438 \u0438\u0437\u0447\u0430\u043a\u0430\u0439 \u043e\u0449\u0435."

    const-string v4, "Spread stays above 3 bpm. Accept or wait longer."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e1

    .line 909
    :cond_249
    sget-object v3, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v3, :cond_269

    .line 910
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$status:Landroid/widget/TextView;

    const-string v3, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0437\u0430\u043c\u043b\u044a\u043a\u043d\u0430"

    const-string v4, "Band went quiet"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$detail:Landroid/widget/TextView;

    const-string v3, "\u0422\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0435 \u0441\u043f\u0440\u044f\u043d, \u0434\u043e\u043a\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u044a\u0440\u043d\u0435."

    const-string v4, "Timer paused until HR returns."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e1

    .line 913
    :cond_269
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$status:Landroid/widget/TextView;

    const-string v3, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043c\u2026"

    const-string v4, "Measuring\u2026"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$detail:Landroid/widget/TextView;

    const-string v3, "\u0414\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e. \u041d\u0435 \u0433\u043e\u0432\u043e\u0440\u0438 \u0438 \u043d\u0435 \u0441\u0435 \u0434\u0432\u0438\u0436\u0438."

    const-string v4, "Breathe calmly. Don\'t talk or move."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e1

    :cond_285
    move v1, v2

    goto/16 :goto_1f8

    :cond_288
    move-object v3, v0

    goto/16 :goto_17
.end method
