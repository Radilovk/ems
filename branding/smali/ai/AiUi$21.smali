.class Lcom/isaigu/gymapp/ai/AiUi$21;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenRun(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/content/Context;

.field final synthetic val$actionAge:Landroid/widget/TextView;

.field final synthetic val$actionText:Landroid/widget/TextView;

.field final synthetic val$ctrlVal:Landroid/widget/TextView;

.field final synthetic val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

.field final synthetic val$doseVal:Landroid/widget/TextView;

.field final synthetic val$e:Lcom/isaigu/gymapp/ai/AiEngine;

.field final synthetic val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

.field final synthetic val$fatigueVal:Landroid/widget/TextView;

.field final synthetic val$hrVal:Landroid/widget/TextView;

.field final synthetic val$overlay:Landroid/widget/FrameLayout;

.field final synthetic val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

.field final synthetic val$pauseBtn:Landroid/widget/TextView;

.field final synthetic val$phaseLeft:Landroid/widget/TextView;

.field final synthetic val$phaseName:Landroid/widget/TextView;

.field final synthetic val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

.field final synthetic val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

.field final synthetic val$stateChip:Landroid/widget/TextView;

.field final synthetic val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

.field final synthetic val$strengthVal:Landroid/widget/TextView;

.field final synthetic val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

.field final synthetic val$total:Landroid/widget/TextView;

.field final synthetic val$zone:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiViews$Timeline;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiModel$Profile;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$phaseName:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$phaseLeft:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$stateChip:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$a:Landroid/content/Context;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    iput-object p7, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iput-object p8, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$total:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iput-object p10, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$hrVal:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iput-object p12, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$zone:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    iput-object p14, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$strengthVal:Landroid/widget/TextView;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$fatigueVal:Landroid/widget/TextView;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$doseVal:Landroid/widget/TextView;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$ctrlVal:Landroid/widget/TextView;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$actionText:Landroid/widget/TextView;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$actionAge:Landroid/widget/TextView;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$pauseBtn:Landroid/widget/TextView;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$overlay:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 1182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1183
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 1184
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v6

    .line 1185
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$phaseName:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$phaseName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1188
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$phaseLeft:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 "

    const-string v7, "remaining "

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v8, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1189
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isInBlock()Z

    move-result v0

    if-eqz v0, :cond_38e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 \u0431\u043b\u043e\u043a "

    const-string v8, " \u00b7 block "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1188
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$stateChip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPauseReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/AiText;->state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_392

    const v0, -0xd1338f

    .line 1194
    :goto_99
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$stateChip:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$a:Landroid/content/Context;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v0, v2, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$700(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1195
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v8

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v8, v10

    double-to-float v1, v8

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setProgress(F)V

    .line 1196
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$total:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v8, v2

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v8

    .line 1199
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_3a8

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v10, 0x2710

    cmp-long v0, v0, v10

    if-gez v0, :cond_3a8

    const/4 v0, 0x1

    .line 1200
    :goto_10b
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_3df

    if-eqz v0, :cond_3df

    .line 1201
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$hrVal:Landroid/widget/TextView;

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v1, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v0, v8, v9}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 1203
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1204
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3ab

    const/4 v0, 0x0

    :goto_13a
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    double-to-float v7, v10

    invoke-virtual {v2, v0, v7}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setBand(FF)V

    .line 1205
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xCap:D

    double-to-float v2, v10

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setCap(F)V

    .line 1206
    float-to-double v10, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpl-double v0, v10, v12

    if-lez v0, :cond_3b2

    const/4 v0, 0x1

    .line 1207
    :goto_156
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3b5

    float-to-double v10, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v12, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpg-double v1, v10, v12

    if-gez v1, :cond_3b5

    const/4 v1, 0x1

    .line 1208
    :goto_16a
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_3b8

    const-string v2, "\u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "above corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_176
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_3ce

    const/16 v0, -0x4fe0

    :goto_17f
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1212
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$hrVal:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    int-to-double v10, v0

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_3da

    const v0, -0xb2b1

    :goto_190
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1221
    :goto_193
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v0

    .line 1222
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    double-to-float v7, v0

    const v8, -0x83b201

    invoke-virtual {v2, v7, v8}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1223
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$strengthVal:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%  \u00b7  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v8

    .line 1224
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% \u043e\u0442 \u043a\u0430\u043b\u0438\u0431\u0440."

    const-string v7, "% of calib."

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1223
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigue()D

    move-result-wide v0

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigueMax()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double v8, v0, v8

    .line 1226
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-float v2, v10

    const-wide v10, 0x3feb333333333333L    # 0.85

    cmpl-double v0, v8, v10

    if-lez v0, :cond_41a

    const/16 v0, -0x4fe0

    :goto_206
    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1227
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$fatigueVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v0

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v0, v8

    .line 1229
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1230
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v1, v6

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->setMarker(F)V

    .line 1231
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$doseVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v10, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% \u043e\u0442 \u043f\u043b\u0430\u043d\u0430"

    const-string v6, "% of plan"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1232
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$ctrlVal:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041a\u043e\u0440\u0435\u043a\u0446\u0438\u044f \u043f\u043e \u043f\u0443\u043b\u0441\u0430 "

    const-string v6, "HR correction "

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getU()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1233
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_41f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 \u0440\u044a\u0447\u043d\u043e "

    const-string v7, " \u00b7 manual "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1234
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_423

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v7, " \u00b7 sensation "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_341
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1232
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$actionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiText;->action(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$actionAge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastActionMs()J

    move-result-wide v6

    sub-long v6, v4, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$pauseBtn:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_427

    const-string v0, "\u25b6  \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v2, "\u25b6  Resume"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_381
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$a:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$overlay:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$800(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    .line 1240
    return-void

    .line 1189
    :cond_38e
    const-string v0, ""

    goto/16 :goto_78

    .line 1192
    :cond_392
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_39b

    const v0, -0xff2e01

    goto/16 :goto_99

    .line 1193
    :cond_39b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_3a4

    const v0, -0xb2b1

    goto/16 :goto_99

    :cond_3a4
    const/16 v0, -0x4fe0

    goto/16 :goto_99

    .line 1199
    :cond_3a8
    const/4 v0, 0x0

    goto/16 :goto_10b

    .line 1204
    :cond_3ab
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    double-to-float v0, v10

    goto/16 :goto_13a

    .line 1206
    :cond_3b2
    const/4 v0, 0x0

    goto/16 :goto_156

    .line 1207
    :cond_3b5
    const/4 v1, 0x0

    goto/16 :goto_16a

    .line 1209
    :cond_3b8
    if-eqz v1, :cond_3c4

    const-string v2, "\u043f\u043e\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "below corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_176

    .line 1210
    :cond_3c4
    const-string v2, "\u0432 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "in corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_176

    .line 1211
    :cond_3ce
    if-eqz v1, :cond_3d5

    const v0, -0xff2e01

    goto/16 :goto_17f

    :cond_3d5
    const v0, -0xd1338f

    goto/16 :goto_17f

    .line 1212
    :cond_3da
    const v0, -0xd0b08

    goto/16 :goto_190

    .line 1214
    :cond_3df
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$hrVal:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$hrVal:Landroid/widget/TextView;

    const v1, -0x746c5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1216
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1217
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$zone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_411

    const-string v0, "\u043d\u044f\u043c\u0430 \u0441\u0432\u0435\u0436 \u043f\u0443\u043b\u0441"

    const-string v2, "no fresh HR"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_404
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$21;->val$zone:Landroid/widget/TextView;

    const v1, -0x746c5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_193

    .line 1218
    :cond_411
    const-string v0, "\u0431\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "no band"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_404

    .line 1226
    :cond_41a
    const v0, -0xff2e01

    goto/16 :goto_206

    .line 1233
    :cond_41f
    const-string v0, ""

    goto/16 :goto_305

    .line 1234
    :cond_423
    const-string v0, ""

    goto/16 :goto_341

    .line 1238
    :cond_427
    const-string v0, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v2, "\u275a\u275a  Pause"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_381
.end method
