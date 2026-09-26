.class Lcom/isaigu/gymapp/ai/AiUi$30;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenReport(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/content/Context;

.field final synthetic val$col:Landroid/widget/LinearLayout;

.field final synthetic val$e:Lcom/isaigu/gymapp/ai/AiEngine;

.field final synthetic val$extra:Landroid/widget/LinearLayout;

.field final synthetic val$tiles:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .registers 6

    .line 1545
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$col:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$tiles:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$extra:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .line 1548
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_2f

    .line 1549
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/isaigu/gymapp/ai/AiEngine;->getRecoveryRemainingMs(J)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    goto :goto_30

    :cond_2f
    move-wide v2, v4

    :goto_30
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1550
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$col:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1551
    return-void

    .line 1553
    :cond_44
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$col:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1554
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$tiles:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1555
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$extra:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1556
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-lez v3, :cond_64

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v1

    goto :goto_68

    :cond_64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1557
    :goto_68
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$tiles:Landroid/widget/LinearLayout;

    const-string v5, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442"

    const-string v6, "Duration"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getStartMs()J

    move-result-wide v6

    sub-long/2addr v1, v6

    long-to-double v1, v1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$tiles:Landroid/widget/LinearLayout;

    const-string v4, "\u0411\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v5, "Blocks"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v8, v9, v2}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCorridorShare()D

    move-result-wide v8

    .line 1560
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$tiles:Landroid/widget/LinearLayout;

    const-string v10, "\u0412 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v11, "In corridor"

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const-string v14, "\u2014"

    if-eqz v11, :cond_d1

    move-object v11, v14

    goto :goto_e6

    :cond_d1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    mul-double v15, v8, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_e6
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    const-string v9, "%"

    if-eqz v8, :cond_f0

    move-object v8, v2

    goto :goto_f1

    :cond_f0
    move-object v8, v9

    :goto_f1
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v10, v11, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getSessionMaxX()D

    move-result-wide v10

    .line 1562
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$tiles:Landroid/widget/LinearLayout;

    const-string v8, "\u041c\u0430\u043a\u0441. \u043f\u0443\u043b\u0441"

    const-string v12, "Max HR"

    invoke-static {v8, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/high16 v12, -0x3fec000000000000L    # -5.0

    cmpl-double v15, v10, v12

    if-lez v15, :cond_126

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v13}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_127

    :cond_126
    move-object v10, v14

    :goto_127
    if-lez v15, :cond_143

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v13, "bpm"

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_144

    :cond_143
    move-object v11, v2

    :goto_144
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v8, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v1, v3, :cond_162

    .line 1565
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getRecoveryRemainingMs(J)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_18b

    .line 1567
    :cond_162
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_170

    move-object v1, v14

    goto :goto_18b

    :cond_170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2212"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1569
    :goto_18b
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$tiles:Landroid/widget/LinearLayout;

    const-string v7, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 60 s"

    const-string v8, "Recovery 60 s"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v6, v7, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$tiles:Landroid/widget/LinearLayout;

    const-string v6, "\u0414\u043e\u0437\u0430"

    const-string v7, "Dose"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v10, v10, v12

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v8

    move-object/from16 v16, v14

    iget-wide v14, v8, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v6, v7, v9}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v6

    .line 1572
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$tiles:Landroid/widget/LinearLayout;

    const-string v8, "\u041a\u0430\u043b\u043e\u0440\u0438\u0438"

    const-string v9, "Calories"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    cmpl-double v11, v6, v9

    if-ltz v11, :cond_204

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_206

    :cond_204
    move-object/from16 v6, v16

    .line 1573
    :goto_206
    if-ltz v11, :cond_22d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " kcal \u00b7 "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u0430\u043a\u0442. "

    const-string v12, "act. "

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getActiveKcal()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_22e

    :cond_22d
    move-object v7, v2

    .line 1572
    :goto_22e
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v8, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$1100(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1576
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    const-string v6, "\u0420\u0435\u0448\u0435\u043d\u0438\u044f \u043d\u0430 AI"

    const-string v7, "AI decisions"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$1200(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1577
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 1578
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u041f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u0430\u0443\u0437\u0438 \u00d7"

    const-string v11, "Longer pauses \u00d7"

    invoke-static {v8, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1579
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u041f\u043e-\u043c\u0435\u043a \u0441\u0435\u0433\u043c\u0435\u043d\u0442 B \u00d7"

    const-string v12, "Softer B \u00d7"

    invoke-static {v8, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1580
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u041f\u043e-\u043a\u044a\u0441\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0435 \u00d7"

    const-string v13, "Shorter blocks \u00d7"

    invoke-static {v8, v13}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v13, 0x2

    invoke-virtual {v8, v13}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1581
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d\u0430 \u0434\u043e\u0437\u0430 \u00d7"

    const-string v14, "Dose cut \u00d7"

    invoke-static {v8, v14}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1582
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u041f\u043e-\u043d\u0438\u0441\u043a\u0430 \u0441\u0438\u043b\u0430 \u00d7"

    const-string v15, "Lower strength \u00d7"

    invoke-static {v8, v15}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v15, 0x5

    invoke-virtual {v8, v15}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1583
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0422\u0430\u0432\u0430\u043d \u043d\u0430 \u043f\u0443\u043b\u0441\u0430 \u00d7"

    const-string v9, "HR ceiling \u00d7"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getCapHits()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1584
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getFlags()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_34e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1585
    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiText;->flag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v8, v7, v9}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1586
    goto :goto_34e

    .line 1587
    :cond_36a
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1588
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$extra:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1590
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c2

    .line 1591
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$1100(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1592
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1200(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1593
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "#"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "\u0424\u0430\u0437\u0430"

    const-string v8, "Phase"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    const-string v6, "\u0420\u0430\u0431\u043e\u0442\u0430"

    const-string v8, "Work"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    .line 1594
    const-string v6, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v8, "Rest"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "\u0394HR"

    aput-object v6, v5, v12

    const-string v6, "D"

    aput-object v6, v5, v15

    const-string v6, "V"

    const/4 v8, 0x6

    aput-object v6, v5, v8

    .line 1593
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    invoke-static {v3, v14, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$1400(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1595
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 1596
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    new-array v9, v4, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v7

    iget-object v4, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tBlockS:D

    .line 1597
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " s"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v13

    iget-wide v13, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    const-wide/16 v17, 0x0

    cmpl-double v19, v13, v17

    if-lez v19, :cond_43a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v9

    iget-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_43d

    :cond_43a
    move-object v14, v9

    move-object/from16 v7, v16

    :goto_43d
    aput-object v7, v14, v11

    .line 1598
    iget-wide v7, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_44a

    move-object/from16 v7, v16

    goto :goto_461

    :cond_44a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_461
    aput-object v7, v14, v12

    .line 1599
    iget-wide v7, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    const-string v9, "%.2f"

    if-eqz v7, :cond_470

    move-object/from16 v7, v16

    goto :goto_482

    :cond_470
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v13, v8, [Ljava/lang/Object;

    iget-wide v10, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v13, v11

    invoke-static {v7, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_482
    aput-object v7, v14, v15

    .line 1600
    iget-wide v10, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_491

    move-object/from16 v4, v16

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_4a3

    :cond_491
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    iget-wide v4, v5, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v10, v5

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_4a3
    const/4 v7, 0x6

    aput-object v4, v14, v7

    .line 1596
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    invoke-static {v6, v5, v14}, Lcom/isaigu/gymapp/ai/AiUi;->access$1400(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1601
    const/4 v4, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v11, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto/16 :goto_3d7

    .line 1602
    :cond_4b5
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$extra:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiUi$30;->val$a:Landroid/content/Context;

    const/16 v4, 0xe

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1500(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1604
    :cond_4c2
    return-void
.end method
