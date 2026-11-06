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

.field private final timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    .line 23
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 24
    return-void
.end method

.method static fullUs(I)I
    .registers 2

    .prologue
    .line 48
    packed-switch p0, :pswitch_data_10

    .line 52
    :pswitch_3
    const/16 v0, 0x64

    :goto_5
    return v0

    .line 49
    :pswitch_6
    const/16 v0, 0xc8

    goto :goto_5

    .line 50
    :pswitch_9
    const/16 v0, 0xfa

    goto :goto_5

    .line 51
    :pswitch_c
    const/16 v0, 0x96

    goto :goto_5

    .line 48
    nop

    :pswitch_data_10
    .packed-switch 0x7
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method static isFace(I)Z
    .registers 2

    .prologue
    .line 58
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
    .line 90
    const/4 v0, 0x0

    .line 91
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

    .line 92
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    .line 93
    if-ne v1, p1, :cond_20

    .line 99
    :goto_1f
    return-object v0

    .line 96
    :cond_20
    add-int/lit8 v0, v1, 0x1

    :goto_22
    move v1, v0

    .line 98
    goto :goto_a

    .line 99
    :cond_24
    const/4 v0, 0x0

    goto :goto_1f

    :cond_26
    move v0, v1

    goto :goto_22
.end method

.method static padProgram(III)I
    .registers 9

    .prologue
    const/16 v3, 0x9

    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v5, 0x1

    const/16 v2, 0x8

    .line 28
    if-ne p1, v3, :cond_f

    move v4, v5

    .line 29
    :goto_a
    packed-switch p0, :pswitch_data_32

    move v0, v1

    .line 42
    :cond_e
    :goto_e
    :pswitch_e
    return v0

    .line 28
    :cond_f
    const/4 v4, 0x0

    goto :goto_a

    .line 30
    :pswitch_11
    const/4 v0, 0x6

    goto :goto_e

    .line 31
    :pswitch_13
    if-nez v4, :cond_e

    move v0, v1

    goto :goto_e

    .line 34
    :pswitch_17
    if-eqz v4, :cond_1b

    move v0, v2

    .line 35
    goto :goto_e

    .line 37
    :cond_1b
    const/4 v0, 0x3

    if-ge p2, v0, :cond_20

    if-ne p1, v5, :cond_22

    :cond_20
    move v0, v3

    goto :goto_e

    :cond_22
    move v0, v2

    goto :goto_e

    .line 38
    :pswitch_24
    const/16 v0, 0xa

    goto :goto_e

    .line 39
    :pswitch_27
    if-ne p1, v2, :cond_2c

    const/16 v0, 0xa

    goto :goto_e

    :cond_2c
    const/16 v0, 0xb

    goto :goto_e

    .line 40
    :pswitch_2f
    const/16 v0, 0xb

    goto :goto_e

    .line 29
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_11
        :pswitch_17
        :pswitch_24
        :pswitch_2f
        :pswitch_e
        :pswitch_13
        :pswitch_27
    .end packed-switch
.end method

.method private ready()I
    .registers 5

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->pads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 82
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_22

    .line 83
    add-int/lit8 v0, v1, 0x1

    :goto_1f
    move v1, v0

    .line 85
    goto :goto_a

    .line 86
    :cond_21
    return v1

    :cond_22
    move v0, v1

    goto :goto_1f
.end method

