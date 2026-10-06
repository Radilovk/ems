.class final Lcom/isaigu/gymapp/bodytech/BtAusRun;
.super Ljava/lang/Object;
.source "BtAusRun.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final DONE:I = 0x3

.field static final IDLE:I = 0x0

.field static final PAUSE:I = 0x2

.field static final RUN:I = 0x1

.field static final SOFT_MS:J = 0x7d0L

.field static final TICK_MS:J = 0xfaL


# instance fields
.field burstHz:[I

.field burstMs:[I

.field carrier:[I

.field final chans:[Z

.field cur:I

.field elapsed:D

.field error:Ljava/lang/String;

.field final handler:Landroid/os/Handler;

.field private final hzs:[I

.field private ifcA:I

.field private ifcB:I

.field private last:J

.field level:[I

.field final mac:Ljava/lang/String;

.field minutes:[I

.field n:I

.field offS:[I

.field onS:[I

.field final pcts:[I

.field phaseStart:D

.field pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

.field rampS:[I

.field sel:I

.field private sentOff:Z

.field private softFrom:J

.field state:I

.field t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

.field final ui:Ljava/lang/Runnable;

.field wave:[I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    .line 26
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    .line 32
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 36
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;-><init>(IIF)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    .line 37
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    .line 38
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    .line 44
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->mac:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method private enter(IDJ)V
    .registers 10

    .prologue
    .line 178
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    .line 179
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sel:I

    .line 180
    iput-wide p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->phaseStart:D

    .line 181
    iput-wide p4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->softFrom:J

    .line 182
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v0

    .line 183
    iget-boolean v1, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->ifc:Z

    if-eqz v1, :cond_28

    .line 184
    iget v1, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatHi:I

    iget v2, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatLo:I

    if-le v1, v2, :cond_32

    .line 185
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:[I

    aget v1, v1, p1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcA:I

    .line 186
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:[I

    aget v1, v1, p1

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatLo:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcB(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcB:I

    .line 193
    :cond_28
    :goto_28
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_31

    .line 195
    :try_start_2e
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->start()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_47

    .line 199
    :cond_31
    :goto_31
    return-void

    .line 188
    :cond_32
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:[I

    aget v1, v1, p1

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatLo:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcPair(II)[I

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcA:I

    .line 190
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcB:I

    goto :goto_28

    .line 196
    :catch_47
    move-exception v0

    goto :goto_31
.end method

.method private halt()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 171
    move v0, v7

    :goto_4
    const/16 v2, 0x8

    if-gt v0, v2, :cond_f

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 172
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->mac:Ljava/lang/String;

    move-object v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/bodytech/BtBridge;->program(Ljava/lang/String;[I[IIIIIIZ)Ljava/lang/String;

    .line 173
    iput-boolean v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    .line 174
    return-void
.end method

.method private ifcHz(Lcom/isaigu/gymapp/bodytech/BtAus$Ph;D)V
    .registers 14

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 203
    new-array v6, v7, [I

    move v2, v4

    move v1, v4

    .line 205
    :goto_8
    if-ge v2, v7, :cond_1c

    .line 206
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v5

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_5e

    add-int/lit8 v0, v1, 0x1

    aput v5, v6, v1

    .line 205
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_8

    .line 209
    :cond_1c
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcB:I

    .line 210
    iget v2, p1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatHi:I

    iget v5, p1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatLo:I

    if-le v2, v5, :cond_39

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcA:I

    iget v2, p1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatLo:I

    iget v5, p1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatHi:I

    iget v7, p1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->sweepS:I

    invoke-static {v2, v5, v7, p2, p3}, Lcom/isaigu/gymapp/bodytech/BtAus;->beatAt(IIID)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcB(II)I

    move-result v0

    :cond_39
    move v5, v4

    .line 211
    :goto_3a
    if-ge v5, v1, :cond_5d

    .line 212
    aget v7, v6, v5

    .line 213
    add-int/lit8 v2, v1, -0x1

    if-ne v5, v2, :cond_52

    rem-int/lit8 v2, v1, 0x2

    if-ne v2, v3, :cond_52

    move v2, v3

    .line 214
    :goto_47
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    if-eqz v2, :cond_54

    move v2, v4

    :goto_4c
    aput v2, v8, v7

    .line 211
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3a

    :cond_52
    move v2, v4

    .line 213
    goto :goto_47

    .line 214
    :cond_54
    rem-int/lit8 v2, v5, 0x2

    if-nez v2, :cond_5b

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcA:I

    goto :goto_4c

    :cond_5b
    move v2, v0

    goto :goto_4c

    .line 216
    :cond_5d
    return-void

    :cond_5e
    move v0, v1

    goto :goto_18
.end method


# virtual methods
.method blocker()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->channelCount()I

    move-result v0

    .line 96
    if-nez v0, :cond_9

    const-string v0, "\u0418\u0437\u0431\u0435\u0440\u0438 \u043f\u043e\u043d\u0435 \u0435\u0434\u043d\u0430 \u0437\u043e\u043d\u0430"

    .line 98
    :goto_8
    return-object v0

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    const-string v0, "\u041d\u0443\u0436\u043d\u0438 \u0441\u0430 2 \u043a\u0430\u043d\u0430\u043b\u0430 \u2014 \u0434\u0432\u0435 \u0434\u0432\u043e\u0439\u043a\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u043a\u0440\u044a\u0441\u0442\u043e\u0441\u0430\u043d\u043e"

    goto :goto_8

    .line 98
    :cond_15
    const/4 v0, 0x0

    goto :goto_8
.end method

.method channelCount()I
    .registers 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    const/4 v1, 0x1

    :goto_2
    const/16 v2, 0x8

    if-gt v1, v2, :cond_11

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    :cond_11
    return v0
.end method

.method load(Lcom/isaigu/gymapp/bodytech/BtAus$T;)V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 51
    iget-object v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ph:[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    array-length v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    .line 52
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:[I

    .line 53
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    .line 54
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    .line 55
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    .line 56
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:[I

    .line 57
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    .line 58
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    .line 59
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:[I

    .line 60
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:[I

    move v0, v1

    .line 61
    :goto_40
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    if-ge v0, v3, :cond_81

    .line 62
    iget-object v3, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ph:[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    aget-object v3, v3, v0

    .line 63
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:[I

    iget v5, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->level:I

    aput v5, v4, v0

    .line 64
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    iget v5, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->minutes:I

    aput v5, v4, v0

    .line 65
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    iget v5, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->onS:I

    aput v5, v4, v0

    .line 66
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    iget v5, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->offS:I

    aput v5, v4, v0

    .line 67
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:[I

    iget v5, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->rampS:I

    aput v5, v4, v0

    .line 68
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    iget v5, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->burstHz:I

    aput v5, v4, v0

    .line 69
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    iget v5, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->burstMs:I

    aput v5, v4, v0

    .line 70
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:[I

    iget v5, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->wave:I

    aput v5, v4, v0

    .line 71
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:[I

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->carrier:I

    aput v3, v4, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 73
    :cond_81
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    if-le v0, v2, :cond_a5

    move v0, v2

    :goto_86
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sel:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    move v4, v2

    .line 75
    :goto_8c
    const/16 v0, 0x8

    if-gt v4, v0, :cond_af

    .line 77
    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v5

    move v0, v1

    move v3, v1

    .line 78
    :goto_96
    iget-object v6, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->zones:[I

    array-length v6, v6

    if-ge v0, v6, :cond_a7

    iget-object v6, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->zones:[I

    aget v6, v6, v0

    if-ne v6, v5, :cond_a2

    move v3, v2

    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    :cond_a5
    move v0, v1

    .line 73
    goto :goto_86

    .line 79
    :cond_a7
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aput-boolean v3, v0, v4

    .line 75
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8c

    .line 81
    :cond_af
    return-void
.end method

.method pause()V
    .registers 3

    .prologue
    .line 133
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 138
    :goto_5
    return-void

    .line 134
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->halt()V

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_5
.end method

.method ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;
    .registers 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ph:[Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    if-gez p1, :cond_a

    const/4 p1, 0x0

    :cond_7
    :goto_7
    aget-object v0, v0, p1

    return-object v0

    :cond_a
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    if-lt p1, v1, :cond_7

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    add-int/lit8 p1, v1, -0x1

    goto :goto_7
.end method

.method phaseLeft()D
    .registers 9

    .prologue
    .line 109
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    if-gez v0, :cond_1a

    const/4 v0, 0x0

    .line 110
    :goto_5
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->phaseStart:D

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    aget v0, v1, v0

    int-to-double v0, v0

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    iget-wide v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 109
    :cond_1a
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    goto :goto_5
.end method

.method public run()V
    .registers 13

    .prologue
    .line 220
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 276
    :goto_5
    return-void

    .line 221
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 222
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->last:J

    sub-long v0, v4, v0

    .line 223
    iput-wide v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->last:J

    .line 224
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    const-wide/16 v0, 0x3e8

    .line 225
    :cond_18
    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAus;->phaseAt([ID)[I

    move-result-object v0

    .line 227
    const/4 v1, 0x0

    aget v1, v0, v1

    if-gez v1, :cond_46

    .line 228
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->totalSec()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    .line 229
    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->halt()V

    .line 230
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 232
    :try_start_3d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->stop()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_144

    .line 235
    :goto_40
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 238
    :cond_46
    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    if-eq v1, v2, :cond_58

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-double v2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->enter(IDJ)V

    .line 239
    :cond_58
    iget v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    .line 240
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v3

    .line 241
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    iget-wide v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->phaseStart:D

    sub-double v8, v0, v8

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    aget v0, v0, v6

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:[I

    aget v2, v2, v6

    invoke-static {v0, v1, v2, v8, v9}, Lcom/isaigu/gymapp/bodytech/BtAus;->at(IIID)Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    .line 243
    const/high16 v0, 0x3f800000    # 1.0f

    iget-wide v10, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->softFrom:J

    sub-long/2addr v4, v10

    long-to-float v1, v4

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->factor:F

    mul-float v2, v1, v0

    .line 245
    const/4 v0, 0x1

    :goto_8a
    const/16 v1, 0x8

    if-gt v0, v1, :cond_9e

    .line 246
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:[I

    aget v4, v4, v6

    aput v4, v1, v0

    .line 247
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    const/4 v4, 0x0

    aput v4, v1, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 249
    :cond_9e
    iget-boolean v0, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->ifc:Z

    if-eqz v0, :cond_a5

    invoke-direct {p0, v3, v8, v9}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcHz(Lcom/isaigu/gymapp/bodytech/BtAus$Ph;D)V

    .line 250
    :cond_a5
    const/4 v0, 0x0

    .line 251
    const/4 v1, 0x1

    :goto_a7
    const/16 v4, 0x8

    if-gt v1, v4, :cond_d0

    .line 252
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_b7

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    aget v4, v4, v1

    if-gtz v4, :cond_ba

    .line 251
    :cond_b7
    :goto_b7
    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    .line 253
    :cond_ba
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:[I

    aget v5, v5, v6

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v7

    invoke-static {v5, v2, v7}, Lcom/isaigu/gymapp/bodytech/BtAus;->pct(IFI)I

    move-result v5

    aput v5, v4, v1

    .line 254
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    aget v4, v4, v1

    add-int/2addr v0, v4

    goto :goto_b7

    .line 256
    :cond_d0
    if-nez v0, :cond_f4

    .line 257
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    if-nez v0, :cond_e6

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->mac:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/bodytech/BtBridge;->program(Ljava/lang/String;[I[IIIIIIZ)Ljava/lang/String;

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    .line 274
    :cond_e6
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 262
    :cond_f4
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    aget v0, v0, v6

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    aget v1, v1, v6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAus;->burst(II)[I

    move-result-object v7

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->mac:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:[I

    aget v4, v4, v6

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->us:I

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/bodytech/BtAus;->widthFor(II)I

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:[I

    aget v4, v4, v6

    const/4 v5, 0x0

    aget v5, v7, v5

    const/4 v6, 0x1

    aget v6, v7, v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/bodytech/BtBridge;->program(Ljava/lang/String;[I[IIIIIIZ)Ljava/lang/String;

    move-result-object v0

    .line 264
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    .line 265
    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    .line 266
    const-string v1, "no_suit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 267
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0432\u044a\u0440\u0437\u0430\u043d bodytech \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u0441\u0432\u044a\u0440\u0436\u0438 \u0433\u043e \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    .line 268
    :goto_135
    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->stop()V

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5

    .line 268
    :cond_141
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0432\u044a\u0440\u0432\u0438 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u2014 \u0441\u043f\u0440\u0438 \u044f, \u0437\u0430 \u0434\u0430 \u043f\u0443\u0441\u043d\u0435\u0448 \u0442\u043e\u043a"

    goto :goto_135

    .line 233
    :catch_144
    move-exception v0

    goto/16 :goto_40
.end method

.method skip()V
    .registers 7

    .prologue
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    .line 157
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    if-gez v0, :cond_10

    .line 168
    :cond_f
    :goto_f
    return-void

    .line 159
    :cond_10
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->phaseStart:D

    sub-double/2addr v0, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 160
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_29

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    aput v0, v1, v2

    .line 161
    :cond_29
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->phaseStart:D

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    aget v2, v2, v3

    int-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    .line 162
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_46

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 166
    :cond_46
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_f
.end method

.method start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 114
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eq v0, v2, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->blocker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 130
    :cond_f
    :goto_f
    return-void

    .line 115
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    .line 116
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 117
    :cond_1c
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    .line 120
    :try_start_23
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->start()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_40

    .line 124
    :cond_26
    :goto_26
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->last:J

    .line 126
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->last:J

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->softFrom:J

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 121
    :catch_40
    move-exception v0

    goto :goto_26
.end method

.method stop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 142
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 143
    :goto_6
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 144
    const/4 v1, -0x1

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    .line 145
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->halt()V

    .line 147
    if-eqz v0, :cond_18

    .line 149
    :try_start_15
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->stop()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_1b

    .line 153
    :cond_18
    :goto_18
    return-void

    :cond_19
    move v0, v1

    .line 142
    goto :goto_6

    .line 150
    :catch_1b
    move-exception v0

    goto :goto_18
.end method

.method totalSec()D
    .registers 9

    .prologue
    .line 102
    const-wide/16 v2, 0x0

    .line 103
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    aget v1, v1, v0

    int-to-double v4, v1

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 104
    :cond_13
    return-wide v2
.end method
