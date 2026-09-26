.class Lcom/isaigu/gymapp/ai/AiUi$19;
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

    .line 1053
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$pct:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$sub:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ctrls:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$a:Landroid/content/Context;

    iput-boolean p7, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$self:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1056
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result v0

    .line 1057
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$pct:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1059
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phiMax:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setCap(F)V

    .line 1060
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v1

    .line 1061
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$sub:Landroid/widget/TextView;

    if-eqz v1, :cond_3e

    const-string v3, "\u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u00b7 85 Hz \u00b7 4/4 s"

    const-string v4, "pulses \u00b7 85 Hz \u00b7 4/4 s"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_46

    .line 1062
    :cond_3e
    const-string v3, "\u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430"

    const-string v4, "stimulation off"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1061
    :goto_46
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    const-string v2, "ramp"

    if-nez v1, :cond_50

    const-string v3, "off"

    goto :goto_5a

    :cond_50
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isSoloRamping()Z

    move-result v3

    if-eqz v3, :cond_58

    move-object v3, v2

    goto :goto_5a

    :cond_58
    const-string v3, "on"

    .line 1064
    :goto_5a
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_126

    .line 1065
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1066
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1067
    if-nez v1, :cond_92

    .line 1068
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$a:Landroid/content/Context;

    const-string v3, "\u25b6  \u0421\u0442\u0430\u0440\u0442 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0438\u0442\u0435"

    const-string v4, "\u25b6  Start pulses"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 1069
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$19$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AiUi$19$1;-><init>(Lcom/isaigu/gymapp/ai/AiUi$19;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1076
    goto/16 :goto_126

    :cond_92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_bc

    .line 1077
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$a:Landroid/content/Context;

    const-string v4, "\u0414\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e"

    const-string v6, "Enough"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v2, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 1078
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1079
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$19$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AiUi$19$2;-><init>(Lcom/isaigu/gymapp/ai/AiUi$19;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1086
    goto :goto_126

    .line 1087
    :cond_bc
    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$self:Z

    if-eqz v2, :cond_c6

    new-array v2, v3, [I

    fill-array-data v2, :array_148

    goto :goto_cc

    :cond_c6
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_150

    .line 1088
    :goto_cc
    const/4 v3, 0x0

    :goto_cd
    array-length v4, v2

    if-ge v3, v4, :cond_126

    .line 1089
    aget v4, v2, v3

    .line 1090
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v4, :cond_de

    const-string v8, "+"

    goto :goto_e0

    :cond_de
    const-string v8, "\u2212"

    :goto_e0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1091
    if-lez v4, :cond_f3

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto :goto_f5

    :cond_f3
    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 1090
    :goto_f5
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    .line 1092
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$a:Landroid/content/Context;

    const/high16 v8, 0x42980000    # 76.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1093
    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$19$3;

    invoke-direct {v7, p0, v4}, Lcom/isaigu/gymapp/ai/AiUi$19$3;-><init>(Lcom/isaigu/gymapp/ai/AiUi$19;I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1101
    if-lez v3, :cond_11e

    .line 1102
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$a:Landroid/content/Context;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1104
    :cond_11e
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$19;->val$ctrls:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    .line 1108
    :cond_126
    :goto_126
    if-eqz v1, :cond_131

    if-lez v0, :cond_131

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isSoloRamping()Z

    move-result v0

    if-nez v0, :cond_131

    const/4 v5, 0x1

    .line 1109
    :cond_131
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1110
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$600()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v5, :cond_141

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_144

    :cond_141
    const v1, 0x3ecccccd    # 0.4f

    :goto_144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1111
    return-void

    :array_148
    .array-data 4
        -0x5
        -0x1
    .end array-data

    :array_150
    .array-data 4
        -0x5
        -0x1
        0x1
        0x5
    .end array-data
.end method
