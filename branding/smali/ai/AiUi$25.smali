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

.field final synthetic val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

.field final synthetic val$exName:Landroid/widget/TextView;

.field final synthetic val$exNext:Landroid/widget/TextView;

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

.field final synthetic val$withEx:Z

.field final synthetic val$zone:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/TextView;ZLcom/isaigu/gymapp/ai/ExerciseFigure;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiViews$Timeline;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiModel$Profile;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$withEx:Z

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exName:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exNext:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseLeft:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iput-object p10, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    iput-object p11, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iput-object p12, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$total:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iput-object p14, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthVal:Landroid/widget/TextView;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueVal:Landroid/widget/TextView;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseVal:Landroid/widget/TextView;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$kcalVal:Landroid/widget/TextView;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionText:Landroid/widget/TextView;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionAge:Landroid/widget/TextView;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$reduceBtn:Landroid/widget/TextView;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$increaseBtn:Landroid/widget/TextView;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$overlay:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1237
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v6

    .line 1238
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v7

    .line 1239
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 1240
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1242
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getExercises()Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v8

    .line 1243
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$withEx:Z

    if-eqz v0, :cond_bf

    if-eqz v8, :cond_bf

    .line 1244
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8, v0}, Lcom/isaigu/gymapp/ai/AiExercises;->current(Lcom/isaigu/gymapp/ai/AiEngine;)Ljava/lang/String;

    move-result-object v1

    .line 1245
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->next()Ljava/lang/String;

    move-result-object v2

    .line 1247
    if-eqz v1, :cond_500

    move-object v0, v1

    .line 1248
    :goto_3d
    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_503

    const/4 v3, 0x0

    :goto_42
    invoke-virtual {v9, v3}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 1249
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1250
    if-eqz v1, :cond_506

    .line 1251
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getCycleStartMs()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getOnS()I

    move-result v3

    const/4 v9, 0x1

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getOffS()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v0, v10, v11, v3, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    .line 1255
    :goto_62
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exName:Landroid/widget/TextView;

    if-eqz v1, :cond_511

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6a
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exName:Landroid/widget/TextView;

    if-eqz v1, :cond_536

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    :goto_73
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1258
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exNext:Landroid/widget/TextView;

    if-eqz v1, :cond_53a

    if-eqz v2, :cond_53a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v10, "Next: "

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_99
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1260
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exNext:Landroid/widget/TextView;

    if-eqz v1, :cond_550

    if-nez v2, :cond_550

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isEasier()Z

    move-result v0

    if-eqz v0, :cond_550

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_aa
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1261
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exNext:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_554

    const/4 v0, 0x0

    :goto_bc
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1263
    :cond_bf
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseLeft:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 "

    const-string v3, "remaining "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v2, v2

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v8

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1264
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isInBlock()Z

    move-result v0

    if-eqz v0, :cond_558

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 \u0431\u043b\u043e\u043a "

    const-string v8, " \u00b7 block "

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPauseReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AiText;->state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_55c

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    .line 1270
    :goto_131
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v0, v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1271
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v2

    const/4 v1, 0x1

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v8, v1

    div-double/2addr v2, v8

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setProgress(F)V

    .line 1272
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$total:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v8

    .line 1275
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_570

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_570

    const/4 v0, 0x1

    .line 1276
    :goto_1a3
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_5a4

    if-eqz v0, :cond_5a4

    .line 1277
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v0, v8, v9}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 1279
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1280
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_573

    const/4 v0, 0x0

    :goto_1d2
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    double-to-float v3, v10

    invoke-virtual {v2, v0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setBand(FF)V

    .line 1281
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xCap:D

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setCap(F)V

    .line 1282
    float-to-double v2, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpl-double v0, v2, v10

    if-lez v0, :cond_57a

    const/4 v0, 0x1

    .line 1283
    :goto_1ee
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_57d

    float-to-double v2, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpg-double v1, v2, v10

    if-gez v1, :cond_57d

    const/4 v1, 0x1

    .line 1284
    :goto_202
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_580

    const-string v2, "\u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "above corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_20e
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_596

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_217
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1288
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    int-to-double v2, v0

    cmpl-double v0, v8, v2

    if-ltz v0, :cond_5a0

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    :goto_227
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1297
    :goto_22a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v0

    .line 1298
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    double-to-float v3, v0

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1299
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthVal:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "%  \u00b7  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v8

    .line 1300
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% \u043e\u0442 \u043a\u0430\u043b\u0438\u0431\u0440."

    const-string v3, "% of calib."

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1299
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigue()D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigueMax()D

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double v2, v0, v2

    .line 1302
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const-wide v10, 0x3feb333333333333L    # 0.85

    cmpl-double v0, v2, v10

    if-lez v0, :cond_5dd

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_29c
    invoke-virtual {v1, v8, v0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1303
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 1305
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1306
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v2, v8

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->setMarker(F)V

    .line 1307
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v10, v7, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% \u043e\u0442 \u043f\u043b\u0430\u043d\u0430"

    const-string v3, "% of plan"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1308
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v0

    .line 1309
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$kcalVal:Landroid/widget/TextView;

    const-wide/16 v8, 0x0

    cmpl-double v3, v0, v8

    if-ltz v3, :cond_5e1

    .line 1310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1309
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kcal  \u00b7  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0430\u043a\u0442\u0438\u0432\u043d\u0438 "

    const-string v3, "active "

    .line 1310
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getActiveKcal()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1309
    :goto_374
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getU()D

    move-result-wide v0

    const-wide v2, 0x3fefd70a3d70a3d7L    # 0.995

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_39e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_39e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5e5

    :cond_39e
    const/4 v0, 0x1

    .line 1312
    :goto_39f
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    if-eqz v0, :cond_5e8

    const/4 v0, 0x0

    :goto_3a4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041a\u043e\u0440\u0435\u043a\u0446\u0438\u044f \u043f\u043e \u043f\u0443\u043b\u0441\u0430 "

    const-string v3, "HR correction "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getU()D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1314
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_5ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 \u0440\u044a\u0447\u043d\u043e "

    const-string v7, " \u00b7 manual "

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_409
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1315
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_5f0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v7, " \u00b7 sensation "

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_445
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiText;->action(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionAge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastActionMs()J

    move-result-wide v2

    sub-long v2, v4, v2

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_5f4

    const-string v0, "\u25b6  \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v2, "\u25b6  Resume"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_485
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v6, v0, :cond_490

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_5fe

    :cond_490
    const/4 v0, 0x1

    .line 1322
    :goto_491
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    if-nez v0, :cond_499

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v1, :cond_601

    :cond_499
    const/4 v1, 0x0

    :goto_49a
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1323
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$reduceBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_605

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v1

    if-eqz v1, :cond_605

    const/4 v1, 0x0

    :goto_4aa
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1324
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$increaseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_609

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v1

    if-eqz v1, :cond_609

    const/4 v1, 0x0

    :goto_4ba
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1325
    if-eqz v0, :cond_60d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-eqz v0, :cond_60d

    const/4 v0, 0x1

    .line 1326
    :goto_4c8
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_610

    const/4 v1, 0x0

    :goto_4cd
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1327
    if-eqz v0, :cond_4f6

    .line 1328
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-eqz v0, :cond_614

    .line 1329
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0432\u043a\u043b."

    const-string v2, "Double impulse: on"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    :goto_4e4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-eqz v0, :cond_61e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4f3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1333
    :cond_4f6
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$overlay:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$1100(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    .line 1334
    return-void

    :cond_500
    move-object v0, v2

    .line 1247
    goto/16 :goto_3d

    .line 1248
    :cond_503
    const/4 v3, 0x4

    goto/16 :goto_42

    .line 1253
    :cond_506
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    const-wide/16 v10, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x2

    invoke-virtual {v0, v10, v11, v3, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    goto/16 :goto_62

    .line 1256
    :cond_511
    if-eqz v2, :cond_532

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v10, "Next: "

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6a

    :cond_532
    const-string v0, ""

    goto/16 :goto_6a

    .line 1257
    :cond_536
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_73

    .line 1259
    :cond_53a
    if-eqz v1, :cond_54c

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isEasier()Z

    move-result v0

    if-eqz v0, :cond_54c

    const-string v0, "\u041f\u043e-\u043b\u0435\u043a\u043e \u2014 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u0435 \u0432\u0438\u0441\u043e\u043a\u0430"

    const-string v9, "Easier \u2014 fatigue is high"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_99

    :cond_54c
    const-string v0, ""

    goto/16 :goto_99

    .line 1260
    :cond_550
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_aa

    .line 1261
    :cond_554
    const/16 v0, 0x8

    goto/16 :goto_bc

    .line 1264
    :cond_558
    const-string v0, ""

    goto/16 :goto_111

    .line 1268
    :cond_55c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_564

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    goto/16 :goto_131

    .line 1269
    :cond_564
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_56c

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    goto/16 :goto_131

    :cond_56c
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    goto/16 :goto_131

    .line 1275
    :cond_570
    const/4 v0, 0x0

    goto/16 :goto_1a3

    .line 1280
    :cond_573
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    double-to-float v0, v10

    goto/16 :goto_1d2

    .line 1282
    :cond_57a
    const/4 v0, 0x0

    goto/16 :goto_1ee

    .line 1283
    :cond_57d
    const/4 v1, 0x0

    goto/16 :goto_202

    .line 1285
    :cond_580
    if-eqz v1, :cond_58c

    const-string v2, "\u043f\u043e\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "below corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_20e

    .line 1286
    :cond_58c
    const-string v2, "\u0432 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "in corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_20e

    .line 1287
    :cond_596
    if-eqz v1, :cond_59c

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto/16 :goto_217

    :cond_59c
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_217

    .line 1288
    :cond_5a0
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto/16 :goto_227

    .line 1290
    :cond_5a4
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1292
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1293
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_5d4

    const-string v0, "\u043d\u044f\u043c\u0430 \u0441\u0432\u0435\u0436 \u043f\u0443\u043b\u0441"

    const-string v2, "no fresh HR"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5c8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_22a

    .line 1294
    :cond_5d4
    const-string v0, "\u0431\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "no band"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5c8

    .line 1302
    :cond_5dd
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto/16 :goto_29c

    .line 1310
    :cond_5e1
    const-string v0, ""

    goto/16 :goto_374

    .line 1311
    :cond_5e5
    const/4 v0, 0x0

    goto/16 :goto_39f

    .line 1312
    :cond_5e8
    const/16 v0, 0x8

    goto/16 :goto_3a4

    .line 1314
    :cond_5ec
    const-string v0, ""

    goto/16 :goto_409

    .line 1315
    :cond_5f0
    const-string v0, ""

    goto/16 :goto_445

    .line 1319
    :cond_5f4
    const-string v0, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v2, "\u275a\u275a  Pause"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_485

    .line 1321
    :cond_5fe
    const/4 v0, 0x0

    goto/16 :goto_491

    .line 1322
    :cond_601
    const/16 v1, 0x8

    goto/16 :goto_49a

    .line 1323
    :cond_605
    const/16 v1, 0x8

    goto/16 :goto_4aa

    .line 1324
    :cond_609
    const/16 v1, 0x8

    goto/16 :goto_4ba

    .line 1325
    :cond_60d
    const/4 v0, 0x0

    goto/16 :goto_4c8

    .line 1326
    :cond_610
    const/16 v1, 0x8

    goto/16 :goto_4cd

    .line 1330
    :cond_614
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0438\u0437\u043a\u043b."

    const-string v2, "Double impulse: off"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4e4

    .line 1331
    :cond_61e
    const v0, 0x3f333333    # 0.7f

    goto/16 :goto_4f3
.end method
