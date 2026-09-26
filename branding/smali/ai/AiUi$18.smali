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

    .line 789
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
    .registers 14

    .line 792
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    .line 793
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v1

    .line 794
    if-nez v1, :cond_13

    if-eqz v0, :cond_13

    .line 795
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginRestHr()V

    .line 796
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v1

    .line 798
    :cond_13
    if-nez v1, :cond_1f

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$configured:Z

    if-eqz v2, :cond_1c

    const-string v2, "noband"

    goto :goto_27

    :cond_1c
    const-string v2, "nocfg"

    goto :goto_27

    :cond_1f
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->name()Ljava/lang/String;

    move-result-object v2

    .line 799
    :goto_27
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_be

    .line 800
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 801
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 802
    if-nez v1, :cond_99

    .line 803
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$configured:Z

    if-eqz v2, :cond_61

    .line 804
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$a:Landroid/content/Context;

    const-string v3, "\u0421\u0432\u044a\u0440\u0436\u0438 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v5, "Reconnect"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v2, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 805
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$18$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AiUi$18$1;-><init>(Lcom/isaigu/gymapp/ai/AiUi$18;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 813
    :cond_61
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-nez v2, :cond_be

    .line 814
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$a:Landroid/content/Context;

    const-string v3, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v5, "Without band"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v2, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 815
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$18$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AiUi$18$2;-><init>(Lcom/isaigu/gymapp/ai/AiUi$18;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 824
    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$configured:Z

    if-eqz v5, :cond_90

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$a:Landroid/content/Context;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    goto :goto_91

    :cond_90
    const/4 v5, 0x0

    :goto_91
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 825
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    goto :goto_be

    .line 827
    :cond_99
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v2, v3, :cond_be

    .line 828
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$a:Landroid/content/Context;

    const-string v3, "\u041f\u0440\u0438\u0435\u043c\u0438"

    const-string v5, "Accept"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v2, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 829
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$18$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AiUi$18$3;-><init>(Lcom/isaigu/gymapp/ai/AiUi$18;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 841
    :cond_be
    :goto_be
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v2

    .line 842
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$bpm:Landroid/widget/TextView;

    if-lez v2, :cond_cd

    if-eqz v0, :cond_cd

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_cf

    :cond_cd
    const-string v0, "--"

    :goto_cf
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    nop

    .line 844
    const-string v0, ""

    if-nez v1, :cond_156

    .line 845
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 846
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$configured:Z

    if-nez v1, :cond_119

    .line 847
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430"

    const-string v3, "Band not set up"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412\u044a\u0432\u0435\u0434\u0438 MAC \u0438 \u043a\u043b\u044e\u0447\u0430 \u0432\u0435\u0434\u043d\u044a\u0436 \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430."

    const-string v5, "Enter the MAC and key once in Settings \u2192 Band."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-eqz v3, :cond_106

    move-object v3, v0

    goto :goto_10e

    :cond_106
    const-string v3, " \u0418\u043b\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0431\u0435\u0437 \u043f\u0443\u043b\u0441 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v5, " Or continue without HR \u2014 then only the plan controls."

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_10e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 848
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14f

    .line 853
    :cond_119
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandLinkUp()Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 854
    const-string v2, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v3, "Connecting to the band\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_132

    .line 855
    :cond_12a
    const-string v2, "\u0427\u0430\u043a\u0430\u043c \u043f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Waiting for band HR"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 853
    :goto_132
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-eqz v2, :cond_144

    .line 857
    const-string v2, "\u0421\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u0430\u0442\u0430 \u0441\u0435\u0441\u0438\u044f \u0438\u0437\u0438\u0441\u043a\u0432\u0430 \u0433\u0440\u0438\u0432\u043d\u0430. \u041f\u044a\u0440\u0432\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438\u0434\u0432\u0430 \u0434\u043e ~15 s."

    const-string v3, "A self session requires the band. First HR within ~15 s."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14c

    .line 859
    :cond_144
    const-string v2, "\u041f\u044a\u0440\u0432\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438\u0434\u0432\u0430 \u0434\u043e ~15 s. \u0418\u043b\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0431\u0435\u0437 \u043f\u0443\u043b\u0441 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v3, "First HR within ~15 s. Or continue without HR \u2014 then only the plan controls."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 856
    :goto_14c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    :goto_14f
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$timeLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2d6

    .line 864
    :cond_156
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v5

    long-to-float v3, v5

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 865
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$timeLeft:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v2

    .line 867
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->liveMedian()I

    move-result v3

    .line 868
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$sMedian:Landroid/widget/TextView;

    const-string v6, "\u2014"

    if-lez v3, :cond_19d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_19e

    :cond_19d
    move-object v3, v6

    :goto_19e
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$sSigma:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v5

    sget-object v9, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    const/4 v10, 0x1

    if-eq v5, v9, :cond_1b6

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v5

    sget-object v9, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v5, v9, :cond_1b5

    goto :goto_1b6

    .line 870
    :cond_1b5
    goto :goto_1ca

    :cond_1b6
    :goto_1b6
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getSigma()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v4

    const-string v9, "\u00b1%.1f"

    invoke-static {v5, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 869
    :goto_1ca
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$sDt:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v5

    const-wide/16 v11, 0x0

    cmp-long v9, v5, v11

    if-lez v9, :cond_1f0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "%.1f s"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1f2

    :cond_1f0
    const-string v5, "~3 s"

    :goto_1f2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    sget-object v3, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v2, v3, :cond_27e

    .line 873
    nop

    .line 874
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0413\u043e\u0442\u043e\u0432\u043e \u00b7 "

    const-string v6, "Done \u00b7 "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v6, "bpm"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$timeLeft:Landroid/widget/TextView;

    const-string v3, "\u2713"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    nop

    .line 877
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_256

    .line 878
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-eqz v0, :cond_247

    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u0441\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u0430 \u0441\u0435\u0441\u0438\u044f \u043d\u0435 \u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0430."

    const-string v1, "Resting HR \u2265 100 \u2014 self session not allowed."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24f

    .line 880
    :cond_247
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0441\u0430\u043c\u043e \u0430\u043a\u043e \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442 \u043f\u0440\u0435\u0446\u0435\u043d\u0438."

    const-string v1, "Resting HR \u2265 100 \u2014 continue only on the trainer\'s judgement."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 882
    :goto_24f
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$self:Z

    if-eqz v1, :cond_254

    .line 883
    goto :goto_269

    .line 882
    :cond_254
    const/4 v4, 0x1

    goto :goto_269

    .line 885
    :cond_256
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_268

    .line 886
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 < 40 \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0435 \u043d\u043e\u0440\u043c\u0430 \u043f\u0440\u0438 \u0441\u043f\u043e\u0440\u0442\u0438\u0441\u0442\u0438."

    const-string v1, "Resting HR < 40 \u2014 may be normal for athletes."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    goto :goto_269

    .line 885
    :cond_268
    const/4 v4, 0x1

    .line 889
    :goto_269
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_272

    goto :goto_27a

    .line 890
    :cond_272
    const-string v0, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435. \u0421\u043b\u0435\u0434\u0432\u0430 \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v2, "Stable measurement. The plan is next."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    :goto_27a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    goto :goto_2d6

    :cond_27e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v2, v0, :cond_29d

    .line 892
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    const-string v1, "\u041d\u0435\u0441\u0442\u0430\u0431\u0438\u043b\u0435\u043d \u043f\u0443\u043b\u0441"

    const-string v2, "Unstable HR"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    const-string v1, "\u0420\u0430\u0437\u0441\u0435\u0439\u0432\u0430\u043d\u0435\u0442\u043e \u043e\u0441\u0442\u0430\u0432\u0430 \u043d\u0430\u0434 3 \u0443\u0434/\u043c\u0438\u043d. \u041f\u0440\u0438\u0435\u043c\u0438 \u0438\u043b\u0438 \u0438\u0437\u0447\u0430\u043a\u0430\u0439 \u043e\u0449\u0435."

    const-string v2, "Spread stays above 3 bpm. Accept or wait longer."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d6

    .line 895
    :cond_29d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v2, v0, :cond_2bc

    .line 896
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    const-string v1, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0437\u0430\u043c\u043b\u044a\u043a\u043d\u0430"

    const-string v2, "Band went quiet"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    const-string v1, "\u0422\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0435 \u0441\u043f\u0440\u044f\u043d, \u0434\u043e\u043a\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u044a\u0440\u043d\u0435."

    const-string v2, "Timer paused until HR returns."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d6

    .line 899
    :cond_2bc
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$status:Landroid/widget/TextView;

    const-string v1, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043c\u2026"

    const-string v2, "Measuring\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$18;->val$detail:Landroid/widget/TextView;

    const-string v1, "\u0414\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e. \u041d\u0435 \u0433\u043e\u0432\u043e\u0440\u0438 \u0438 \u043d\u0435 \u0441\u0435 \u0434\u0432\u0438\u0436\u0438."

    const-string v2, "Breathe calmly. Don\'t talk or move."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    :goto_2d6
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 905
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v4, :cond_2e6

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2e9

    :cond_2e6
    const v1, 0x3ecccccd    # 0.4f

    :goto_2e9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 906
    return-void
.end method
