.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;
.super Ljava/lang/Object;
.source "BluetensFace.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/face/FaceDevice;


# instance fields
.field private begun:Z

.field private ended:Z

.field private endedAt:J

.field private final page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

.field private program:I

.field private timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    .line 21
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 22
    return-void
.end method

.method static fullUs(I)I
    .registers 2

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_10

    .line 41
    const/16 v0, 0x64

    :goto_5
    return v0

    .line 38
    :pswitch_6
    const/16 v0, 0xc8

    goto :goto_5

    .line 39
    :pswitch_9
    const/16 v0, 0xfa

    goto :goto_5

    .line 40
    :pswitch_c
    const/16 v0, 0x96

    goto :goto_5

    .line 37
    nop

    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_9
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method static isFace(I)Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x5

    if-eq p0, v0, :cond_19

    const/4 v0, 0x6

    if-eq p0, v0, :cond_19

    const/4 v0, 0x7

    if-eq p0, v0, :cond_19

    const/16 v0, 0x8

    if-eq p0, v0, :cond_19

    const/16 v0, 0x9

    if-eq p0, v0, :cond_19

    const/16 v0, 0xa

    if-eq p0, v0, :cond_19

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 7

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 76
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    .line 77
    if-ne v1, p1, :cond_20

    .line 83
    :goto_1f
    return-object v0

    .line 80
    :cond_20
    add-int/lit8 v0, v1, 0x1

    :goto_22
    move v1, v0

    .line 82
    goto :goto_a

    .line 83
    :cond_24
    const/4 v0, 0x0

    goto :goto_1f

    :cond_26
    move v0, v1

    goto :goto_22
.end method

.method static padProgram(I)I
    .registers 2

    .prologue
    .line 25
    packed-switch p0, :pswitch_data_12

    .line 31
    const/4 v0, 0x5

    :goto_4
    return v0

    .line 26
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_4

    .line 27
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_4

    .line 28
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_4

    .line 29
    :pswitch_d
    const/16 v0, 0xb

    goto :goto_4

    .line 30
    :pswitch_10
    const/4 v0, 0x7

    goto :goto_4

    .line 25
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method static single(I)Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x5

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-ne p0, v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public active()Z
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    return v0
.end method

