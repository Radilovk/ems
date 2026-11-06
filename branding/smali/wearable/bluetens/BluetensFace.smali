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

.method static isFace(I)Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/4 v0, 0x6

    if-eq p0, v0, :cond_9

    const/4 v0, 0x7

    if-ne p0, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    .registers 7

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
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

    .line 53
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    .line 54
    if-ne v1, p1, :cond_20

    .line 60
    :goto_1f
    return-object v0

    .line 57
    :cond_20
    add-int/lit8 v0, v1, 0x1

    :goto_22
    move v1, v0

    .line 59
    goto :goto_a

    .line 60
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
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x6

    :goto_4
    return v0

    .line 26
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_a

    const/4 v0, 0x7

    goto :goto_4

    :cond_a
    const/4 v0, 0x5

    goto :goto_4
.end method


# virtual methods
.method public active()Z
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    return v0
.end method

.method public battery(I)I
    .registers 3

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 121
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
    .line 107
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
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public canStart()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 158
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
    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    if-nez v0, :cond_f

    .line 233
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 235
    :cond_f
    return-void
.end method

.method public channelName(IZ)Ljava/lang/String;
    .registers 5

    .prologue
    .line 82
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 83
    if-eqz p2, :cond_a

    const-string v0, "\u041f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    .line 85
    :goto_9
    return-object v0

    .line 83
    :cond_a
    const-string v0, "Under the chin"

    goto :goto_9

    .line 85
    :cond_d
    if-nez p1, :cond_17

    if-eqz p2, :cond_14

    const-string v0, "\u041b\u044f\u0432\u0430 \u0431\u0443\u0437\u0430"

    goto :goto_9

    :cond_14
    const-string v0, "Left cheek"

    goto :goto_9

    :cond_17
    if-eqz p2, :cond_1c

    const-string v0, "\u0414\u044f\u0441\u043d\u0430 \u0431\u0443\u0437\u0430"

    goto :goto_9

    :cond_1c
    const-string v0, "Right cheek"

    goto :goto_9
.end method

.method public channels()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 64
    const/4 v0, 0x0

    .line 65
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

    .line 66
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v0, v3, :cond_2f

    .line 67
    add-int/lit8 v0, v1, 0x1

    :goto_1f
    move v1, v0

    .line 69
    goto :goto_b

    .line 70
    :cond_21
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    if-ne v0, v3, :cond_2a

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_2a
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_2f
    move v0, v1

    goto :goto_1f
.end method

.method public clientName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public courseKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string v0, "bt"

    return-object v0
.end method

.method public doneShare()D
    .registers 9

    .prologue
    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    .line 203
    :cond_e
    const-wide/16 v0, 0x0

    .line 206
    :goto_10
    return-wide v0

    .line 205
    :cond_11
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    if-eqz v0, :cond_32

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->endedAt:J

    .line 206
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

    .line 205
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_17
.end method

.method public finished()Z
    .registers 5

    .prologue
    .line 194
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

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->endedAt:J

    .line 198
    :cond_21
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    return v0
.end method

.method public kind()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public maxStrength()I
    .registers 2

    .prologue
    .line 116
    const/16 v0, 0x3c

    return v0
.end method

