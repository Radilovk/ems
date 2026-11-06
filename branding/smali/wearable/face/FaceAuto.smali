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
    packed-switch p0, :pswitch_data_10

    .line 52
    const-string v0, "face"

    :goto_5
    return-object v0

    .line 49
    :pswitch_6
    const-string v0, "face_tone"

    goto :goto_5

    .line 50
    :pswitch_9
    const-string v0, "face_drain"

    goto :goto_5

    .line 51
    :pswitch_c
    const-string v0, "face_relax"

    goto :goto_5

    .line 48
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private static mainStep()Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 222
    if-nez v0, :cond_9

    move-object v0, v1

    .line 230
    :goto_8
    return-object v0

    .line 225
    :cond_9
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 226
    const-string v3, "MAIN"

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 227
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    goto :goto_8

    :cond_37
    move-object v0, v1

    .line 230
    goto :goto_8
.end method

.method static programOf(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 58
    const-string v0, "face_tone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    const/4 v0, 0x1

    .line 67
    :goto_9
    return v0

    .line 61
    :cond_a
    const-string v0, "face_drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 62
    const/4 v0, 0x2

    goto :goto_9

    .line 64
    :cond_14
    const-string v0, "face_relax"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 65
    const/4 v0, 0x3

    goto :goto_9

    .line 67
    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public active()Z
    .registers 3

    .prologue
    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 133
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
    .line 90
    const/4 v0, -0x1

    return v0
.end method

.method public canPause()Z
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->running()Z

    move-result v0

    return v0
.end method

.method public canStart()Z
    .registers 3

    .prologue
    .line 123
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
    .line 247
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->started:Z

    if-nez v0, :cond_7

    .line 248
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 250
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
    .line 182
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    return-wide v0
.end method

.method public finished()Z
    .registers 2

    .prologue
    .line 178
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
    .line 86
    const/16 v0, 0x64

    return v0
.end method

.method public notReady(IZ)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    .line 72
    :cond_7
    if-eqz p2, :cond_c

    const-string v0, "\u0422\u0430\u0437\u0438 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430 \u0435 \u0441\u0430\u043c\u043e \u0441 Bluetens"

    .line 78
    :cond_b
    :goto_b
    return-object v0

    .line 72
    :cond_c
    const-string v0, "This one is Bluetens only"

    goto :goto_b

    .line 74
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_1f

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_1b
    if-nez v0, :cond_b

    move-object v0, v1

    .line 78
    goto :goto_b

    :cond_1f
    move-object v0, v1

    .line 74
    goto :goto_1b
.end method

.method onEnded()V
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v2

    .line 170
    if-eqz v2, :cond_22

    .line 171
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 172
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

    .line 174
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->ended:Z

    .line 175
    return-void
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    .line 151
    return-void
.end method

.method public paused()Z
    .registers 3

    .prologue
    .line 145
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 146
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
    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 235
    const/4 v1, 0x3

    new-array v2, v1, [J

    .line 236
    if-nez v0, :cond_b

    move-object v0, v2

    .line 243
    :goto_a
    return-object v0

    .line 239
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

    .line 240
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x2

    .line 241
    :goto_24
    aget-wide v4, v2, v1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    goto :goto_11

    .line 240
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

    .line 243
    goto :goto_a
.end method

.method public prepare(IIZ)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 102
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 104
    if-nez v0, :cond_11

    .line 105
    if-eqz p3, :cond_e

    const-string v0, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u043d\u0435 \u0435 \u0433\u043e\u0442\u043e\u0432"

    .line 119
    :cond_d
    :goto_d
    return-object v0

    .line 105
    :cond_e
    const-string v0, "Auto is not ready"

    goto :goto_d

    .line 107
    :cond_11
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 108
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 109
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->autoId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderBlock()Ljava/lang/String;

    move-result-object v0

    .line 112
    if-nez v0, :cond_d

    .line 115
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->beginCalibration()V

    .line 116
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->started:Z

    .line 117
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->ended:Z

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    .line 119
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
    .line 137
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
    .line 127
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoSession;->startRun(Landroid/content/Context;)V

    .line 128
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->started:Z

    .line 129
    return-void

    .line 128
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 14

    .prologue
    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v8

    .line 188
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->lastCycleMs()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 189
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_4d

    .line 191
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->mainStep()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    .line 192
    if-eqz v5, :cond_3e

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 193
    :goto_1a
    if-eqz v5, :cond_47

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->lastCycleMs()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_47

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-gez v2, :cond_47

    .line 194
    iget v2, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v4, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    .line 195
    :goto_38
    iput v6, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    .line 196
    const/4 v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    .line 217
    :goto_3d
    return-object v0

    .line 192
    :cond_3e
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    iget v6, v2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    goto :goto_1a

    .line 194
    :cond_47
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_38

    .line 199
    :cond_4d
    if-nez v8, :cond_55

    .line 200
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_3d

    .line 202
    :cond_55
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v9

    .line 203
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v2, v3, :cond_e3

    if-eqz v9, :cond_e3

    iget-wide v2, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->frac:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_e3

    const/4 v2, 0x1

    move v7, v2

    .line 204
    :goto_6d
    if-eqz v7, :cond_e6

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->lastCycleMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_e6

    .line 205
    iget v2, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    iget v3, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    iget v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    iget v5, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    iget v6, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v1

    .line 206
    :goto_87
    if-eqz v9, :cond_8d

    .line 207
    iget v0, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    .line 209
    :cond_8d
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 210
    if-nez v0, :cond_ec

    const/4 v0, 0x1

    :goto_94
    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    .line 211
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->elapsedMs:J

    .line 212
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

    .line 213
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v2, :cond_cb

    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v2, :cond_102

    :cond_cb
    const/4 v0, 0x1

    :goto_cc
    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->done:Z

    .line 214
    if-nez v7, :cond_e0

    .line 215
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    :cond_e0
    move-object v0, v1

    .line 217
    goto/16 :goto_3d

    .line 203
    :cond_e3
    const/4 v2, 0x0

    move v7, v2

    goto :goto_6d

    .line 205
    :cond_e6
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_87

    .line 210
    :cond_ec
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v2

    if-eqz v2, :cond_f4

    const/4 v0, 0x2

    goto :goto_94

    :cond_f4
    const-string v2, "WARMUP"

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    const/4 v0, 0x0

    goto :goto_94

    :cond_100
    const/4 v0, 0x1

    goto :goto_94

    .line 213
    :cond_102
    const/4 v0, 0x0

    goto :goto_cc
.end method

.method public step(II)V
    .registers 5

    .prologue
    .line 94
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_d

    .line 95
    const/4 v0, -0x1

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->adjustCalibration(II)V

    .line 99
    :cond_c
    :goto_c
    return-void

    .line 96
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_c

    .line 97
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoSession;->nudge(I)V

    goto :goto_c
.end method

.method public stop()V
    .registers 11

    .prologue
    .line 154
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_23

    .line 156
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

    .line 158
    :cond_23
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 159
    return-void
.end method

.method public stopLabel(Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 162
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 163
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

    .line 164
    :goto_17
    if-eqz v0, :cond_23

    if-eqz p1, :cond_20

    const-string v0, "\u25a0  \u041a\u0440\u0430\u0439"

    :goto_1d
    return-object v0

    .line 163
    :cond_1e
    const/4 v0, 0x0

    goto :goto_17

    .line 164
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
    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderStrength()I

    move-result v0

    return v0
.end method
