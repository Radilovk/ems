.class Lcom/isaigu/gymapp/ai/AiUi$16;
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

.field final synthetic val$detail:Landroid/widget/TextView;

.field final synthetic val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

.field final synthetic val$sDt:Landroid/widget/TextView;

.field final synthetic val$sMedian:Landroid/widget/TextView;

.field final synthetic val$sSigma:Landroid/widget/TextView;

.field final synthetic val$self:Z

.field final synthetic val$status:Landroid/widget/TextView;

.field final synthetic val$timeLeft:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/content/Context;ZLandroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 736
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$actions:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$self:Z

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$bpm:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$status:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$detail:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$timeLeft:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$sMedian:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$sSigma:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$sDt:Landroid/widget/TextView;

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

    .line 739
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v4

    .line 740
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    .line 741
    if-nez v0, :cond_2a1

    if-eqz v4, :cond_2a1

    .line 742
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginRestHr()V

    .line 743
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    move-object v3, v0

    .line 745
    :goto_1c
    if-nez v3, :cond_d8

    const-string v0, "noband"

    .line 746
    :goto_20
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 747
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 748
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 749
    if-nez v3, :cond_e2

    .line 750
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$a:Landroid/content/Context;

    const-string v5, "\u0421\u0432\u044a\u0440\u0436\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v6, "Connect band"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, -0xff2e01

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 751
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$16$1;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$16$1;-><init>(Lcom/isaigu/gymapp/ai/AiUi$16;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 758
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$self:Z

    if-nez v0, :cond_87

    .line 759
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$a:Landroid/content/Context;

    const-string v5, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v6, "Without band"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, -0x746c5f

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 760
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$16$2;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$16$2;-><init>(Lcom/isaigu/gymapp/ai/AiUi$16;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 769
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$a:Landroid/content/Context;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 770
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    :cond_87
    :goto_87
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getLastBandHr()I

    move-result v0

    .line 787
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$bpm:Landroid/widget/TextView;

    if-lez v0, :cond_108

    if-eqz v4, :cond_108

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_95
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    if-nez v3, :cond_114

    .line 790
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 791
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$status:Landroid/widget/TextView;

    const-string v2, "\u0427\u0430\u043a\u0430\u043c \u043f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Waiting for band HR"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$detail:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$self:Z

    if-eqz v0, :cond_10b

    .line 793
    const-string v0, "\u0421\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u0430\u0442\u0430 \u0441\u0435\u0441\u0438\u044f \u0438\u0437\u0438\u0441\u043a\u0432\u0430 \u0433\u0440\u0438\u0432\u043d\u0430."

    const-string v3, "A self session requires the band."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    :goto_bb
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$timeLeft:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    :goto_c5
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 839
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v1, :cond_299

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 840
    return-void

    .line 745
    :cond_d8
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 772
    :cond_e2
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v5, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v5, :cond_87

    .line 773
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$a:Landroid/content/Context;

    const-string v5, "\u041f\u0440\u0438\u0435\u043c\u0438"

    const-string v6, "Accept"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, -0x4fe0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 774
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$16$3;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$16$3;-><init>(Lcom/isaigu/gymapp/ai/AiUi$16;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$actions:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_87

    .line 787
    :cond_108
    const-string v0, "--"

    goto :goto_95

    .line 794
    :cond_10b
    const-string v0, "\u0421\u0432\u044a\u0440\u0436\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043e\u0442 \u2665 \u0438\u043b\u0438 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0431\u0435\u0437 \u043f\u0443\u043b\u0441 \u2014 \u0442\u043e\u0433\u0430\u0432\u0430 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v3, "Connect the band via \u2665 or continue without HR \u2014 then only the plan controls."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_bb

    .line 798
    :cond_114
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v6

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 799
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$timeLeft:Landroid/widget/TextView;

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

    .line 800
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v4

    .line 801
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->liveMedian()I

    move-result v0

    .line 802
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$sMedian:Landroid/widget/TextView;

    if-lez v0, :cond_20e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_157
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$sSigma:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v6, :cond_16c

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v6, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v6, :cond_212

    .line 804
    :cond_16c
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

    .line 803
    :goto_180
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$sDt:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_216

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

    :goto_1a5
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v4, v0, :cond_23d

    .line 808
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$status:Landroid/widget/TextView;

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

    .line 809
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$timeLeft:Landroid/widget/TextView;

    const-string v4, "\u2713"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    const-string v0, ""

    .line 811
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_222

    .line 812
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$self:Z

    if-eqz v0, :cond_219

    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u0441\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u0430 \u0441\u0435\u0441\u0438\u044f \u043d\u0435 \u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0430."

    const-string v3, "Resting HR \u2265 100 \u2014 self session not allowed."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    :goto_1fd
    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$self:Z

    if-eqz v3, :cond_29e

    .line 823
    :goto_201
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$detail:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_234

    :goto_209
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c5

    .line 802
    :cond_20e
    const-string v0, "\u2014"

    goto/16 :goto_157

    .line 804
    :cond_212
    const-string v0, "\u2014"

    goto/16 :goto_180

    .line 805
    :cond_216
    const-string v0, "~3 s"

    goto :goto_1a5

    .line 814
    :cond_219
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2265 100 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438 \u0441\u0430\u043c\u043e \u0430\u043a\u043e \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442 \u043f\u0440\u0435\u0446\u0435\u043d\u0438."

    const-string v3, "Resting HR \u2265 100 \u2014 continue only on the trainer\'s judgement."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1fd

    .line 819
    :cond_222
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v1

    const/16 v3, 0x28

    if-ge v1, v3, :cond_29e

    .line 820
    const-string v0, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439 < 40 \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0435 \u043d\u043e\u0440\u043c\u0430 \u043f\u0440\u0438 \u0441\u043f\u043e\u0440\u0442\u0438\u0441\u0442\u0438."

    const-string v1, "Resting HR < 40 \u2014 may be normal for athletes."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_201

    .line 824
    :cond_234
    const-string v0, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435. \u0421\u043b\u0435\u0434\u0432\u0430 \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v3, "Stable measurement. The plan is next."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_209

    .line 825
    :cond_23d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v4, v0, :cond_25d

    .line 826
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$status:Landroid/widget/TextView;

    const-string v2, "\u041d\u0435\u0441\u0442\u0430\u0431\u0438\u043b\u0435\u043d \u043f\u0443\u043b\u0441"

    const-string v3, "Unstable HR"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$detail:Landroid/widget/TextView;

    const-string v2, "\u0420\u0430\u0437\u0441\u0435\u0439\u0432\u0430\u043d\u0435\u0442\u043e \u043e\u0441\u0442\u0430\u0432\u0430 \u043d\u0430\u0434 3 \u0443\u0434/\u043c\u0438\u043d. \u041f\u0440\u0438\u0435\u043c\u0438 \u0438\u043b\u0438 \u0438\u0437\u0447\u0430\u043a\u0430\u0439 \u043e\u0449\u0435."

    const-string v3, "Spread stays above 3 bpm. Accept or wait longer."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c5

    .line 829
    :cond_25d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v4, v0, :cond_27d

    .line 830
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$status:Landroid/widget/TextView;

    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0437\u0430\u043c\u043b\u044a\u043a\u043d\u0430"

    const-string v3, "Band went quiet"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$detail:Landroid/widget/TextView;

    const-string v2, "\u0422\u0430\u0439\u043c\u0435\u0440\u044a\u0442 \u0435 \u0441\u043f\u0440\u044f\u043d, \u0434\u043e\u043a\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0435 \u0432\u044a\u0440\u043d\u0435."

    const-string v3, "Timer paused until HR returns."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c5

    .line 833
    :cond_27d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$status:Landroid/widget/TextView;

    const-string v2, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u043c\u2026"

    const-string v3, "Measuring\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$16;->val$detail:Landroid/widget/TextView;

    const-string v2, "\u0414\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e. \u041d\u0435 \u0433\u043e\u0432\u043e\u0440\u0438 \u0438 \u043d\u0435 \u0441\u0435 \u0434\u0432\u0438\u0436\u0438."

    const-string v3, "Breathe calmly. Don\'t talk or move."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c5

    .line 839
    :cond_299
    const v0, 0x3ecccccd    # 0.4f

    goto/16 :goto_d4

    :cond_29e
    move v1, v2

    goto/16 :goto_201

    :cond_2a1
    move-object v3, v0

    goto/16 :goto_1c
.end method
