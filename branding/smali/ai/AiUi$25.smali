.class Lcom/isaigu/gymapp/ai/AiUi$25;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$col:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tiles:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$extra:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_41

    .line 1336
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getRecoveryRemainingMs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    :goto_2c
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1337
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$col:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1388
    :cond_40
    :goto_40
    return-void

    .line 1336
    :cond_41
    const-wide/16 v0, 0x0

    goto :goto_2c

    .line 1340
    :cond_44
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$col:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1341
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tiles:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1342
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$extra:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1343
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2f2

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v0

    .line 1344
    :goto_65
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tiles:Landroid/widget/LinearLayout;

    const-string v4, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442"

    const-string v5, "Duration"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getStartMs()J

    move-result-wide v6

    sub-long/2addr v0, v6

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tiles:Landroid/widget/LinearLayout;

    const-string v2, "\u0411\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v3, "Blocks"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getCorridorShare()D

    move-result-wide v2

    .line 1347
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tiles:Landroid/widget/LinearLayout;

    const-string v0, "\u0412 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430"

    const-string v1, "In corridor"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2f8

    const-string v0, "\u2014"

    :goto_d0
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_314

    const-string v1, ""

    :goto_d8
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getSessionMaxX()D

    move-result-wide v2

    .line 1349
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tiles:Landroid/widget/LinearLayout;

    const-string v0, "\u041c\u0430\u043a\u0441. \u043f\u0443\u043b\u0441"

    const-string v1, "Max HR"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v0, -0x3fec000000000000L    # -5.0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_318

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_111
    const-wide/high16 v8, -0x3fec000000000000L    # -5.0

    cmpl-double v0, v2, v8

    if-lez v0, :cond_31d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v3, "bpm"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_132
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v1, v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_321

    .line 1352
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiEngine;->getRecoveryRemainingMs(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v0

    .line 1356
    :goto_154
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tiles:Landroid/widget/LinearLayout;

    const-string v3, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 60 s"

    const-string v4, "Recovery 60 s"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$tiles:Landroid/widget/LinearLayout;

    const-string v2, "\u0414\u043e\u0437\u0430"

    const-string v3, "Dose"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v8

    iget-wide v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$1100(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1360
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    const-string v2, "\u0420\u0435\u0448\u0435\u043d\u0438\u044f \u043d\u0430 AI"

    const-string v3, "AI decisions"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->access$1200(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1361
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 1362
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u0430\u0443\u0437\u0438 \u00d7"

    const-string v5, "Longer pauses \u00d7"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, -0xff2e01

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1363
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u043e-\u043c\u0435\u043a \u0441\u0435\u0433\u043c\u0435\u043d\u0442 B \u00d7"

    const-string v5, "Softer B \u00d7"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, -0xff2e01

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1364
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u043e-\u043a\u044a\u0441\u0438 \u0431\u043b\u043e\u043a\u043e\u0432\u0435 \u00d7"

    const-string v5, "Shorter blocks \u00d7"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, -0x83b201

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1365
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d\u0430 \u0434\u043e\u0437\u0430 \u00d7"

    const-string v5, "Dose cut \u00d7"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, -0x83b201

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1366
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u043e-\u043d\u0438\u0441\u043a\u0430 \u0441\u0438\u043b\u0430 \u00d7"

    const-string v5, "Lower strength \u00d7"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x4fe0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1367
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0422\u0430\u0432\u0430\u043d \u043d\u0430 \u043f\u0443\u043b\u0441\u0430 \u00d7"

    const-string v5, "HR ceiling \u00d7"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getCapHits()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, -0xb2b1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 1368
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFlags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_350

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1369
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->flag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, -0x4fe0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    invoke-static {v4, v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_2d6

    .line 1343
    :cond_2f2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto/16 :goto_65

    .line 1347
    :cond_2f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d0

    :cond_314
    const-string v1, "%"

    goto/16 :goto_d8

    .line 1349
    :cond_318
    const-string v0, "\u2014"

    move-object v1, v0

    goto/16 :goto_111

    :cond_31d
    const-string v0, ""

    goto/16 :goto_132

    .line 1354
    :cond_321
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_331

    const-string v0, "\u2014"

    goto/16 :goto_154

    :cond_331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2212"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_154

    .line 1371
    :cond_350
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1372
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$extra:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1374
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1375
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$1100(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1376
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    const-string v1, "\u0411\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v3, "Blocks"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$1200(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1377
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "#"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "\u0424\u0430\u0437\u0430"

    const-string v6, "Phase"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "\u0420\u0430\u0431\u043e\u0442\u0430"

    const-string v6, "Work"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v6, "Rest"

    .line 1378
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "\u0394HR"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "D"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "V"

    aput-object v5, v3, v4

    .line 1377
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->access$1400(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1379
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 1380
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v1, 0x7

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x1

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tBlockS:D

    .line 1381
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x3

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    const-wide/16 v10, 0x0

    cmpl-double v1, v8, v10

    if-lez v1, :cond_46a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " s"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_438
    aput-object v1, v6, v7

    const/4 v7, 0x4

    .line 1382
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_46d

    const-string v1, "\u2014"

    :goto_445
    aput-object v1, v6, v7

    const/4 v7, 0x5

    .line 1383
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_487

    const-string v1, "\u2014"

    :goto_452
    aput-object v1, v6, v7

    const/4 v1, 0x6

    .line 1384
    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_49c

    const-string v0, "\u2014"

    :goto_45f
    aput-object v0, v6, v1

    .line 1380
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->access$1400(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3c7

    .line 1381
    :cond_46a
    const-string v1, "\u2014"

    goto :goto_438

    .line 1382
    :cond_46d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_445

    .line 1383
    :cond_487
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_452

    .line 1384
    :cond_49c
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45f

    .line 1386
    :cond_4b1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$extra:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$25;->val$a:Landroid/content/Context;

    const/16 v3, 0xe

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->access$1500(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_40
.end method
