.class public final Lcom/isaigu/gymapp/wearable/face/FaceAuto;
.super Ljava/lang/Object;
.source "FaceAuto.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/face/FaceDevice;


# instance fields
.field private ended:Z

.field private program:I

.field private share:D

.field private started:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    return-void
.end method

.method static autoId(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "face_tone"

    :goto_5
    return-object v0

    :cond_6
    const-string v0, "face"

    goto :goto_5
.end method


# virtual methods
.method public active()Z
    .registers 3

    .prologue
    .line 113
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public battery(I)I
    .registers 3

    .prologue
    .line 71
    const/4 v0, -0x1

    return v0
.end method

.method public canPause()Z
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->running()Z

    move-result v0

    return v0
.end method

.method public canStart()Z
    .registers 3

    .prologue
    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canStart()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->started:Z

    if-nez v0, :cond_7

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 216
    :cond_7
    return-void
.end method

.method public channelName(IZ)Ljava/lang/String;
    .registers 4

    .prologue
    .line 44
    if-eqz p2, :cond_5

    const-string v0, "\u0414\u0432\u0435\u0442\u0435 \u0431\u0443\u0437\u0438"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "Both cheeks"

    goto :goto_4
.end method

.method public channels()I
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public clientName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public courseKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderUserId()J

    move-result-wide v0

    .line 28
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    const-string v0, ""

    goto :goto_1d
.end method

.method public doneShare()D
    .registers 3

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    return-wide v0
.end method

.method public finished()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->ended:Z

    return v0
.end method

.method public kind()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public maxStrength()I
    .registers 2

    .prologue
    .line 67
    const/16 v0, 0x64

    return v0
.end method

.method public notReady(IZ)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 53
    if-eqz p2, :cond_9

    const-string v0, "\u041a\u043e\u043d\u0442\u0443\u0440\u044a\u0442 \u0435 \u0441\u0430\u043c\u043e \u0441 Bluetens"

    .line 59
    :cond_8
    :goto_8
    return-object v0

    .line 53
    :cond_9
    const-string v0, "Contour is Bluetens only"

    goto :goto_8

    .line 55
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_1c

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_18
    if-nez v0, :cond_8

    move-object v0, v1

    .line 59
    goto :goto_8

    :cond_1c
    move-object v0, v1

    .line 55
    goto :goto_18
.end method

.method onEnded()V
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v2

    .line 151
    if-eqz v2, :cond_22

    .line 152
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 153
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    cmpl-double v3, v4, v0

    if-lez v3, :cond_1c

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v0

    div-double/2addr v0, v4

    :cond_1c
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    .line 155
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->ended:Z

    .line 156
    return-void
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 131
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    .line 132
    return-void
.end method

.method public paused()Z
    .registers 3

    .prologue
    .line 126
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public phases()[J
    .registers 11

    .prologue
    .line 200
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 201
    const/4 v1, 0x3

    new-array v2, v1, [J

    .line 202
    if-nez v0, :cond_b

    move-object v0, v2

    .line 209
    :goto_a
    return-object v0

    .line 205
    :cond_b
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 206
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x2

    .line 207
    :goto_24
    aget-wide v4, v2, v1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    goto :goto_11

    .line 206
    :cond_30
    const-string v1, "WARMUP"

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    goto :goto_24

    :cond_3c
    const/4 v1, 0x1

    goto :goto_24

    :cond_3e
    move-object v0, v2

    .line 209
    goto :goto_a
.end method

.method public prepare(IIZ)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 83
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 85
    if-nez v0, :cond_11

    .line 86
    if-eqz p3, :cond_e

    const-string v0, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u043d\u0435 \u0435 \u0433\u043e\u0442\u043e\u0432"

    .line 100
    :cond_d
    :goto_d
    return-object v0

    .line 86
    :cond_e
    const-string v0, "Auto is not ready"

    goto :goto_d

    .line 88
    :cond_11
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 89
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 90
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->autoId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 92
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderBlock()Ljava/lang/String;

    move-result-object v0

    .line 93
    if-nez v0, :cond_d

    .line 96
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->beginCalibration()V

    .line 97
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->started:Z

    .line 98
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->ended:Z

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    .line 100
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public programs()[I
    .registers 2

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->XEMS:[I

    return-object v0
.end method

.method public running()Z
    .registers 3

    .prologue
    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public sideOf(I)I
    .registers 3

    .prologue
    .line 40
    const/4 v0, -0x1

    return v0
.end method

.method public start(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 108
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoSession;->startRun(Landroid/content/Context;)V

    .line 109
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->started:Z

    .line 110
    return-void

    .line 109
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 14

    .prologue
    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v8

    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->lastCycleMs()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 170
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_4b

    .line 171
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v7

    .line 172
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->lastCycleMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_45

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gez v2, :cond_45

    .line 173
    iget v2, v7, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_42

    const/4 v2, 0x4

    :goto_2e
    iget v3, v7, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    const/16 v4, 0x1f4

    const/16 v5, 0x1f4

    iget v6, v7, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    .line 174
    :goto_3a
    iget v1, v7, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    .line 175
    const/4 v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    .line 196
    :goto_41
    return-object v0

    .line 173
    :cond_42
    iget v2, v7, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    goto :goto_2e

    :cond_45
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_3a

    .line 178
    :cond_4b
    if-nez v8, :cond_53

    .line 179
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_41

    .line 181
    :cond_53
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v9

    .line 182
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_e1

    if-eqz v9, :cond_e1

    iget-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_e1

    const/4 v2, 0x1

    move v7, v2

    .line 183
    :goto_6b
    if-eqz v7, :cond_e4

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->lastCycleMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_e4

    .line 184
    iget v2, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    iget v3, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    iget v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    iget v5, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    iget v6, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v1

    .line 185
    :goto_85
    if-eqz v9, :cond_8b

    .line 186
    iget v0, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    .line 188
    :cond_8b
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 189
    if-nez v0, :cond_ea

    const/4 v0, 0x1

    :goto_92
    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    .line 190
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->elapsedMs:J

    .line 191
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v2

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->totalMs:J

    .line 192
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_c9

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_100

    :cond_c9
    const/4 v0, 0x1

    :goto_ca
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->done:Z

    .line 193
    if-nez v7, :cond_de

    .line 194
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    :cond_de
    move-object v0, v1

    .line 196
    goto/16 :goto_41

    .line 182
    :cond_e1
    const/4 v2, 0x0

    move v7, v2

    goto :goto_6b

    .line 184
    :cond_e4
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_85

    .line 189
    :cond_ea
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_f2

    const/4 v0, 0x2

    goto :goto_92

    :cond_f2
    const-string v2, "WARMUP"

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    const/4 v0, 0x0

    goto :goto_92

    :cond_fe
    const/4 v0, 0x1

    goto :goto_92

    .line 192
    :cond_100
    const/4 v0, 0x0

    goto :goto_ca
.end method

.method public step(II)V
    .registers 5

    .prologue
    .line 75
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_d

    .line 76
    const/4 v0, -0x1

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->adjustCalibration(II)V

    .line 80
    :cond_c
    :goto_c
    return-void

    .line 77
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_c

    .line 78
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoSession;->nudge(I)V

    goto :goto_c
.end method

.method public stop()V
    .registers 11

    .prologue
    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_23

    .line 137
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v0

    add-double/2addr v0, v8

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    .line 139
    :cond_23
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 140
    return-void
.end method

.method public stopLabel(Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    .line 145
    :goto_17
    if-eqz v0, :cond_23

    if-eqz p1, :cond_20

    const-string v0, "\u25a0  \u041a\u0440\u0430\u0439"

    :goto_1d
    return-object v0

    .line 144
    :cond_1e
    const/4 v0, 0x0

    goto :goto_17

    .line 145
    :cond_20
    const-string v0, "\u25a0  End"

    goto :goto_1d

    :cond_23
    if-eqz p1, :cond_28

    const-string v0, "\u25a0  \u041a\u044a\u043c \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    goto :goto_1d

    :cond_28
    const-string v0, "\u25a0  To the let-go"

    goto :goto_1d
.end method

.method public strength(I)I
    .registers 3

    .prologue
    .line 63
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderStrength()I

    move-result v0

    return v0
.end method
