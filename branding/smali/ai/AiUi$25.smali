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
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseLeft:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    iput-object p7, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iput-object p8, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$total:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iput-object p10, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iput-object p12, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    iput-object p14, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthVal:Landroid/widget/TextView;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueVal:Landroid/widget/TextView;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseVal:Landroid/widget/TextView;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$kcalVal:Landroid/widget/TextView;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionText:Landroid/widget/TextView;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionAge:Landroid/widget/TextView;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$reduceBtn:Landroid/widget/TextView;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$increaseBtn:Landroid/widget/TextView;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$overlay:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 1277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1278
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 1279
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v6

    .line 1280
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 1281
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1283
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseLeft:Landroid/widget/TextView;

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

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1284
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isInBlock()Z

    move-result v0

    if-eqz v0, :cond_467

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 \u0431\u043b\u043e\u043a "

    const-string v8, " \u00b7 block "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

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

    .line 1283
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPauseReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/AiText;->state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_46b

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    .line 1290
    :goto_98
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v0, v2, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$700(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1291
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v8

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v8, v10

    double-to-float v1, v8

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setProgress(F)V

    .line 1292
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$total:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v8, v2

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v8

    .line 1295
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_47f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v10, 0x2710

    cmp-long v0, v0, v10

    if-gez v0, :cond_47f

    const/4 v0, 0x1

    .line 1296
    :goto_10a
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_4b3

    if-eqz v0, :cond_4b3

    .line 1297
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v1, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1298
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v0, v8, v9}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 1299
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1300
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_482

    const/4 v0, 0x0

    :goto_139
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    double-to-float v7, v10

    invoke-virtual {v2, v0, v7}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setBand(FF)V

    .line 1301
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xCap:D

    double-to-float v2, v10

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setCap(F)V

    .line 1302
    float-to-double v10, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpl-double v0, v10, v12

    if-lez v0, :cond_489

    const/4 v0, 0x1

    .line 1303
    :goto_155
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_48c

    float-to-double v10, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v12, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpg-double v1, v10, v12

    if-gez v1, :cond_48c

    const/4 v1, 0x1

    .line 1304
    :goto_169
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_48f

    const-string v2, "\u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "above corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_175
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_4a5

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_17e
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1308
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    int-to-double v10, v0

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_4af

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    :goto_18e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1317
    :goto_191
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v0

    .line 1318
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    double-to-float v7, v0

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v2, v7, v8}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1319
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthVal:Landroid/widget/TextView;

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

    .line 1320
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

    .line 1319
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigue()D

    move-result-wide v0

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigueMax()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double v8, v0, v8

    .line 1322
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-float v2, v10

    const-wide v10, 0x3feb333333333333L    # 0.85

    cmpl-double v0, v8, v10

    if-lez v0, :cond_4ec

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_203
    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1323
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueVal:Landroid/widget/TextView;

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

    .line 1324
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v0

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v0, v8

    .line 1325
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1326
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v1, v6

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->setMarker(F)V

    .line 1327
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

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

    .line 1328
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v0

    .line 1329
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$kcalVal:Landroid/widget/TextView;

    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-ltz v6, :cond_4f0

    .line 1330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kcal  \u00b7  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0430\u043a\u0442\u0438\u0432\u043d\u0438 "

    const-string v6, "active "

    .line 1330
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getActiveKcal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    :goto_2db
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getU()D

    move-result-wide v0

    const-wide v6, 0x3fefd70a3d70a3d7L    # 0.995

    cmpg-double v0, v0, v6

    if-ltz v0, :cond_305

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v6

    if-ltz v0, :cond_305

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_4f4

    :cond_305
    const/4 v0, 0x1

    .line 1332
    :goto_306
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    if-eqz v0, :cond_4f7

    const/4 v0, 0x0

    :goto_30b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1333
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041a\u043e\u0440\u0435\u043a\u0446\u0438\u044f \u043f\u043e \u043f\u0443\u043b\u0441\u0430 "

    const-string v6, "HR correction "

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

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

    .line 1334
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_4fb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 \u0440\u044a\u0447\u043d\u043e "

    const-string v7, " \u00b7 manual "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

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

    :goto_370
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1335
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_4ff

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v7, " \u00b7 sensation "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

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

    :goto_3ac
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1333
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1336
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiText;->action(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionAge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastActionMs()J

    move-result-wide v6

    sub-long v6, v4, v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_503

    const-string v0, "\u25b6  \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v2, "\u25b6  Resume"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3ec
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v3, v0, :cond_3f7

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_50d

    :cond_3f7
    const/4 v0, 0x1

    .line 1342
    :goto_3f8
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    if-nez v0, :cond_400

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v1, :cond_510

    :cond_400
    const/4 v1, 0x0

    :goto_401
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1343
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$reduceBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_514

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v1

    if-eqz v1, :cond_514

    const/4 v1, 0x0

    :goto_411
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1344
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$increaseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_518

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v1

    if-eqz v1, :cond_518

    const/4 v1, 0x0

    :goto_421
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1345
    if-eqz v0, :cond_51c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-eqz v0, :cond_51c

    const/4 v0, 0x1

    .line 1346
    :goto_42f
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_51f

    const/4 v1, 0x0

    :goto_434
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1347
    if-eqz v0, :cond_45d

    .line 1348
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-eqz v0, :cond_523

    .line 1349
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0432\u043a\u043b."

    const-string v2, "Double impulse: on"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1348
    :goto_44b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-eqz v0, :cond_52d

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_45a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1353
    :cond_45d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$overlay:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$800(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    .line 1354
    return-void

    .line 1284
    :cond_467
    const-string v0, ""

    goto/16 :goto_78

    .line 1288
    :cond_46b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_473

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    goto/16 :goto_98

    .line 1289
    :cond_473
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_47b

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    goto/16 :goto_98

    :cond_47b
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    goto/16 :goto_98

    .line 1295
    :cond_47f
    const/4 v0, 0x0

    goto/16 :goto_10a

    .line 1300
    :cond_482
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    double-to-float v0, v10

    goto/16 :goto_139

    .line 1302
    :cond_489
    const/4 v0, 0x0

    goto/16 :goto_155

    .line 1303
    :cond_48c
    const/4 v1, 0x0

    goto/16 :goto_169

    .line 1305
    :cond_48f
    if-eqz v1, :cond_49b

    const-string v2, "\u043f\u043e\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "below corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_175

    .line 1306
    :cond_49b
    const-string v2, "\u0432 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "in corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_175

    .line 1307
    :cond_4a5
    if-eqz v1, :cond_4ab

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto/16 :goto_17e

    :cond_4ab
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_17e

    .line 1308
    :cond_4af
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto/16 :goto_18e

    .line 1310
    :cond_4b3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1312
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1313
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_4e3

    const-string v0, "\u043d\u044f\u043c\u0430 \u0441\u0432\u0435\u0436 \u043f\u0443\u043b\u0441"

    const-string v2, "no fresh HR"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4d7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_191

    .line 1314
    :cond_4e3
    const-string v0, "\u0431\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "no band"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d7

    .line 1322
    :cond_4ec
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto/16 :goto_203

    .line 1330
    :cond_4f0
    const-string v0, ""

    goto/16 :goto_2db

    .line 1331
    :cond_4f4
    const/4 v0, 0x0

    goto/16 :goto_306

    .line 1332
    :cond_4f7
    const/16 v0, 0x8

    goto/16 :goto_30b

    .line 1334
    :cond_4fb
    const-string v0, ""

    goto/16 :goto_370

    .line 1335
    :cond_4ff
    const-string v0, ""

    goto/16 :goto_3ac

    .line 1339
    :cond_503
    const-string v0, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v2, "\u275a\u275a  Pause"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3ec

    .line 1341
    :cond_50d
    const/4 v0, 0x0

    goto/16 :goto_3f8

    .line 1342
    :cond_510
    const/16 v1, 0x8

    goto/16 :goto_401

    .line 1343
    :cond_514
    const/16 v1, 0x8

    goto/16 :goto_411

    .line 1344
    :cond_518
    const/16 v1, 0x8

    goto/16 :goto_421

    .line 1345
    :cond_51c
    const/4 v0, 0x0

    goto/16 :goto_42f

    .line 1346
    :cond_51f
    const/16 v1, 0x8

    goto/16 :goto_434

    .line 1350
    :cond_523
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0438\u0437\u043a\u043b."

    const-string v2, "Double impulse: off"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44b

    .line 1351
    :cond_52d
    const v0, 0x3f333333    # 0.7f

    goto/16 :goto_45a
.end method