.method private sites()[I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->get(I)Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->bluetensSites()[I

    move-result-object v0

    return-object v0
.end method

.method private stateOf(IJ)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    .line 267
    if-ltz p1, :cond_2d

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    array-length v2, v2

    if-ge p1, v2, :cond_2d

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    aget-object v2, v2, p1

    move-object v3, v2

    .line 268
    :goto_e
    if-eqz v3, :cond_1e

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v4, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_30

    .line 269
    :cond_1e
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    .line 270
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->totalMs()J

    move-result-wide v0

    :cond_29
    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->totalMs:J

    move-object v0, v2

    .line 273
    :goto_2c
    return-object v0

    .line 267
    :cond_2d
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_e

    .line 273
    :cond_30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long v0, p2, v0

    invoke-virtual {v3, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->at(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    goto :goto_2c
.end method


# virtual methods
.method public active()Z
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    return v0
.end method

.method public battery(I)I
    .registers 3

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 157
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

.method public canPause()Z
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public canStart()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 211
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
    .line 294
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    if-nez v0, :cond_f

    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 297
    :cond_f
    return-void
.end method

.method public channelName(IZ)Ljava/lang/String;
    .registers 4

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->siteOf(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->siteName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public channels()I
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->sites()[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ready()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public clientName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, ""

    return-object v0
.end method

.method public courseKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string v0, "bt"

    return-object v0
.end method

.method public doneShare()D
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    aget-object v0, v0, v7

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    .line 256
    :cond_11
    const-wide/16 v0, 0x0

    .line 259
    :goto_13
    return-wide v0

    .line 258
    :cond_14
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    if-eqz v0, :cond_37

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->endedAt:J

    .line 259
    :goto_1a
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v4, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    const-wide/16 v4, 0x1

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->totalMs()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_13

    .line 258
    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1a
.end method

.method public finished()Z
    .registers 5

    .prologue
    .line 247
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

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->endedAt:J

    .line 251
    :cond_21
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    return v0
.end method

.method public hasMaster()Z
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public kind()I
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public level(IJ)F
    .registers 6

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->strength(I)I

    move-result v0

    if-lez v0, :cond_d

    invoke-direct {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->stateOf(IJ)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public maxStrength()I
    .registers 2

    .prologue
    .line 152
    const/16 v0, 0x3c

    return v0
.end method

.method public notReady(IZ)Ljava/lang/String;
    .registers 7

    .prologue
    .line 133
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    .line 134
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ready()I

    move-result v0

    .line 135
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->sites()[I

    move-result-object v1

    array-length v1, v1

    .line 136
    if-nez v0, :cond_15

    .line 137
    if-eqz p2, :cond_12

    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e Bluetens \u2014 \u0442\u043e \u0441\u0435 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u0441\u0430\u043c\u043e"

    .line 143
    :goto_11
    return-object v0

    .line 137
    :cond_12
    const-string v0, "Switch on a Bluetens pad \u2014 it connects by itself"

    goto :goto_11

    .line 139
    :cond_15
    if-ge v0, v1, :cond_5b

    .line 140
    if-eqz p2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0421\u0432\u044a\u0440\u0437\u0430\u043d\u0438 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043e\u0442 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430: \u0449\u0435 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u043f\u044a\u0440\u0432\u0438\u0442\u0435 \u043c\u0435\u0441\u0442\u0430. \u0417\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u2014 \u0432\u043a\u043b\u044e\u0447\u0438 \u043e\u0449\u0435."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 141
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pads connected: the first sites work. For all \u2014 switch on more."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 143
    :cond_5b
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 236
    return-void
.end method

.method public paused()Z
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public phases()[J
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 281
    const/4 v0, 0x3

    new-array v4, v0, [J

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    aget-object v0, v0, v2

    if-nez v0, :cond_c

    move-object v0, v4

    .line 290
    :goto_b
    return-object v0

    .line 285
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v5

    move v1, v2

    .line 286
    :goto_19
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    .line 287
    if-nez v1, :cond_3d

    move v3, v2

    .line 288
    :goto_24
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

    .line 286
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 287
    :cond_3d
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_4a

    const/4 v0, 0x2

    move v3, v0

    goto :goto_24

    :cond_4a
    const/4 v0, 0x1

    move v3, v0

    goto :goto_24

    :cond_4d
    move-object v0, v4

    .line 290
    goto :goto_b
.end method

.method public prepare(IIZ)Ljava/lang/String;
    .registers 16

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 168
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    .line 169
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->channels()I

    move-result v0

    .line 170
    if-nez v0, :cond_f

    .line 171
    invoke-virtual {p0, p1, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->notReady(IZ)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_e
    return-object v0

    .line 173
    :cond_f
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v2, :cond_22

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 176
    if-eqz p3, :cond_1f

    const-string v0, "\u041d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0432\u044a\u0440\u0432\u0435\u0448\u0435 \u0434\u0440\u0443\u0433\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u2014 \u0441\u043f\u0440\u044f\u043d\u0430 \u0435. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041d\u0430\u0437\u0430\u0434\u201c \u0438 \u043f\u0430\u043a \u201e\u043a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430\u201c."

    goto :goto_e

    .line 177
    :cond_1f
    const-string v0, "Another program was running on the pad \u2014 it is stopped. Tap Back, then to the strength again."

    goto :goto_e

    .line 179
    :cond_22
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v3, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 180
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v3, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    .line 181
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v3, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    .line 182
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->siteOf(I)I

    move-result v2

    invoke-static {p1, v2, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->padProgram(III)I

    move-result v2

    .line 183
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput v2, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 184
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput p2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 185
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "program"

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v5, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "minutes"

    invoke-interface {v2, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "mine"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "live"

    .line 186
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "lib"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    .line 188
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    .line 189
    const-wide/16 v4, 0x0

    move v2, v3

    .line 191
    :goto_72
    if-ge v2, v0, :cond_b1

    .line 192
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v6

    .line 193
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->siteOf(I)I

    move-result v7

    invoke-static {p1, v7, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->padProgram(III)I

    move-result v7

    .line 194
    invoke-static {v7, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v8

    .line 195
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->fullUs(I)I

    move-result v10

    invoke-static {v8, v10}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->of(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;I)Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    move-result-object v10

    aput-object v10, v9, v2

    .line 196
    invoke-virtual {v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v10

    double-to-long v10, v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 197
    if-eqz v6, :cond_ae

    .line 198
    iget-object v6, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v6, v6, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    invoke-static {v7, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->fileName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->build()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->start(Ljava/lang/String;[B)V

    .line 191
    :cond_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 201
    :cond_b1
    :goto_b1
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    array-length v2, v2

    if-ge v0, v2, :cond_bd

    .line 202
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:[Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    aput-object v1, v2, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 204
    :cond_bd
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-wide v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->lengthMs:J

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->finished:Z

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->render()V

    move-object v0, v1

    .line 207
    goto/16 :goto_e
.end method

.method public programs()[I
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->BLUETENS:[I

    return-object v0
.end method

.method public running()Z
    .registers 2

    .prologue
    .line 223
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

.method public select(I)V
    .registers 2

    .prologue
    .line 129
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    .line 130
    return-void
.end method

.method public siteOf(I)I
    .registers 5

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->sites()[I

    move-result-object v0

    .line 112
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
    .registers 3

    .prologue
    .line 116
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    .line 216
    return-void
.end method

.method public state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 4

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->stateOf(IJ)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    return-object v0
.end method

.method public step(II)V
    .registers 5

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_b

    .line 163
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v1, v0, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    .line 165
    :cond_b
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 240
    return-void
.end method

.method public stopLabel(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 243
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
    .line 147
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 148
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
