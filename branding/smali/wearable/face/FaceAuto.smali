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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    return-void
.end method

.method static autoId(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_1c

    .line 71
    const-string v0, "face"

    :goto_5
    return-object v0

    .line 64
    :pswitch_6
    const-string v0, "face_tone"

    goto :goto_5

    .line 65
    :pswitch_9
    const-string v0, "face_oval"

    goto :goto_5

    .line 66
    :pswitch_c
    const-string v0, "face_drain"

    goto :goto_5

    .line 67
    :pswitch_f
    const-string v0, "face_relax"

    goto :goto_5

    .line 68
    :pswitch_12
    const-string v0, "face_calm"

    goto :goto_5

    .line 69
    :pswitch_15
    const-string v0, "face_jaw"

    goto :goto_5

    .line 70
    :pswitch_18
    const-string v0, "face_chin"

    goto :goto_5

    .line 63
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_f
        :pswitch_15
        :pswitch_18
        :pswitch_9
        :pswitch_12
    .end packed-switch
.end method

.method private static mainStep()Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 281
    if-nez v0, :cond_9

    move-object v0, v1

    .line 289
    :goto_8
    return-object v0

    .line 284
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

    .line 285
    const-string v3, "MAIN"

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 286
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    goto :goto_8

    :cond_37
    move-object v0, v1

    .line 289
    goto :goto_8
.end method

.method static programOf(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 77
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->XEMS:[I

    array-length v4, v3

    move v2, v1

    :goto_5
    if-ge v2, v4, :cond_18

    aget v0, v3, v2

    .line 78
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->autoId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 82
    :goto_13
    return v0

    .line 77
    :cond_14
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_18
    move v0, v1

    .line 82
    goto :goto_13
.end method

.method static units(I)I
    .registers 3

    .prologue
    .line 102
    int-to-float v0, p0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->facePw()I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public active()Z
    .registers 3

    .prologue
    .line 178
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    .line 179
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
    .line 126
    const/4 v0, -0x1

    return v0
.end method

.method public canPause()Z
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->running()Z

    move-result v0

    return v0
.end method

.method public canStart()Z
    .registers 3

    .prologue
    .line 169
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
    .line 306
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->started:Z

    if-nez v0, :cond_7

    .line 307
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->close()V

    .line 309
    :cond_7
    return-void
.end method

.method public channelName(IZ)Ljava/lang/String;
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->siteOf(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->siteName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public channels()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->xemsSites()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public clientName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public courseKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderUserId()J

    move-result-wide v0

    .line 29
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
    .line 228
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    return-wide v0
.end method

.method public finished()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->ended:Z

    return v0
.end method

.method public hasMaster()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public kind()I
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public level(IJ)F
    .registers 8

    .prologue
    .line 268
    invoke-virtual {p0, p2, p3}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v1

    .line 269
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->siteOf(I)I

    move-result v2

    .line 270
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderZones()[I

    move-result-object v0

    .line 271
    if-nez v0, :cond_16

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_31

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->zones:[I

    .line 275
    :cond_16
    :goto_16
    if-eqz v0, :cond_33

    array-length v3, v0

    if-ge v2, v3, :cond_33

    const/16 v3, 0x64

    aget v0, v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    .line 276
    :goto_27
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderStrength()I

    move-result v2

    if-lez v2, :cond_36

    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    mul-float/2addr v0, v1

    :goto_30
    return v0

    .line 273
    :cond_31
    const/4 v0, 0x0

    goto :goto_16

    .line 275
    :cond_33
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_27

    .line 276
    :cond_36
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public maxStrength()I
    .registers 2

    .prologue
    .line 106
    const/16 v0, 0x64

    return v0
.end method

.method public notReady(IZ)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_d
    if-eqz v0, :cond_12

    .line 90
    :goto_f
    return-object v0

    :cond_10
    move-object v0, v1

    .line 86
    goto :goto_d

    :cond_12
    move-object v0, v1

    .line 90
    goto :goto_f
.end method

.method onEnded()V
    .registers 9

    .prologue
    const-wide/16 v0, 0x0

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_22

    .line 217
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoEngine;->getRemainingS()D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 218
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

    .line 220
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->ended:Z

    .line 221
    return-void
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    .line 197
    return-void
.end method

.method public paused()Z
    .registers 3

    .prologue
    .line 191
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 192
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
    .line 293
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    .line 294
    const/4 v1, 0x3

    new-array v2, v1, [J

    .line 295
    if-nez v0, :cond_b

    move-object v0, v2

    .line 302
    :goto_a
    return-object v0

    .line 298
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

    .line 299
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x2

    .line 300
    :goto_24
    aget-wide v4, v2, v1

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    goto :goto_11

    .line 299
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

    .line 302
    goto :goto_a
.end method

.method public prepare(IIZ)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 148
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 150
    if-nez v0, :cond_11

    .line 151
    if-eqz p3, :cond_e

    const-string v0, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u0438\u044f\u0442 \u0440\u0435\u0436\u0438\u043c \u043d\u0435 \u0435 \u0433\u043e\u0442\u043e\u0432"

    .line 165
    :cond_d
    :goto_d
    return-object v0

    .line 151
    :cond_e
    const-string v0, "Auto is not ready"

    goto :goto_d

    .line 153
    :cond_11
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 154
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 155
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->autoId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->buildPlan()V

    .line 157
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderBlock()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-nez v0, :cond_d

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->beginCalibration()V

    .line 162
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->started:Z

    .line 163
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->ended:Z

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->share:D

    .line 165
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public programs()[I
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->XEMS:[I

    return-object v0
.end method

.method public running()Z
    .registers 3

    .prologue
    .line 183
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

.method public select(I)V
    .registers 2

    .prologue
    .line 59
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    .line 60
    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .prologue
    .line 114
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoSession;->setFacePw(I)V

    .line 115
    return-void
.end method

.method public siteOf(I)I
    .registers 5

    .prologue
    .line 41
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->xemsSites()[I

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public socket(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->siteOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 173
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoSession;->startRun(Landroid/content/Context;)V

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->started:Z

    .line 175
    return-void

    .line 174
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 14

    .prologue
    .line 232
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v8

    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->lastCycleMs()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 235
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v2, v3, :cond_4d

    .line 237
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->mainStep()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    .line 238
    if-eqz v5, :cond_3e

    iget v6, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 239
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

    .line 240
    iget v2, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v4, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    .line 241
    :goto_38
    iput v6, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    .line 242
    const/4 v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    .line 263
    :goto_3d
    return-object v0

    .line 238
    :cond_3e
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->program:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v2

    iget v6, v2, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    goto :goto_1a

    .line 240
    :cond_47
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_38

    .line 245
    :cond_4d
    if-nez v8, :cond_55

    .line 246
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_3d

    .line 248
    :cond_55
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getCurrent()Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;

    move-result-object v9

    .line 249
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

    .line 250
    :goto_6d
    if-eqz v7, :cond_e6

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->lastCycleMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_e6

    .line 251
    iget v2, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    iget v3, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    iget v4, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampUpMs:I

    iget v5, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->rampDownMs:I

    iget v6, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v1

    .line 252
    :goto_87
    if-eqz v9, :cond_8d

    .line 253
    iget v0, v9, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->hz:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    .line 255
    :cond_8d
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 256
    if-nez v0, :cond_ec

    const/4 v0, 0x1

    :goto_94
    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    .line 257
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->getElapsedS()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->elapsedMs:J

    .line 258
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

    .line 259
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

    .line 260
    if-nez v7, :cond_e0

    .line 261
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AutoEngine;->phaseRemainingS()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    :cond_e0
    move-object v0, v1

    .line 263
    goto/16 :goto_3d

    .line 249
    :cond_e3
    const/4 v2, 0x0

    move v7, v2

    goto :goto_6d

    .line 251
    :cond_e6
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_87

    .line 256
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

    .line 259
    :cond_102
    const/4 v0, 0x0

    goto :goto_cc
.end method

.method public step(II)V
    .registers 7

    .prologue
    .line 130
    if-ltz p1, :cond_a

    .line 131
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->siteOf(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/AutoSession;->adjustChannel(II)V

    .line 145
    :cond_9
    :goto_9
    return-void

    .line 134
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_39

    .line 136
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderStrength()I

    move-result v1

    .line 137
    const/4 v0, 0x1

    .line 138
    :goto_17
    mul-int v2, v0, p2

    add-int/2addr v2, v1

    if-ltz v2, :cond_33

    mul-int v2, v0, p2

    add-int/2addr v2, v1

    const/16 v3, 0x64

    if-gt v2, v3, :cond_33

    mul-int v2, v0, p2

    add-int/2addr v2, v1

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->units(I)I

    move-result v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->units(I)I

    move-result v3

    if-ne v2, v3, :cond_33

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 141
    :cond_33
    const/4 v1, -0x1

    mul-int/2addr v0, p2

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->adjustCalibration(II)V

    goto :goto_9

    .line 142
    :cond_39
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v1, :cond_9

    .line 143
    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AutoSession;->nudge(I)V

    goto :goto_9
.end method

.method public stop()V
    .registers 11

    .prologue
    .line 200
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_23

    .line 202
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

    .line 204
    :cond_23
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->stop()V

    .line 205
    return-void
.end method

.method public stopLabel(Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 208
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    .line 209
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

    .line 210
    :goto_17
    if-eqz v0, :cond_23

    if-eqz p1, :cond_20

    const-string v0, "\u25a0  \u041a\u0440\u0430\u0439"

    :goto_1d
    return-object v0

    .line 209
    :cond_1e
    const/4 v0, 0x0

    goto :goto_17

    .line 210
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
    .line 94
    if-gez p1, :cond_b

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderStrength()I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->units(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/face/FaceAuto;->siteOf(I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->channelShare(I)I

    move-result v0

    goto :goto_a
.end method

.method public width()I
    .registers 2

    .prologue
    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->facePw()I

    move-result v0

    return v0
.end method

.method public widthMin()I
    .registers 2

    .prologue
    .line 118
    const/16 v0, 0x32

    return v0
.end method

.method public widthStep()I
    .registers 2

    .prologue
    .line 122
    const/16 v0, 0x32

    return v0
.end method