.method public battery(I)I
    .registers 3

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryPct()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public blocks(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 136
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->channels()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public canPause()Z
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public canStart()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->strength(I)I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    if-nez v0, :cond_f

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 277
    :cond_f
    return-void
.end method

.method public channelName(IZ)Ljava/lang/String;
    .registers 5

    .prologue
    .line 105
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    .line 106
    if-eqz p2, :cond_a

    const-string v0, "\u041f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    .line 114
    :goto_9
    return-object v0

    .line 106
    :cond_a
    const-string v0, "Under the chin"

    goto :goto_9

    .line 108
    :cond_d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 109
    if-eqz p2, :cond_17

    const-string v0, "\u0427\u0435\u043b\u043e"

    goto :goto_9

    :cond_17
    const-string v0, "Forehead"

    goto :goto_9

    .line 111
    :cond_1a
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    .line 112
    if-nez p1, :cond_29

    if-eqz p2, :cond_26

    const-string v0, "\u041b\u044f\u0432\u0430 \u0447\u0435\u043b\u044e\u0441\u0442"

    goto :goto_9

    :cond_26
    const-string v0, "Left jaw"

    goto :goto_9

    :cond_29
    if-eqz p2, :cond_2e

    const-string v0, "\u0414\u044f\u0441\u043d\u0430 \u0447\u0435\u043b\u044e\u0441\u0442"

    goto :goto_9

    :cond_2e
    const-string v0, "Right jaw"

    goto :goto_9

    .line 114
    :cond_31
    if-nez p1, :cond_3b

    if-eqz p2, :cond_38

    const-string v0, "\u041b\u044f\u0432\u0430 \u0431\u0443\u0437\u0430"

    goto :goto_9

    :cond_38
    const-string v0, "Left cheek"

    goto :goto_9

    :cond_3b
    if-eqz p2, :cond_40

    const-string v0, "\u0414\u044f\u0441\u043d\u0430 \u0431\u0443\u0437\u0430"

    goto :goto_9

    :cond_40
    const-string v0, "Right cheek"

    goto :goto_9
.end method

.method public channels()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 87
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 89
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v0, v3, :cond_33

    .line 90
    add-int/lit8 v0, v1, 0x1

    :goto_1f
    move v1, v0

    .line 92
    goto :goto_b

    .line 93
    :cond_21
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->single(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_2e
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_33
    move v0, v1

    goto :goto_1f
.end method

.method public clientName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string v0, ""

    return-object v0
.end method

.method public courseKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "bt"

    return-object v0
.end method

.method public doneShare()D
    .registers 9

    .prologue
    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    .line 245
    :cond_e
    const-wide/16 v0, 0x0

    .line 248
    :goto_10
    return-wide v0

    .line 247
    :cond_11
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    if-eqz v0, :cond_32

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->endedAt:J

    .line 248
    :goto_17
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    const-wide/16 v4, 0x1

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->totalMs()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_10

    .line 247
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_17
.end method

.method public finished()Z
    .registers 5

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->endedAt:J

    .line 240
    :cond_21
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    return v0
.end method

.method public kind()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public maxStrength()I
    .registers 2

    .prologue
    .line 145
    const/16 v0, 0x3c

    return v0
.end method

.method public notReady(IZ)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 118
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 120
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v0, v3, :cond_3d

    .line 121
    add-int/lit8 v0, v1, 0x1

    :goto_1f
    move v1, v0

    .line 123
    goto :goto_b

    .line 124
    :cond_21
    if-nez v1, :cond_2b

    .line 125
    if-eqz p2, :cond_28

    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e Bluetens \u2014 \u0442\u043e \u0441\u0435 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u0441\u0430\u043c\u043e"

    .line 131
    :goto_27
    return-object v0

    .line 125
    :cond_28
    const-string v0, "Switch on a Bluetens pad \u2014 it connects by itself"

    goto :goto_27

    .line 127
    :cond_2b
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->single(I)Z

    move-result v0

    if-nez v0, :cond_3b

    if-ge v1, v3, :cond_3b

    .line 128
    if-eqz p2, :cond_38

    const-string v0, "\u0421\u0430\u043c\u043e \u0435\u0434\u043d\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e: \u0449\u0435 \u0440\u0430\u0431\u043e\u0442\u0438 \u0435\u0434\u043d\u0430\u0442\u0430 \u0441\u0442\u0440\u0430\u043d\u0430. \u0417\u0430 \u0434\u0432\u0435\u0442\u0435 \u2014 \u0432\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u043e."

    goto :goto_27

    .line 129
    :cond_38
    const-string v0, "One pad only: one side works. For both \u2014 switch on a second."

    goto :goto_27

    .line 131
    :cond_3b
    const/4 v0, 0x0

    goto :goto_27

    :cond_3d
    move v0, v1

    goto :goto_1f
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 225
    return-void
.end method

.method public paused()Z
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public phases()[J
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 261
    const/4 v0, 0x3

    new-array v4, v0, [J

    .line 262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    if-nez v0, :cond_a

    move-object v0, v4

    .line 270
    :goto_9
    return-object v0

    .line 265
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v5

    move v1, v2

    .line 266
    :goto_17
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 267
    if-nez v1, :cond_3b

    move v3, v2

    .line 268
    :goto_22
    aget-wide v6, v4, v3

    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->ms()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v4, v3

    .line 266
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 267
    :cond_3b
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_48

    const/4 v0, 0x2

    move v3, v0

    goto :goto_22

    :cond_48
    const/4 v0, 0x1

    move v3, v0

    goto :goto_22

    :cond_4b
    move-object v0, v4

    .line 270
    goto :goto_9
.end method

.method public prepare(IIZ)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 161
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    .line 162
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->channels()I

    move-result v0

    if-nez v0, :cond_10

    .line 163
    invoke-virtual {p0, p1, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->notReady(IZ)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_f
    return-object v0

    .line 165
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_23

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 168
    if-eqz p3, :cond_20

    const-string v0, "\u041d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0432\u044a\u0440\u0432\u0435\u0448\u0435 \u0434\u0440\u0443\u0433\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u2014 \u0441\u043f\u0440\u044f\u043d\u0430 \u0435. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041d\u0430\u0437\u0430\u0434\u201c \u0438 \u043f\u0430\u043a \u201e\u043a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430\u201c."

    goto :goto_f

    .line 169
    :cond_20
    const-string v0, "Another program was running on the pad \u2014 it is stopped. Tap Back, then to the strength again."

    goto :goto_f

    .line 171
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->padProgram(I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput p2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "program"

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "live"

    .line 177
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lib"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v5

    .line 179
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->fullUs(I)I

    move-result v0

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->of(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;I)Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    .line 180
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    .line 181
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_87
    :goto_87
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 185
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v3, v7, :cond_87

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->single(I)Z

    move-result v3

    if-eqz v3, :cond_a1

    if-ge v1, v8, :cond_87

    :cond_a1
    if-ge v1, v7, :cond_87

    .line 188
    if-ne p1, v7, :cond_c7

    if-ne v1, v8, :cond_c7

    const/16 v3, 0x9

    .line 189
    :goto_a9
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    if-ne v3, v4, :cond_cc

    move-object v4, v5

    .line 190
    :goto_b0
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-static {v3, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fileName(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->start(Ljava/lang/String;[B)V

    .line 191
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 192
    goto :goto_87

    .line 188
    :cond_c7
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    goto :goto_a9

    .line 189
    :cond_cc
    invoke-static {v3, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v4

    goto :goto_b0

    .line 193
    :cond_d1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v4

    double-to-long v4, v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    .line 196
    const/4 v0, 0x0

    goto/16 :goto_f
.end method

.method public programs()[I
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->BLUETENS:[I

    return-object v0
.end method

.method public running()Z
    .registers 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public sideOf(I)I
    .registers 3

    .prologue
    .line 98
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->single(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    const/4 v0, -0x1

    .line 101
    :goto_9
    return v0

    :cond_a
    if-nez p1, :cond_e

    const/4 v0, 0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public start(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    .line 205
    return-void
.end method

.method public state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 252
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_27

    .line 253
    :cond_14
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    .line 254
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    if-eqz v3, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->totalMs()J

    move-result-wide v0

    :cond_23
    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->totalMs:J

    move-object v0, v2

    .line 257
    :goto_26
    return-object v0

    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->at(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    goto :goto_26
.end method

.method public step(II)V
    .registers 5

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_b

    .line 156
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v1, v0, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    .line 158
    :cond_b
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 229
    return-void
.end method

.method public stopLabel(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 232
    if-eqz p1, :cond_5

    const-string v0, "\u25a0  \u041a\u0440\u0430\u0439"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "\u25a0  End"

    goto :goto_4
.end method

.method public strength(I)I
    .registers 4

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v1, :cond_15

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
