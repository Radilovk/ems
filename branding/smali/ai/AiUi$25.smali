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
    .line 1277
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
    .line 1280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1281
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v6

    .line 1282
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v7

    .line 1283
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v0

    .line 1284
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$phaseName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1286
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getExercises()Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v8

    .line 1287
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$withEx:Z

    if-eqz v0, :cond_174

    if-eqz v8, :cond_174

    .line 1288
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8, v0}, Lcom/isaigu/gymapp/ai/AiExercises;->current(Lcom/isaigu/gymapp/ai/AiEngine;)Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->next()Ljava/lang/String;

    move-result-object v2

    .line 1291
    if-eqz v1, :cond_5b5

    move-object v0, v1

    .line 1292
    :goto_3d
    iget-object v9, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    if-eqz v0, :cond_5b8

    const/4 v3, 0x0

    :goto_42
    invoke-virtual {v9, v3}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setVisibility(I)V

    .line 1293
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setExercise(Ljava/lang/String;)V

    .line 1294
    if-eqz v1, :cond_5bb

    .line 1295
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

    .line 1299
    :goto_62
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getWorkout()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_5c6

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isSetComplete()Z

    move-result v0

    if-nez v0, :cond_5c6

    const/4 v0, 0x1

    .line 1300
    :goto_6f
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exName:Landroid/widget/TextView;

    if-eqz v1, :cond_5c9

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_77
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exName:Landroid/widget/TextView;

    if-eqz v1, :cond_5f9

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    :goto_80
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1304
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->set()[I

    move-result-object v3

    .line 1305
    const-string v0, ""

    .line 1306
    if-eqz v3, :cond_125

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getWorkout()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v9

    if-eqz v9, :cond_125

    .line 1307
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getWorkout()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->items:Ljava/util/List;

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Item;

    .line 1308
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0421\u0435\u0440\u0438\u044f "

    const-string v11, "Set "

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v3, v3, v10

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v9, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->sets:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1309
    if-eqz v1, :cond_5fd

    .line 1310
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 \u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u0435 "

    const-string v11, " \u00b7 rep "

    .line 1309
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getRepsDone()I

    move-result v10

    iget v11, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v0, Lcom/isaigu/gymapp/ai/Workout$Item;->reps:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1310
    :goto_f5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->getRound()I

    move-result v0

    const/4 v9, 0x1

    if-le v0, v9, :cond_601

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

    :goto_11d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1312
    :cond_125
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_609

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isEasier()Z

    move-result v0

    if-eqz v0, :cond_605

    if-eqz v1, :cond_605

    const-string v0, " \u00b7 \u043f\u043e-\u043b\u0435\u043a\u043e"

    const-string v10, " \u00b7 easier"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_146
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_14e
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exNext:Landroid/widget/TextView;

    if-eqz v1, :cond_642

    if-nez v2, :cond_642

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isEasier()Z

    move-result v0

    if-eqz v0, :cond_642

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_15f
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1316
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exNext:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exNext:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_646

    const/4 v0, 0x0

    :goto_171
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1318
    :cond_174
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

    .line 1319
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isInBlock()Z

    move-result v0

    if-eqz v0, :cond_64a

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

    :goto_1c6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$stateChip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPauseReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/ai/AiText;->state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_64e

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    .line 1325
    :goto_1e6
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

    .line 1326
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

    .line 1327
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

    .line 1329
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v8

    .line 1330
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_662

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_662

    const/4 v0, 0x1

    .line 1331
    :goto_258
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_696

    if-eqz v0, :cond_696

    .line 1332
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    invoke-virtual {v0, v8, v9}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xOf(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 1334
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1335
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_665

    const/4 v0, 0x0

    :goto_287
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v3, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    double-to-float v3, v10

    invoke-virtual {v2, v0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setBand(FF)V

    .line 1336
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xCap:D

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setCap(F)V

    .line 1337
    float-to-double v2, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    cmpl-double v0, v2, v10

    if-lez v0, :cond_66c

    const/4 v0, 0x1

    .line 1338
    :goto_2a3
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_66f

    float-to-double v2, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    cmpg-double v1, v2, v10

    if-gez v1, :cond_66f

    const/4 v1, 0x1

    .line 1339
    :goto_2b7
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_672

    const-string v2, "\u043d\u0430\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "above corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2c3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    if-eqz v0, :cond_688

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_2cc
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1343
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    int-to-double v2, v0

    cmpl-double v0, v8, v2

    if-ltz v0, :cond_692

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    :goto_2dc
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1352
    :goto_2df
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCurrentFrac()D

    move-result-wide v0

    .line 1353
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$strengthBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    double-to-float v3, v0

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1354
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

    .line 1355
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

    .line 1354
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
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

    .line 1357
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$fatigueBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const-wide v10, 0x3feb333333333333L    # 0.85

    cmpl-double v0, v2, v10

    if-lez v0, :cond_6cf

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    :goto_351
    invoke-virtual {v1, v8, v0}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1358
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

    .line 1359
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

    .line 1360
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doseBar:Lcom/isaigu/gymapp/ai/AiViews$Bar;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;->set(FI)V

    .line 1361
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

    .line 1362
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

    .line 1363
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v0

    .line 1364
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$kcalVal:Landroid/widget/TextView;

    const-wide/16 v8, 0x0

    cmpl-double v3, v0, v8

    if-ltz v3, :cond_6d3

    .line 1365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kcal  \u00b7  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0430\u043a\u0442\u0438\u0432\u043d\u0438 "

    const-string v3, "active "

    .line 1365
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

    .line 1364
    :goto_429
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getU()D

    move-result-wide v0

    const-wide v2, 0x3fefd70a3d70a3d7L    # 0.995

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_453

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_453

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6d7

    :cond_453
    const/4 v0, 0x1

    .line 1367
    :goto_454
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ctrlVal:Landroid/widget/TextView;

    if-eqz v0, :cond_6da

    const/4 v0, 0x0

    :goto_459
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1368
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

    .line 1369
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getUUser()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_6de

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

    :goto_4be
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1370
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCeilingScale()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_6e2

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

    :goto_4fa
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1368
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$actionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLastAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiText;->action(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
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

    .line 1373
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_6e6

    const-string v0, "\u25b6  \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v2, "\u25b6  Resume"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_53a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-eq v6, v0, :cond_545

    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_6f0

    :cond_545
    const/4 v0, 0x1

    .line 1377
    :goto_546
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$pauseBtn:Landroid/widget/TextView;

    if-nez v0, :cond_54e

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v1, :cond_6f3

    :cond_54e
    const/4 v1, 0x0

    :goto_54f
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1378
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$reduceBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_6f7

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->canReduce()Z

    move-result v1

    if-eqz v1, :cond_6f7

    const/4 v1, 0x0

    :goto_55f
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$increaseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_6fb

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->canIncrease()Z

    move-result v1

    if-eqz v1, :cond_6fb

    const/4 v1, 0x0

    :goto_56f
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1380
    if-eqz v0, :cond_6ff

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseAvailable()Z

    move-result v0

    if-eqz v0, :cond_6ff

    const/4 v0, 0x1

    .line 1381
    :goto_57d
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_702

    const/4 v1, 0x0

    :goto_582
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1382
    if-eqz v0, :cond_5ab

    .line 1383
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-eqz v0, :cond_706

    .line 1384
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0432\u043a\u043b."

    const-string v2, "Double impulse: on"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1383
    :goto_599
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$doubleBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-eqz v0, :cond_710

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_5a8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1388
    :cond_5ab
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$overlay:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$1100(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    .line 1389
    return-void

    :cond_5b5
    move-object v0, v2

    .line 1291
    goto/16 :goto_3d

    .line 1292
    :cond_5b8
    const/4 v3, 0x4

    goto/16 :goto_42

    .line 1297
    :cond_5bb
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$exFig:Lcom/isaigu/gymapp/ai/ExerciseFigure;

    const-wide/16 v10, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x2

    invoke-virtual {v0, v10, v11, v3, v9}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setCycle(JII)V

    goto/16 :goto_62

    .line 1299
    :cond_5c6
    const/4 v0, 0x0

    goto/16 :goto_6f

    .line 1301
    :cond_5c9
    if-eqz v2, :cond_5f5

    .line 1302
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1301
    if-eqz v0, :cond_5ec

    const-string v0, "\u041a\u0440\u0430\u0442\u043a\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430 \u00b7 \u043f\u043e\u0441\u043b\u0435 \u043f\u0430\u043a: "

    const-string v10, "Short rest \u00b7 then again: "

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1302
    :goto_5da
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_77

    :cond_5ec
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v10, "Next: "

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5da

    :cond_5f5
    const-string v0, ""

    goto/16 :goto_77

    .line 1303
    :cond_5f9
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_80

    .line 1310
    :cond_5fd
    const-string v0, ""

    goto/16 :goto_f5

    :cond_601
    const-string v0, ""

    goto/16 :goto_11d

    .line 1312
    :cond_605
    const-string v0, ""

    goto/16 :goto_146

    .line 1313
    :cond_609
    if-eqz v1, :cond_62c

    if-eqz v2, :cond_62c

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

    goto/16 :goto_14e

    .line 1314
    :cond_62c
    if-eqz v1, :cond_63e

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiExercises;->isEasier()Z

    move-result v0

    if-eqz v0, :cond_63e

    const-string v0, "\u041f\u043e-\u043b\u0435\u043a\u043e \u2014 \u0443\u043c\u043e\u0440\u0430\u0442\u0430 \u0435 \u0432\u0438\u0441\u043e\u043a\u0430"

    const-string v9, "Easier \u2014 fatigue is high"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14e

    :cond_63e
    const-string v0, ""

    goto/16 :goto_14e

    .line 1315
    :cond_642
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_15f

    .line 1316
    :cond_646
    const/16 v0, 0x8

    goto/16 :goto_171

    .line 1319
    :cond_64a
    const-string v0, ""

    goto/16 :goto_1c6

    .line 1323
    :cond_64e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_656

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    goto/16 :goto_1e6

    .line 1324
    :cond_656
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v6, v0, :cond_65e

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    goto/16 :goto_1e6

    :cond_65e
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    goto/16 :goto_1e6

    .line 1330
    :cond_662
    const/4 v0, 0x0

    goto/16 :goto_258

    .line 1335
    :cond_665
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    double-to-float v0, v10

    goto/16 :goto_287

    .line 1337
    :cond_66c
    const/4 v0, 0x0

    goto/16 :goto_2a3

    .line 1338
    :cond_66f
    const/4 v1, 0x0

    goto/16 :goto_2b7

    .line 1340
    :cond_672
    if-eqz v1, :cond_67e

    const-string v2, "\u043f\u043e\u0434 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "below corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c3

    .line 1341
    :cond_67e
    const-string v2, "\u0432 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v10, "in corridor"

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c3

    .line 1342
    :cond_688
    if-eqz v1, :cond_68e

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto/16 :goto_2cc

    :cond_68e
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto/16 :goto_2cc

    .line 1343
    :cond_692
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto/16 :goto_2dc

    .line 1345
    :cond_696
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$hrVal:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1347
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$ring:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1348
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$p:Lcom/isaigu/gymapp/ai/AiModel$Profile;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_6c6

    const-string v0, "\u043d\u044f\u043c\u0430 \u0441\u0432\u0435\u0436 \u043f\u0443\u043b\u0441"

    const-string v2, "no fresh HR"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6ba
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$zone:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2df

    .line 1349
    :cond_6c6
    const-string v0, "\u0431\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "no band"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6ba

    .line 1357
    :cond_6cf
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto/16 :goto_351

    .line 1365
    :cond_6d3
    const-string v0, ""

    goto/16 :goto_429

    .line 1366
    :cond_6d7
    const/4 v0, 0x0

    goto/16 :goto_454

    .line 1367
    :cond_6da
    const/16 v0, 0x8

    goto/16 :goto_459

    .line 1369
    :cond_6de
    const-string v0, ""

    goto/16 :goto_4be

    .line 1370
    :cond_6e2
    const-string v0, ""

    goto/16 :goto_4fa

    .line 1374
    :cond_6e6
    const-string v0, "\u275a\u275a  \u041f\u0430\u0443\u0437\u0430"

    const-string v2, "\u275a\u275a  Pause"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53a

    .line 1376
    :cond_6f0
    const/4 v0, 0x0

    goto/16 :goto_546

    .line 1377
    :cond_6f3
    const/16 v1, 0x8

    goto/16 :goto_54f

    .line 1378
    :cond_6f7
    const/16 v1, 0x8

    goto/16 :goto_55f

    .line 1379
    :cond_6fb
    const/16 v1, 0x8

    goto/16 :goto_56f

    .line 1380
    :cond_6ff
    const/4 v0, 0x0

    goto/16 :goto_57d

    .line 1381
    :cond_702
    const/16 v1, 0x8

    goto/16 :goto_582

    .line 1385
    :cond_706
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441: \u0438\u0437\u043a\u043b."

    const-string v2, "Double impulse: off"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_599

    .line 1386
    :cond_710
    const v0, 0x3f333333    # 0.7f

    goto/16 :goto_5a8
.end method
