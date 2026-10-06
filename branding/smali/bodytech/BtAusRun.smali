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
.field burstHz:I

.field burstMs:I

.field carrier:I

.field final chans:[Z

.field elapsed:D

.field error:Ljava/lang/String;

.field final handler:Landroid/os/Handler;

.field private final hzs:[I

.field private ifcA:I

.field private ifcB:I

.field private last:J

.field level:I

.field final mac:Ljava/lang/String;

.field minutes:I

.field offS:I

.field onS:I

.field final pcts:[I

.field pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

.field rampS:I

.field private sentOff:Z

.field private softFrom:J

.field state:I

.field t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

.field final ui:Ljava/lang/Runnable;

.field wave:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    .line 24
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    .line 26
    iput v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 29
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;-><init>(IIF)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    .line 30
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    .line 31
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    .line 37
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->mac:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method private halt()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 130
    move v0, v7

    :goto_4
    const/16 v2, 0x8

    if-gt v0, v2, :cond_f

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 131
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->mac:Ljava/lang/String;

    move-object v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/bodytech/BtBridge;->program(Ljava/lang/String;[I[IIIIIIZ)Ljava/lang/String;

    .line 132
    iput-boolean v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    .line 133
    return-void
.end method

.method private ifcHz(D)V
    .registers 14

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 137
    new-array v6, v7, [I

    move v2, v4

    move v1, v4

    .line 139
    :goto_8
    if-ge v2, v7, :cond_1c

    .line 140
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v5

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_68

    add-int/lit8 v0, v1, 0x1

    aput v5, v6, v1

    .line 139
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_8

    .line 143
    :cond_1c
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcB:I

    .line 144
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatHi:I

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v5, v5, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    if-le v2, v5, :cond_43

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcA:I

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v5, v5, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatHi:I

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v7, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->sweepS:I

    invoke-static {v2, v5, v7, p1, p2}, Lcom/isaigu/gymapp/bodytech/BtAus;->beatAt(IIID)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcB(II)I

    move-result v0

    :cond_43
    move v5, v4

    .line 145
    :goto_44
    if-ge v5, v1, :cond_67

    .line 146
    aget v7, v6, v5

    .line 147
    add-int/lit8 v2, v1, -0x1

    if-ne v5, v2, :cond_5c

    rem-int/lit8 v2, v1, 0x2

    if-ne v2, v3, :cond_5c

    move v2, v3

    .line 148
    :goto_51
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    if-eqz v2, :cond_5e

    move v2, v4

    :goto_56
    aput v2, v8, v7

    .line 145
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_44

    :cond_5c
    move v2, v4

    .line 147
    goto :goto_51

    .line 148
    :cond_5e
    rem-int/lit8 v2, v5, 0x2

    if-nez v2, :cond_65

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcA:I

    goto :goto_56

    :cond_65
    move v2, v0

    goto :goto_56

    .line 150
    :cond_67
    return-void

    :cond_68
    move v0, v1

    goto :goto_18
.end method


# virtual methods
.method blocker()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->channelCount()I

    move-result v0

    .line 70
    if-nez v0, :cond_9

    const-string v0, "\u0418\u0437\u0431\u0435\u0440\u0438 \u043f\u043e\u043d\u0435 \u0435\u0434\u043d\u0430 \u0437\u043e\u043d\u0430"

    .line 72
    :goto_8
    return-object v0

    .line 71
    :cond_9
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    const-string v0, "\u041d\u0443\u0436\u043d\u0438 \u0441\u0430 2 \u043a\u0430\u043d\u0430\u043b\u0430 \u2014 \u0434\u0432\u0435 \u0434\u0432\u043e\u0439\u043a\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u043a\u0440\u044a\u0441\u0442\u043e\u0441\u0430\u043d\u043e"

    goto :goto_8

    .line 72
    :cond_15
    const/4 v0, 0x0

    goto :goto_8
.end method

.method channelCount()I
    .registers 4

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
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

    .line 64
    :cond_11
    return v0
.end method

.method load(Lcom/isaigu/gymapp/bodytech/BtAus$T;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 43
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 44
    iget v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->level:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    .line 45
    iget v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->minutes:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    .line 46
    iget v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->onS:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    .line 47
    iget v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->offS:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    .line 48
    iget v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->rampS:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:I

    .line 49
    iget v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->burstHz:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    .line 50
    iget v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->burstMs:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    .line 51
    iget v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->wave:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:I

    .line 52
    iget v0, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->carrier:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    move v4, v3

    .line 53
    :goto_29
    const/16 v0, 0x8

    if-gt v4, v0, :cond_4a

    .line 55
    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v5

    move v0, v1

    move v2, v1

    .line 56
    :goto_33
    iget-object v6, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->zones:[I

    array-length v6, v6

    if-ge v0, v6, :cond_42

    iget-object v6, p1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->zones:[I

    aget v6, v6, v0

    if-ne v6, v5, :cond_3f

    move v2, v3

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 57
    :cond_42
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aput-boolean v2, v0, v4

    .line 53
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_29

    .line 59
    :cond_4a
    return-void
.end method

.method pause()V
    .registers 3

    .prologue
    .line 108
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 113
    :goto_5
    return-void

    .line 109
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 110
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->halt()V

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_5
.end method

.method public run()V
    .registers 10

    .prologue
    .line 154
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 205
    :goto_5
    return-void

    .line 155
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 156
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->last:J

    sub-long v0, v2, v0

    .line 157
    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->last:J

    .line 158
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-lez v4, :cond_18

    const-wide/16 v0, 0x3e8

    .line 159
    :cond_18
    iget-wide v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    .line 160
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->totalSec()D

    move-result-wide v4

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_43

    .line 161
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->totalSec()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    .line 162
    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->halt()V

    .line 163
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 165
    :try_start_3a
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->stop()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_119

    .line 168
    :goto_3d
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 171
    :cond_43
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:I

    iget-wide v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    invoke-static {v0, v1, v4, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtAus;->at(IIID)Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    .line 172
    const/high16 v0, 0x3f800000    # 1.0f

    iget-wide v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->softFrom:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->factor:F

    mul-float v2, v1, v0

    .line 174
    const/4 v0, 0x1

    :goto_65
    const/16 v1, 0x8

    if-gt v0, v1, :cond_77

    .line 175
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    aput v3, v1, v0

    .line 176
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 178
    :cond_77
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    if-eqz v0, :cond_82

    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcHz(D)V

    .line 179
    :cond_82
    const/4 v0, 0x0

    .line 180
    const/4 v1, 0x1

    :goto_84
    const/16 v3, 0x8

    if-gt v1, v3, :cond_ab

    .line 181
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_94

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    aget v3, v3, v1

    if-gtz v3, :cond_97

    .line 180
    :cond_94
    :goto_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 182
    :cond_97
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/isaigu/gymapp/bodytech/BtAus;->pct(IFI)I

    move-result v4

    aput v4, v3, v1

    .line 183
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    aget v3, v3, v1

    add-int/2addr v0, v3

    goto :goto_94

    .line 185
    :cond_ab
    if-nez v0, :cond_cf

    .line 186
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    if-nez v0, :cond_c1

    .line 187
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

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    .line 203
    :cond_c1
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 191
    :cond_cf
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAus;->burst(II)[I

    move-result-object v6

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->mac:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->hzs:[I

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtAus$T;->us:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/bodytech/BtAus;->widthFor(II)I

    move-result v3

    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:I

    const/4 v5, 0x0

    aget v5, v6, v5

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/bodytech/BtBridge;->program(Ljava/lang/String;[I[IIIIIIZ)Ljava/lang/String;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    .line 194
    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    .line 195
    const-string v1, "no_suit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 196
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0432\u044a\u0440\u0437\u0430\u043d bodytech \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u0441\u0432\u044a\u0440\u0436\u0438 \u0433\u043e \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    .line 197
    :goto_10a
    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->stop()V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ui:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5

    .line 197
    :cond_116
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0432\u044a\u0440\u0432\u0438 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u2014 \u0441\u043f\u0440\u0438 \u044f, \u0437\u0430 \u0434\u0430 \u043f\u0443\u0441\u043d\u0435\u0448 \u0442\u043e\u043a"

    goto :goto_10a

    .line 166
    :catch_119
    move-exception v0

    goto/16 :goto_3d
.end method

.method start()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eq v0, v2, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->blocker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 105
    :cond_10
    :goto_10
    return-void

    .line 81
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    .line 82
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    .line 83
    :cond_1d
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    if-eqz v0, :cond_41

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatHi:I

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    if-le v0, v1, :cond_5d

    .line 86
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcA:I

    .line 87
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcB(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcB:I

    .line 95
    :cond_41
    :goto_41
    :try_start_41
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->start()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_70

    .line 99
    :cond_44
    :goto_44
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->last:J

    .line 101
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->last:J

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->softFrom:J

    .line 102
    iput-boolean v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sentOff:Z

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 89
    :cond_5d
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcPair(II)[I

    move-result-object v0

    .line 90
    aget v1, v0, v3

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcA:I

    .line 91
    aget v0, v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ifcB:I

    goto :goto_41

    .line 96
    :catch_70
    move-exception v0

    goto :goto_44
.end method

.method stop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 117
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 118
    :goto_6
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    .line 119
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->halt()V

    .line 121
    if-eqz v0, :cond_15

    .line 123
    :try_start_12
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtBeep;->stop()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_18

    .line 127
    :cond_15
    :goto_15
    return-void

    :cond_16
    move v0, v1

    .line 117
    goto :goto_6

    .line 124
    :catch_18
    move-exception v0

    goto :goto_15
.end method

.method totalSec()D
    .registers 5

    .prologue
    .line 76
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    return-wide v0
.end method
