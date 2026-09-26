.class Lcom/isaigu/gymapp/ai/AiUi$25;
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

.field final synthetic val$doubleBtn:Landroid/widget/TextView;

.field final synthetic val$e:Lcom/isaigu/gymapp/ai/AiEngine;

.field final synthetic val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

.field final synthetic val$fatigueVal:Landroid/widget/TextView;

.field final synthetic val$hrVal:Landroid/widget/TextView;

.field final synthetic val$increaseBtn:Landroid/widget/TextView;

.field final synthetic val$kcalVal:Landroid/widget/TextView;

.field final synthetic val$overlay:Landroid/widget/FrameLayout;

.field final synthetic val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

.field final synthetic val$pauseBtn:Landroid/widget/TextView;

.field final synthetic val$phaseLeft:Landroid/widget/TextView;

.field final synthetic val$phaseName:Landroid/widget/TextView;

.field final synthetic val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

.field final synthetic val$reduceBtn:Landroid/widget/TextView;

.field final synthetic val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

.field final synthetic val$stateChip:Landroid/widget/TextView;

.field final synthetic val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

.field final synthetic val$strengthVal:Landroid/widget/TextView;

.field final synthetic val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

.field final synthetic val$total:Landroid/widget/TextView;

.field final synthetic val$zone:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiViews$Timeline;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiModel$Profile;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V
    .registers 30

    .line 1274
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    move-object v1, p2

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    move-object v1, p3

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseLeft:Landroid/widget/TextView;

    move-object v1, p4

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    move-object v1, p6

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    move-object v1, p7

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-object v1, p8

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$total:Landroid/widget/TextView;

    move-object v1, p9

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-object v1, p10

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    move-object v1, p11

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    move-object v1, p12

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    move-object v1, p13

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthVal:Landroid/widget/TextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueVal:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseVal:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$kcalVal:Landroid/widget/TextView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionText:Landroid/widget/TextView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionAge:Landroid/widget/TextView;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$reduceBtn:Landroid/widget/TextView;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$increaseBtn:Landroid/widget/TextView;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$overlay:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .line 1277
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1278
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 1279
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v4

    .line 1280
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v5

    .line 1281
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1283
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseLeft:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 "

    const-string v8, "remaining "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v7, v7

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiEngine;->isInBlock()Z

    move-result v7

    const-string v8, ""

    const/4 v9, 0x1

    if-eqz v7, :cond_79

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 \u0431\u043b\u043e\u043a "

    const-string v11, " \u00b7 block "

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7a

    :cond_79
    move-object v7, v8

    :goto_7a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1283
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getPauseReason()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v5, :cond_9a

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto :goto_aa

    .line 1288
    :cond_9a
    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v5, :cond_a1

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    goto :goto_aa

    .line 1289
    :cond_a1
    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v5, :cond_a8

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    goto :goto_aa

    :cond_a8
    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 1290
    :goto_aa
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v7, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v10, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v5, v7, v10, v10}, Lcom/isaigu/gymapp/ai/AiUi;->access$700(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1291
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v6

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v6, v11

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setProgress(F)V

    .line 1292
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$total:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v11, v7

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v5

    .line 1295
    const-wide/16 v11, 0x0

    cmpl-double v7, v5, v11

    if-lez v7, :cond_118

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v7, v1, v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v13

    const-wide/16 v15, 0x2710

    cmp-long v7, v13, v15

    if-gez v7, :cond_118

    const/4 v7, 0x1

    goto :goto_119

    :cond_118
    const/4 v7, 0x0

    .line 1296
    :goto_119
    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v13, v13, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_1c9

    if-eqz v7, :cond_1c9

    .line 1297
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v10, v9

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1298
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v7, v5, v6}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v9

    double-to-float v7, v9

    .line 1299
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v9, v7}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1300
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v11, v10, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_149

    goto :goto_14e

    :cond_149
    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v10, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    double-to-float v14, v10

    :goto_14e
    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v10, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    double-to-float v10, v10

    invoke-virtual {v9, v14, v10}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setBand(FF)V

    .line 1301
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v10, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xCap:D

    double-to-float v10, v10

    invoke-virtual {v9, v10}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setCap(F)V

    .line 1302
    float-to-double v9, v7

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v11, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpl-double v7, v9, v11

    if-lez v7, :cond_16b

    const/4 v7, 0x1

    goto :goto_16c

    :cond_16b
    const/4 v7, 0x0

    .line 1303
    :goto_16c
    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-nez v11, :cond_180

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpg-double v14, v9, v11

    if-gez v14, :cond_180

    const/4 v9, 0x1

    goto :goto_181

    :cond_180
    const/4 v9, 0x0

    .line 1304
    :goto_181
    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    if-eqz v7, :cond_18e

    const-string v11, "\u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v12, "above corridor"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1a1

    .line 1305
    :cond_18e
    if-eqz v9, :cond_199

    const-string v11, "\u043f\u043e\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v12, "below corridor"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1a1

    .line 1306
    :cond_199
    const-string v11, "\u0432 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v12, "in corridor"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1304
    :goto_1a1
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    if-eqz v7, :cond_1ab

    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    goto :goto_1b2

    :cond_1ab
    if-eqz v9, :cond_1b0

    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto :goto_1b2

    :cond_1b0
    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    :goto_1b2
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1308
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    int-to-double v9, v9

    cmpl-double v11, v5, v9

    if-ltz v11, :cond_1c3

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    goto :goto_1c5

    :cond_1c3
    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    :goto_1c5
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1309
    goto :goto_1ff

    .line 1310
    :cond_1c9
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    const-string v6, "--"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1312
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v5, v14}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1313
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v6, :cond_1ed

    const-string v6, "\u043d\u044f\u043c\u0430 \u0441\u0432\u0435\u0436 \u043f\u0443\u043b\u0441"

    const-string v7, "no fresh HR"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1f5

    .line 1314
    :cond_1ed
    const-string v6, "\u0431\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v7, "no band"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1313
    :goto_1f5
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1317
    :goto_1ff
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v5

    .line 1318
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    double-to-float v9, v5

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v7, v9, v10}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1319
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthVal:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result v10

    int-to-double v10, v10

    mul-double v10, v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "%  \u00b7  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v10

    .line 1320
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "% \u043e\u0442 \u043a\u0430\u043b\u0438\u0431\u0440."

    const-string v6, "% of calib."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1319
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigue()D

    move-result-wide v5

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigueMax()D

    move-result-wide v13

    const-wide v9, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    div-double/2addr v5, v11

    .line 1322
    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v8

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const-wide v19, 0x3feb333333333333L    # 0.85

    cmpl-double v8, v5, v19

    if-lez v8, :cond_270

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    goto :goto_272

    :cond_270
    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    :goto_272
    invoke-virtual {v11, v7, v8}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1323
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueVal:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v17

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v6

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    div-double/2addr v6, v11

    .line 1325
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v4

    invoke-virtual {v8, v6, v4}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1326
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    div-double/2addr v6, v11

    double-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->setMarker(F)V

    .line 1327
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseVal:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v7

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v7, v7, v11

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "% \u043e\u0442 \u043f\u043b\u0430\u043d\u0430"

    const-string v8, "% of plan"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v6

    .line 1329
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$kcalVal:Landroid/widget/TextView;

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_336

    .line 1330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " kcal  \u00b7  "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const-string v6, "\u0430\u043a\u0442\u0438\u0432\u043d\u0438 "

    const-string v7, "active "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getActiveKcal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_337

    :cond_336
    move-object v6, v14

    .line 1329
    :goto_337
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getU()D

    move-result-wide v6

    const-wide v8, 0x3fefd70a3d70a3d7L    # 0.995

    cmpg-double v4, v6, v8

    if-ltz v4, :cond_362

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v6, v8

    if-ltz v4, :cond_362

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v6

    cmpg-double v4, v6, v8

    if-gez v4, :cond_360

    goto :goto_362

    :cond_360
    const/4 v4, 0x0

    goto :goto_363

    :cond_362
    :goto_362
    const/4 v4, 0x1

    .line 1332
    :goto_363
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    const/16 v7, 0x8

    if-eqz v4, :cond_36b

    const/4 v4, 0x0

    goto :goto_36d

    :cond_36b
    const/16 v4, 0x8

    :goto_36d
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1333
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u041a\u043e\u0440\u0435\u043a\u0446\u0438\u044f \u043f\u043e \u043f\u0443\u043b\u0441\u0430 "

    const-string v9, "HR correction "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getU()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v8, v10

    if-gez v12, :cond_3cb

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 \u0440\u044a\u0447\u043d\u043e "

    const-string v10, " \u00b7 manual "

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v9, v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3cc

    :cond_3cb
    move-object v8, v14

    :goto_3cc
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v8, v10

    if-gez v12, :cond_404

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v10, " \u00b7 sensation "

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v9, v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_405

    :cond_404
    move-object v8, v14

    :goto_405
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1333
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1336
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionText:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiText;->action(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionAge:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastActionMs()J

    move-result-wide v5

    sub-long v5, v1, v5

    long-to-double v5, v5

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v5, :cond_445

    const-string v5, "\u25b6  \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v6, "\u25b6  Resume"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_44d

    .line 1339
    :cond_445
    const-string v5, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v6, "\u275a\u275a  Pause"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1338
    :goto_44d
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v3, v4, :cond_45b

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v4, :cond_459

    goto :goto_45b

    :cond_459
    const/4 v4, 0x0

    goto :goto_45c

    :cond_45b
    :goto_45b
    const/4 v4, 0x1

    .line 1342
    :goto_45c
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    if-nez v4, :cond_468

    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v6, :cond_465

    goto :goto_468

    :cond_465
    const/16 v3, 0x8

    goto :goto_469

    :cond_468
    :goto_468
    const/4 v3, 0x0

    :goto_469
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1343
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$reduceBtn:Landroid/widget/TextView;

    if-eqz v4, :cond_47a

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v5

    if-eqz v5, :cond_47a

    const/4 v5, 0x0

    goto :goto_47c

    :cond_47a
    const/16 v5, 0x8

    :goto_47c
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1344
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$increaseBtn:Landroid/widget/TextView;

    if-eqz v4, :cond_48d

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v5

    if-eqz v5, :cond_48d

    const/4 v5, 0x0

    goto :goto_48f

    :cond_48d
    const/16 v5, 0x8

    :goto_48f
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1345
    if-eqz v4, :cond_49e

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v3

    if-eqz v3, :cond_49e

    const/4 v9, 0x1

    goto :goto_49f

    :cond_49e
    const/4 v9, 0x0

    .line 1346
    :goto_49f
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    if-eqz v9, :cond_4a5

    const/4 v10, 0x0

    goto :goto_4a7

    :cond_4a5
    const/16 v10, 0x8

    :goto_4a7
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1347
    if-eqz v9, :cond_4dd

    .line 1348
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v4

    if-eqz v4, :cond_4bf

    .line 1349
    const-string v4, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0432\u043a\u043b."

    const-string v5, "Double impulse: on"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4c7

    .line 1350
    :cond_4bf
    const-string v4, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0438\u0437\u043a\u043b."

    const-string v5, "Double impulse: off"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1348
    :goto_4c7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v4

    if-eqz v4, :cond_4d7

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4da

    :cond_4d7
    const v4, 0x3f333333    # 0.7f

    :goto_4da
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1353
    :cond_4dd
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$overlay:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    invoke-static {v3, v4, v5, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->access$800(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    .line 1354
    return-void
.end method
