.class Lcom/isaigu/gymapp/ai/AiUi$18;
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

.field final synthetic val$sDt:Landroid/widget/TextView;

.field final synthetic val$sMedian:Landroid/widget/TextView;

.field final synthetic val$sSigma:Landroid/widget/TextView;

.field final synthetic val$self:Z

.field final synthetic val$status:Landroid/widget/TextView;

.field final synthetic val$timeLeft:Landroid/widget/TextView;


# direct methods
.method constructor <init>(ZLandroid/widget/LinearLayout;Landroid/content/Context;ZLandroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$configured:Z

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$a:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$bpm:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iput-object p7, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$timeLeft:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$sMedian:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$sSigma:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$sDt:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v7, -0x2

    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 789
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v4

    .line 790
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    .line 791
    if-nez v0, :cond_302

    if-eqz v4, :cond_302

    .line 792
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginRestHr()V

    .line 793
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    move-object v3, v0

    .line 795
    :goto_1c
    if-nez v3, :cond_fd

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$configured:Z

    if-eqz v0, :cond_f9

    const-string v0, "noband"

    .line 796
    :goto_24
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 797
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 798
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 799
    if-nez v3, :cond_109

    .line 800
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$configured:Z

    if-eqz v0, :cond_5d

    .line 801
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$a:Landroid/content/Context;

    const-string v5, "\u0421\u0432\u044a\u0440\u0436\u0438 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v6, "Reconnect"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 802
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$18$1;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$18$1;-><init>(Lcom/isaigu/gymapp/ai/AiUi$18;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 810
    :cond_5d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-nez v0, :cond_91

    .line 811
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$a:Landroid/content/Context;

    const-string v5, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v6, "Without band"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 812
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$18$2;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiUi$18$2;-><init>(Lcom/isaigu/gymapp/ai/AiUi$18;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 821
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$configured:Z

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$a:Landroid/content/Context;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_8a
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 822
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 838
    :cond_91
    :goto_91
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v0

    .line 839
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$bpm:Landroid/widget/TextView;

    if-lez v0, :cond_130

    if-eqz v4, :cond_130

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_9f
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    if-nez v3, :cond_175

    .line 842
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 843
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$configured:Z

    if-nez v0, :cond_13d

    .line 844
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430"

    const-string v3, "Band not set up"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412\u044a\u0432\u0435\u0434\u0438 MAC \u0438 \u043a\u043b\u044e\u0447\u0430 \u0432\u0435\u0434\u043d\u044a\u0436 \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430."

    const-string v4, "Enter the MAC and key once in Settings \u2192 Band."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 847
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-eqz v0, :cond_134

    const-string v0, ""

    :goto_d4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    :goto_df
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$timeLeft:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    :goto_e6
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 902
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v1, :cond_2fa

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_f5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 903
    return-void

    .line 795
    :cond_f9
    const-string v0, "nocfg"

    goto/16 :goto_24

    :cond_fd
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    :cond_107
    move v0, v1

    .line 821
    goto :goto_8a

    .line 824
    :cond_109
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v5, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v5, :cond_91

    .line 825
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$a:Landroid/content/Context;

    const-string v5, "\u041f\u0440\u0438\u0435\u043c\u0438"

    const-string v6, "Accept"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 826
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$18$3;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$18$3;-><init>(Lcom/isaigu/gymapp/ai/AiUi$18;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_91

    .line 839
    :cond_130
    const-string v0, "--"

    goto/16 :goto_9f

    .line 847
    :cond_134
    const-string v0, " \u0418\u043b\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0431\u0435\u0437 \u043f\u0443\u043b\u0441 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v4, " Or continue without HR \u2014 then only the plan controls."

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d4

    .line 850
    :cond_13d
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandLinkUp()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 851
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v3, "Connecting to the band\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 850
    :goto_14d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-eqz v0, :cond_16c

    .line 854
    const-string v0, "\u0421\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u0430\u0442\u0430 \u0441\u0435\u0441\u0438\u044f \u0438\u0437\u0438\u0441\u043a\u0432\u0430 \u0433\u0440\u0438\u0432\u043d\u0430. \u041f\u044a\u0440\u0432\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438\u0434\u0432\u0430 \u0434\u043e ~15 s."

    const-string v3, "A self session requires the band. First HR within ~15 s."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    :goto_15e
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_df

    .line 852
    :cond_163
    const-string v0, "\u0427\u0430\u043a\u0430\u043c \u043f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Waiting for band HR"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14d

    .line 856
    :cond_16c
    const-string v0, "\u041f\u044a\u0440\u0432\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438\u0434\u0432\u0430 \u0434\u043e ~15 s. \u0418\u043b\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0431\u0435\u0437 \u043f\u0443\u043b\u0441 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v3, "First HR within ~15 s. Or continue without HR \u2014 then only the plan controls."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15e

    .line 861
    :cond_175
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v6

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 862
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$timeLeft:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v4

    .line 864
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->liveMedian()I

    move-result v0

    .line 865
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$sMedian:Landroid/widget/TextView;

    if-lez v0, :cond_26f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b8
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$sSigma:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v6, :cond_1cd

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v6, :cond_273

    .line 867
    :cond_1cd
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "\u00b1%.1f"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getSigma()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 866
    :goto_1e1
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$sDt:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_277

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1f s"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_206
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v4, v0, :cond_29e

    .line 871
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

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

    .line 872
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$timeLeft:Landroid/widget/TextView;

    const-string v4, "\u2713"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    const-string v0, ""

    .line 874
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_283

    .line 875
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-eqz v0, :cond_27a

    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u0441\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u0430 \u0441\u0435\u0441\u0438\u044f \u043d\u0435 \u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0430."

    const-string v3, "Resting HR \u2265 100 \u2014 self session not allowed."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    :goto_25e
    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-eqz v3, :cond_2ff

    .line 886
    :goto_262
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_295

    :goto_26a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e6

    .line 865
    :cond_26f
    const-string v0, "\u2014"

    goto/16 :goto_1b8

    .line 867
    :cond_273
    const-string v0, "\u2014"

    goto/16 :goto_1e1

    .line 868
    :cond_277
    const-string v0, "~3 s"

    goto :goto_206

    .line 877
    :cond_27a
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0441\u0430\u043c\u043e \u0430\u043a\u043e \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442 \u043f\u0440\u0435\u0446\u0435\u043d\u0438."

    const-string v3, "Resting HR \u2265 100 \u2014 continue only on the trainer\'s judgement."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25e

    .line 882
    :cond_283
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v1

    const/16 v3, 0x28

    if-ge v1, v3, :cond_2ff

    .line 883
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 < 40 \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0435 \u043d\u043e\u0440\u043c\u0430 \u043f\u0440\u0438 \u0441\u043f\u043e\u0440\u0442\u0438\u0441\u0442\u0438."

    const-string v1, "Resting HR < 40 \u2014 may be normal for athletes."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_262

    .line 887
    :cond_295
    const-string v0, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435. \u0421\u043b\u0435\u0434\u0432\u0430 \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v3, "Stable measurement. The plan is next."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26a

    .line 888
    :cond_29e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v4, v0, :cond_2be

    .line 889
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    const-string v2, "\u041d\u0435\u0441\u0442\u0430\u0431\u0438\u043b\u0435\u043d \u043f\u0443\u043b\u0441"

    const-string v3, "Unstable HR"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    const-string v2, "\u0420\u0430\u0437\u0441\u0435\u0439\u0432\u0430\u043d\u0435\u0442\u043e \u043e\u0441\u0442\u0430\u0432\u0430 \u043d\u0430\u0434 3 \u0443\u0434/\u043c\u0438\u043d. \u041f\u0440\u0438\u0435\u043c\u0438 \u0438\u043b\u0438 \u0438\u0437\u0447\u0430\u043a\u0430\u0439 \u043e\u0449\u0435."

    const-string v3, "Spread stays above 3 bpm. Accept or wait longer."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e6

    .line 892
    :cond_2be
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v4, v0, :cond_2de

    .line 893
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0437\u0430\u043c\u043b\u044a\u043a\u043d\u0430"

    const-string v3, "Band went quiet"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    const-string v2, "\u0422\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0435 \u0441\u043f\u0440\u044f\u043d, \u0434\u043e\u043a\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u044a\u0440\u043d\u0435."

    const-string v3, "Timer paused until HR returns."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e6

    .line 896
    :cond_2de
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    const-string v2, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043c\u2026"

    const-string v3, "Measuring\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    const-string v2, "\u0414\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e. \u041d\u0435 \u0433\u043e\u0432\u043e\u0440\u0438 \u0438 \u043d\u0435 \u0441\u0435 \u0434\u0432\u0438\u0436\u0438."

    const-string v3, "Breathe calmly. Don\'t talk or move."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e6

    .line 902
    :cond_2fa
    const v0, 0x3ecccccd    # 0.4f

    goto/16 :goto_f5

    :cond_2ff
    move v1, v2

    goto/16 :goto_262

    :cond_302
    move-object v3, v0

    goto/16 :goto_1c
.end method