.method public notReady(IZ)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 89
    const/4 v0, 0x0

    .line 90
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

    .line 91
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->state:I

    if-ne v0, v3, :cond_39

    .line 92
    add-int/lit8 v0, v1, 0x1

    :goto_1f
    move v1, v0

    .line 94
    goto :goto_b

    .line 95
    :cond_21
    if-nez v1, :cond_2b

    .line 96
    if-eqz p2, :cond_28

    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e Bluetens \u2014 \u0442\u043e \u0441\u0435 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u0441\u0430\u043c\u043e"

    .line 102
    :goto_27
    return-object v0

    .line 96
    :cond_28
    const-string v0, "Switch on a Bluetens pad \u2014 it connects by itself"

    goto :goto_27

    .line 98
    :cond_2b
    if-eq p1, v3, :cond_37

    if-ge v1, v3, :cond_37

    .line 99
    if-eqz p2, :cond_34

    const-string v0, "\u0421\u0430\u043c\u043e \u0435\u0434\u043d\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e: \u0449\u0435 \u0440\u0430\u0431\u043e\u0442\u0438 \u0435\u0434\u043d\u0430 \u0431\u0443\u0437\u0430. \u0417\u0430 \u0434\u0432\u0435\u0442\u0435 \u2014 \u0432\u043a\u043b\u044e\u0447\u0438 \u0432\u0442\u043e\u0440\u043e."

    goto :goto_27

    .line 100
    :cond_34
    const-string v0, "One pad only: one cheek works. For both \u2014 switch on a second."

    goto :goto_27

    .line 102
    :cond_37
    const/4 v0, 0x0

    goto :goto_27

    :cond_39
    move v0, v1

    goto :goto_1f
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 183
    return-void
.end method

.method public paused()Z
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public phases()[J
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 219
    const/4 v0, 0x3

    new-array v4, v0, [J

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    if-nez v0, :cond_a

    move-object v0, v4

    .line 228
    :goto_9
    return-object v0

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v5

    move v1, v2

    .line 224
    :goto_17
    iget-object v0, v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4b

    .line 225
    if-nez v1, :cond_3b

    move v3, v2

    .line 226
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

    .line 224
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 225
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

    .line 228
    goto :goto_9
.end method

.method public prepare(IIZ)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 132
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    .line 133
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->channels()I

    move-result v0

    if-nez v0, :cond_e

    .line 134
    invoke-virtual {p0, p1, p3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->notReady(IZ)Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_d
    return-object v0

    .line 136
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v0, :cond_21

    .line 138
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 139
    if-eqz p3, :cond_1e

    const-string v0, "\u041d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e \u0432\u044a\u0440\u0432\u0435\u0448\u0435 \u0434\u0440\u0443\u0433\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u2014 \u0441\u043f\u0440\u044f\u043d\u0430 \u0435. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u041d\u0430\u0437\u0430\u0434\u201c \u0438 \u043f\u0430\u043a \u201e\u043a\u044a\u043c \u0441\u0438\u043b\u0430\u0442\u0430\u201c."

    goto :goto_d

    .line 140
    :cond_1e
    const-string v0, "Another program was running on the pad \u2014 it is stopped. Tap Back, then to the strength again."

    goto :goto_d

    .line 142
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->mine:Z

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->live:Z

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput-boolean v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->libTab:Z

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->padProgram(I)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iput p2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->minutes:I

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "program"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mine"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "live"

    .line 148
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lib"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->program:I

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensPrograms;->build(II)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v1

    .line 150
    const/4 v0, 0x2

    if-ne p1, v0, :cond_84

    const/16 v0, 0xc8

    :goto_73
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->of(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;I)Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    .line 151
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    .line 152
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->ended:Z

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->go()V

    .line 154
    const/4 v0, 0x0

    goto :goto_d

    .line 150
    :cond_84
    const/16 v0, 0x64

    goto :goto_73
.end method

.method public programs()[I
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->BLUETENS:[I

    return-object v0
.end method

.method public running()Z
    .registers 2

    .prologue
    .line 170
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
    .registers 4

    .prologue
    .line 75
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->program:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 76
    const/4 v0, -0x1

    .line 78
    :goto_6
    return v0

    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public start(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->begun:Z

    .line 163
    return-void
.end method

.method public state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 210
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->running:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-wide v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->startedAt:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_27

    .line 211
    :cond_14
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    .line 212
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    if-eqz v3, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->timeline:Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->totalMs()J

    move-result-wide v0

    :cond_23
    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->totalMs:J

    move-object v0, v2

    .line 215
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
    .line 125
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_b

    .line 127
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v1, v0, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    .line 129
    :cond_b
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->stopAll()V

    .line 187
    return-void
.end method

.method public stopLabel(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 190
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
    .line 111
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensFace;->pad(I)Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    move-result-object v0

    .line 112
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
