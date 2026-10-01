.class Lcom/isaigu/gymapp/ai/AiUi$24;
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
    .line 1340
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$phaseName:Landroid/widget/TextView;

    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$withEx:Z

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exName:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exNext:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$phaseLeft:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$stateChip:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$a:Landroid/content/Context;

    iput-object p10, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    iput-object p11, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iput-object p12, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$total:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iput-object p14, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$hrVal:Landroid/widget/TextView;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$zone:Landroid/widget/TextView;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$strengthVal:Landroid/widget/TextView;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$fatigueVal:Landroid/widget/TextView;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$doseVal:Landroid/widget/TextView;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$kcalVal:Landroid/widget/TextView;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$ctrlVal:Landroid/widget/TextView;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$actionText:Landroid/widget/TextView;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$actionAge:Landroid/widget/TextView;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$pauseBtn:Landroid/widget/TextView;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$reduceBtn:Landroid/widget/TextView;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$increaseBtn:Landroid/widget/TextView;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$doubleBtn:Landroid/widget/TextView;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$overlay:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1344
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v6

    .line 1345
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v7

    .line 1346
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 1347
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$phaseName:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$phaseName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1349
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getExercises()Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v8

    .line 1350
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$withEx:Z

    if-eqz v0, :cond_175

    if-eqz v8, :cond_175

    .line 1351
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8, v0}, Lcom/isaigu/gymapp/ai/AiExercises;->current(Lcom/isaigu/gymapp/ai/AiEngine;)Ljava/lang/String;

    move-result-object v1

    .line 1352
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->next()Ljava/lang/String;

    move-result-object v2

    .line 1354
    if-eqz v1, :cond_5b6

    move-object v0, v1

    .line 1355
    :goto_3d
    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_5b9

    const/4 v3, 0x0

    :goto_42
    invoke-virtual {v9, v3}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 1356
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1357
    if-eqz v1, :cond_5bc

    .line 1358
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

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

    .line 1362
    :goto_62
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getWorkout()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_5c7

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isSetComplete()Z

    move-result v0

    if-nez v0, :cond_5c7

    const/4 v0, 0x1

    .line 1363
    :goto_6f
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exName:Landroid/widget/TextView;

    if-eqz v1, :cond_5ca

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_77
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exName:Landroid/widget/TextView;

    if-eqz v1, :cond_5fa

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    :goto_80
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1367
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->set()[I

    move-result-object v3

    .line 1368
    const-string v0, ""

    .line 1369
    if-eqz v3, :cond_126

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getWorkout()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v9

    if-eqz v9, :cond_126

    .line 1370
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getWorkout()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 1371
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0421\u0435\u0440\u0438\u044f "

    const-string v11, "Set "

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v3, v3, v10

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1372
    if-eqz v1, :cond_5fe

    .line 1373
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 \u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u0435 "

    const-string v11, " \u00b7 rep "

    .line 1372
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getRepsDone()I

    move-result v10

    iget v11, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1373
    :goto_f6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getRound()I

    move-result v0

    const/4 v9, 0x1

    if-le v0, v9, :cond_602

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " \u00b7 \u043a\u0440\u044a\u0433 "

    const-string v10, " \u00b7 round "

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getRound()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1375
    :cond_126
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_60a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isEasier()Z

    move-result v0

    if-eqz v0, :cond_606

    if-eqz v1, :cond_606

    const-string v0, " \u00b7 \u043f\u043e-\u043b\u0435\u043a\u043e"

    const-string v10, " \u00b7 easier"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_147
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_14f
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exNext:Landroid/widget/TextView;

    if-eqz v1, :cond_643

    if-nez v2, :cond_643

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isEasier()Z

    move-result v0

    if-eqz v0, :cond_643

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_160
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1379
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exNext:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_647

    const/4 v0, 0x0

    :goto_172
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1381
    :cond_175
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$phaseLeft:Landroid/widget/TextView;

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

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPhaseElapsedS()D

    move-result-wide v8

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1382
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isInBlock()Z

    move-result v0

    if-eqz v0, :cond_64b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 \u0431\u043b\u043e\u043a "

    const-string v8, " \u00b7 block "

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1381
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$stateChip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPauseReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AiText;->state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_64f

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    .line 1388
    :goto_1e7
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$stateChip:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$a:Landroid/content/Context;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v0, v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$1400(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1389
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$tl:Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v2

    const/4 v1, 0x1

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v8, v1

    div-double/2addr v2, v8

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setProgress(F)V

    .line 1390
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$total:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1392
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v8

    .line 1393
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_663

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_663

    const/4 v0, 0x1

    .line 1394
    :goto_259
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_697

    if-eqz v0, :cond_697

    .line 1395
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$hrVal:Landroid/widget/TextView;

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v0, v8, v9}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 1397
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1398
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_666

    const/4 v0, 0x0

    :goto_288
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    double-to-float v3, v10

    invoke-virtual {v2, v0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setBand(FF)V

    .line 1399
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xCap:D

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setCap(F)V

    .line 1400
    float-to-double v2, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpl-double v0, v2, v10

    if-lez v0, :cond_66d

    const/4 v0, 0x1

    .line 1401
    :goto_2a4
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_670

    float-to-double v2, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpg-double v1, v2, v10

    if-gez v1, :cond_670

    const/4 v1, 0x1

    .line 1402
    :goto_2b8
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_673

    const-string v2, "\u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "above corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2c4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_689

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_2cd
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1406
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$hrVal:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    int-to-double v2, v0

    cmpl-double v0, v8, v2

    if-ltz v0, :cond_693

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    :goto_2dd
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1415
    :goto_2e0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v0

    .line 1416
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    double-to-float v3, v0

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1417
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$strengthVal:Landroid/widget/TextView;

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

    .line 1418
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

    .line 1417
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigue()D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigueMax()D

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double v2, v0, v2

    .line 1420
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const-wide v10, 0x3feb333333333333L    # 0.85

    cmpl-double v0, v2, v10

    if-lez v0, :cond_6d0

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_352
    invoke-virtual {v1, v8, v0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1421
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$fatigueVal:Landroid/widget/TextView;

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

    .line 1422
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 1423
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1424
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getQBudget()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    div-double/2addr v2, v8

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->setMarker(F)V

    .line 1425
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$doseVal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$plan:Lcom/isaigu/gymapp/ai/AiModel$Plan;

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

    .line 1426
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v0

    .line 1427
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$kcalVal:Landroid/widget/TextView;

    const-wide/16 v8, 0x0

    cmpl-double v3, v0, v8

    if-ltz v3, :cond_6d4

    .line 1428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1427
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kcal  \u00b7  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0430\u043a\u0442\u0438\u0432\u043d\u0438 "

    const-string v3, "active "

    .line 1428
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

    .line 1427
    :goto_42a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getU()D

    move-result-wide v0

    const-wide v2, 0x3fefd70a3d70a3d7L    # 0.995

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_454

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_454

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6d8

    :cond_454
    const/4 v0, 0x1

    .line 1430
    :goto_455
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$ctrlVal:Landroid/widget/TextView;

    if-eqz v0, :cond_6db

    const/4 v0, 0x0

    :goto_45a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1431
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$ctrlVal:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041a\u043e\u0440\u0435\u043a\u0446\u0438\u044f \u043f\u043e \u043f\u0443\u043b\u0441\u0430 "

    const-string v3, "HR correction "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

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

    .line 1432
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_6df

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 \u0440\u044a\u0447\u043d\u043e "

    const-string v7, " \u00b7 manual "

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

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

    :goto_4bf
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1433
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_6e3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v7, " \u00b7 sensation "

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

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

    :goto_4fb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1431
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$actionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiText;->action(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$actionAge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastActionMs()J

    move-result-wide v2

    sub-long v2, v4, v2

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$pauseBtn:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_6e7

    const-string v0, "\u25b6  \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v2, "\u25b6  Resume"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_53b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v6, v0, :cond_546

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_6f1

    :cond_546
    const/4 v0, 0x1

    .line 1440
    :goto_547
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$pauseBtn:Landroid/widget/TextView;

    if-nez v0, :cond_54f

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v1, :cond_6f4

    :cond_54f
    const/4 v1, 0x0

    :goto_550
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1441
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$reduceBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_6f8

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v1

    if-eqz v1, :cond_6f8

    const/4 v1, 0x0

    :goto_560
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1442
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$increaseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_6fc

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v1

    if-eqz v1, :cond_6fc

    const/4 v1, 0x0

    :goto_570
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1443
    if-eqz v0, :cond_700

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-eqz v0, :cond_700

    const/4 v0, 0x1

    .line 1444
    :goto_57e
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$doubleBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_703

    const/4 v1, 0x0

    :goto_583
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1445
    if-eqz v0, :cond_5ac

    .line 1446
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-eqz v0, :cond_707

    .line 1447
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0432\u043a\u043b."

    const-string v2, "Double impulse: on"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    :goto_59a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-eqz v0, :cond_711

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_5a9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1451
    :cond_5ac
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$a:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$overlay:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$1500(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    .line 1452
    return-void

    :cond_5b6
    move-object v0, v2

    .line 1354
    goto/16 :goto_3d

    .line 1355
    :cond_5b9
    const/4 v3, 0x4

    goto/16 :goto_42

    .line 1360
    :cond_5bc
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    const-wide/16 v10, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x2

    invoke-virtual {v0, v10, v11, v3, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    goto/16 :goto_62

    .line 1362
    :cond_5c7
    const/4 v0, 0x0

    goto/16 :goto_6f

    .line 1364
    :cond_5ca
    if-eqz v2, :cond_5f6

    .line 1365
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    if-eqz v0, :cond_5ed

    const-string v0, "\u041a\u0440\u0430\u0442\u043a\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u00b7 \u043f\u043e\u0441\u043b\u0435 \u043f\u0430\u043a: "

    const-string v10, "Short rest \u00b7 then again: "

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    :goto_5db
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_77

    :cond_5ed
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v10, "Next: "

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5db

    :cond_5f6
    const-string v0, ""

    goto/16 :goto_77

    .line 1366
    :cond_5fa
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_80

    .line 1373
    :cond_5fe
    const-string v0, ""

    goto/16 :goto_f6

    :cond_602
    const-string v0, ""

    goto/16 :goto_11e

    .line 1375
    :cond_606
    const-string v0, ""

    goto/16 :goto_147

    .line 1376
    :cond_60a
    if-eqz v1, :cond_62d

    if-eqz v2, :cond_62d

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

    goto/16 :goto_14f

    .line 1377
    :cond_62d
    if-eqz v1, :cond_63f

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isEasier()Z

    move-result v0

    if-eqz v0, :cond_63f

    const-string v0, "\u041f\u043e-\u043b\u0435\u043a\u043e \u2014 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u0435 \u0432\u0438\u0441\u043e\u043a\u0430"

    const-string v9, "Easier \u2014 fatigue is high"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14f

    :cond_63f
    const-string v0, ""

    goto/16 :goto_14f

    .line 1378
    :cond_643
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_160

    .line 1379
    :cond_647
    const/16 v0, 0x8

    goto/16 :goto_172

    .line 1382
    :cond_64b
    const-string v0, ""

    goto/16 :goto_1c7

    .line 1386
    :cond_64f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_657

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    goto/16 :goto_1e7

    .line 1387
    :cond_657
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_65f

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    goto/16 :goto_1e7

    :cond_65f
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    goto/16 :goto_1e7

    .line 1393
    :cond_663
    const/4 v0, 0x0

    goto/16 :goto_259

    .line 1398
    :cond_666
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    double-to-float v0, v10

    goto/16 :goto_288

    .line 1400
    :cond_66d
    const/4 v0, 0x0

    goto/16 :goto_2a4

    .line 1401
    :cond_670
    const/4 v1, 0x0

    goto/16 :goto_2b8

    .line 1403
    :cond_673
    if-eqz v1, :cond_67f

    const-string v2, "\u043f\u043e\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "below corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c4

    .line 1404
    :cond_67f
    const-string v2, "\u0432 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "in corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c4

    .line 1405
    :cond_689
    if-eqz v1, :cond_68f

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto/16 :goto_2cd

    :cond_68f
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_2cd

    .line 1406
    :cond_693
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto/16 :goto_2dd

    .line 1408
    :cond_697
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$hrVal:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$hrVal:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1410
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1411
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$zone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_6c7

    const-string v0, "\u043d\u044f\u043c\u0430 \u0441\u0432\u0435\u0436 \u043f\u0443\u043b\u0441"

    const-string v2, "no fresh HR"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6bb
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$24;->val$zone:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2e0

    .line 1412
    :cond_6c7
    const-string v0, "\u0431\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "no band"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6bb

    .line 1420
    :cond_6d0
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto/16 :goto_352

    .line 1428
    :cond_6d4
    const-string v0, ""

    goto/16 :goto_42a

    .line 1429
    :cond_6d8
    const/4 v0, 0x0

    goto/16 :goto_455

    .line 1430
    :cond_6db
    const/16 v0, 0x8

    goto/16 :goto_45a

    .line 1432
    :cond_6df
    const-string v0, ""

    goto/16 :goto_4bf

    .line 1433
    :cond_6e3
    const-string v0, ""

    goto/16 :goto_4fb

    .line 1437
    :cond_6e7
    const-string v0, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v2, "\u275a\u275a  Pause"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53b

    .line 1439
    :cond_6f1
    const/4 v0, 0x0

    goto/16 :goto_547

    .line 1440
    :cond_6f4
    const/16 v1, 0x8

    goto/16 :goto_550

    .line 1441
    :cond_6f8
    const/16 v1, 0x8

    goto/16 :goto_560

    .line 1442
    :cond_6fc
    const/16 v1, 0x8

    goto/16 :goto_570

    .line 1443
    :cond_700
    const/4 v0, 0x0

    goto/16 :goto_57e

    .line 1444
    :cond_703
    const/16 v1, 0x8

    goto/16 :goto_583

    .line 1448
    :cond_707
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0438\u0437\u043a\u043b."

    const-string v2, "Double impulse: off"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_59a

    .line 1449
    :cond_711
    const v0, 0x3f333333    # 0.7f

    goto/16 :goto_5a9
.end method
