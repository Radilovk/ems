.class Lcom/isaigu/gymapp/ai/AiUi$17;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenCalib(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/content/Context;

.field final synthetic val$ctrls:Landroid/widget/LinearLayout;

.field final synthetic val$pct:Landroid/widget/TextView;

.field final synthetic val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

.field final synthetic val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

.field final synthetic val$self:Z

.field final synthetic val$sub:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$pct:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$sub:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ctrls:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    iput-boolean p7, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$self:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v9, -0x2

    .line 1011
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result v4

    .line 1012
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$pct:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    int-to-float v1, v4

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1014
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    double-to-float v1, v6

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setCap(F)V

    .line 1015
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v5

    .line 1016
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$sub:Landroid/widget/TextView;

    if-eqz v5, :cond_9d

    const-string v0, "\u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u00b7 85 Hz \u00b7 4/4 s"

    const-string v3, "pulses \u00b7 85 Hz \u00b7 4/4 s"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    if-nez v5, :cond_a6

    const-string v0, "off"

    .line 1019
    :goto_49
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 1020
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1021
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1022
    if-nez v5, :cond_b2

    .line 1023
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    const-string v1, "\u25b6  \u0421\u0442\u0430\u0440\u0442 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435"

    const-string v3, "\u25b6  Start pulses"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, -0xd1338f

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 1024
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$17$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiUi$17$1;-><init>(Lcom/isaigu/gymapp/ai/AiUi$17;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1030
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1063
    :cond_7f
    :goto_7f
    if-eqz v5, :cond_8a

    if-lez v4, :cond_8a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isSoloRamping()Z

    move-result v0

    if-nez v0, :cond_8a

    const/4 v2, 0x1

    .line 1064
    :cond_8a
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1065
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v2, :cond_14a

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_99
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1066
    return-void

    .line 1017
    :cond_9d
    const-string v0, "\u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430"

    const-string v3, "stimulation off"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 1018
    :cond_a6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isSoloRamping()Z

    move-result v0

    if-eqz v0, :cond_af

    const-string v0, "ramp"

    goto :goto_49

    :cond_af
    const-string v0, "on"

    goto :goto_49

    .line 1031
    :cond_b2
    const-string v1, "ramp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1032
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    const-string v1, "\u0414\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e"

    const-string v3, "Enough"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, -0x4fe0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 1033
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1034
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$17$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiUi$17$2;-><init>(Lcom/isaigu/gymapp/ai/AiUi$17;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7f

    .line 1042
    :cond_dd
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$self:Z

    if-eqz v0, :cond_13c

    new-array v0, v8, [I

    fill-array-data v0, :array_150

    :goto_e6
    move v1, v2

    .line 1043
    :goto_e7
    array-length v3, v0

    if-ge v1, v3, :cond_7f

    .line 1044
    aget v6, v0, v1

    .line 1045
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v6, :cond_143

    const-string v3, "+"

    :goto_f7
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1046
    if-lez v6, :cond_146

    const v3, -0xff2e01

    .line 1045
    :goto_10c
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v7, v8, v3}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 1047
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    const/high16 v8, 0x42980000    # 76.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1048
    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$17$3;

    invoke-direct {v7, p0, v6}, Lcom/isaigu/gymapp/ai/AiUi$17$3;-><init>(Lcom/isaigu/gymapp/ai/AiUi$17;I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1056
    if-lez v1, :cond_134

    .line 1057
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$a:Landroid/content/Context;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1059
    :cond_134
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$17;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1043
    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    .line 1042
    :cond_13c
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_158

    goto :goto_e6

    .line 1045
    :cond_143
    const-string v3, "\u2212"

    goto :goto_f7

    .line 1046
    :cond_146
    const v3, -0x746c5f

    goto :goto_10c

    .line 1065
    :cond_14a
    const v0, 0x3ecccccd    # 0.4f

    goto/16 :goto_99

    .line 1042
    nop

    :array_150
    .array-data 4
        -0x5
        -0x1
    .end array-data

    :array_158
    .array-data 4
        -0x5
        -0x1
        0x1
        0x5
    .end array-data
.end method
