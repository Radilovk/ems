.class public final Lcom/isaigu/gymapp/bodytech/WiTranslator;
.super Ljava/lang/Object;
.source "WiTranslator.java"


# static fields
.field static final CMD_BATTERY:I = 0x5

.field static final CMD_RUN:I = 0x3

.field static final CMD_SETTING:I = 0x1

.field static final CMD_START:I = 0xf1

.field static final CMD_STOP:I = 0xf2

.field static final COUNTDOWN:I = 0x1

.field static final COUNTDOWN_MAX_MS:J = 0x1770L

.field static final DEF_HZ:I = 0x55

.field static final DEF_REST:I = 0x4

.field static final DEF_REST_HZ:I = 0x5

.field static final DEF_WORK:I = 0x4

.field static final GRACE_MS:J = 0xbb8L

.field static final IDLE:I = 0x0

.field static final IDLE_RUN_MAX_MS:J = 0x7530L

.field public static final MAIN:I = 0x1

.field public static final PAUSE:I = 0x0

.field static final RUNNING:I = 0x2

.field public static final SECOND:I = 0x2

.field static final SLIDER_TO_CH:[I

.field static final SLIDER_TO_CH_XEMS:[I


# instance fields
.field private armed:Z

.field private countdownAt:J

.field private deadlineMs:J

.field private final devCur:[I

.field private devHz:I

.field private devKnown:Z

.field private devRest:I

.field private devRestHz:I

.field private devWork:I

.field private hz:I

.field private idleRunAt:J

.field private on:Z

.field private final parts:[I

.field private phase:I

.field private restHz:I

.field private restS:I

.field private unit:I

.field private unsafe:Z

.field private workS:I

.field volatile xemsSuit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xa

    .line 182
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->SLIDER_TO_CH:[I

    .line 189
    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->SLIDER_TO_CH_XEMS:[I

    return-void

    .line 182
    nop

    :array_12
    .array-data 4
        0x6
        0x5
        0x8
        0x9
        0x7
        0x3
        0x4
        0x2
        0x1
        0x0
    .end array-data

    .line 189
    :array_2a
    .array-data 4
        0x9
        0x0
        0x8
        0x6
        0x5
        0x2
        0x1
        0x4
        0x3
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->parts:[I

    .line 34
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->phase:I

    .line 35
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unsafe:Z

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    .line 38
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->hz:I

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->workS:I

    iput v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restS:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restHz:I

    .line 40
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devCur:[I

    return-void
.end method

.method private static allZero([I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 262
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_d

    aget v3, p0, v1

    if-eqz v3, :cond_a

    .line 263
    :goto_9
    return v0

    .line 262
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 263
    :cond_d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 205
    if-eqz p0, :cond_a

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private begin(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 234
    const/4 v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->setCurrents(Ljava/util/List;[I)V

    .line 236
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->hz:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->workS:I

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restS:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/bodytech/WiProto;->program(IIIIII)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->hz:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devHz:I

    .line 238
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->workS:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devWork:I

    .line 239
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restS:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devRest:I

    .line 240
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->target()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->setCurrents(Ljava/util/List;[I)V

    .line 241
    return-void
.end method

.method private prepare(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unsafe:Z

    if-nez v0, :cond_6

    .line 216
    :goto_5
    return-void

    .line 211
    :cond_6
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unsafe:Z

    .line 212
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devKnown:Z

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->setCurrents(Ljava/util/List;[I)V

    .line 214
    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/WiProto;->run(Z)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    goto :goto_5
.end method

.method private setCurrents(Ljava/util/List;[I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;[I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0xa

    const/4 v2, 0x0

    .line 252
    if-eqz p2, :cond_19

    .line 253
    :goto_6
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devKnown:Z

    move v3, v2

    .line 254
    :goto_9
    if-ge v3, v5, :cond_1e

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devCur:[I

    aget v0, v0, v3

    aget v4, p2, v3

    if-ne v0, v4, :cond_1c

    move v0, v1

    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 252
    :cond_19
    new-array p2, v5, [I

    goto :goto_6

    :cond_1c
    move v0, v2

    .line 254
    goto :goto_16

    .line 255
    :cond_1e
    if-eqz v0, :cond_21

    .line 259
    :goto_20
    return-void

    .line 256
    :cond_21
    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/WiProto;->currents([I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devCur:[I

    invoke-static {p2, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devKnown:Z

    goto :goto_20
.end method

.method private startUnit(Ljava/util/List;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;J)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 219
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->hz:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->workS:I

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restS:I

    const/4 v5, 0x2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/bodytech/WiProto;->program(IIIIII)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restHz:I

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/WiProto;->rest(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/WiProto;->widths()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->setCurrents(Ljava/util/List;[I)V

    .line 223
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/WiProto;->run(Z)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->hz:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devHz:I

    .line 225
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->workS:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devWork:I

    .line 226
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restS:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devRest:I

    .line 227
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restHz:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devRestHz:I

    .line 228
    iput v6, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    .line 229
    iput-wide p2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->countdownAt:J

    .line 230
    return-void
.end method

.method private stopUnit(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 244
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devKnown:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devCur:[I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->allZero([I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 248
    :goto_11
    return-void

    .line 245
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->setCurrents(Ljava/util/List;[I)V

    .line 246
    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/WiProto;->run(Z)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    goto :goto_11
.end method


# virtual methods
.method public declared-synchronized arm(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->prepare(Ljava/util/List;)V

    .line 141
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    if-nez v1, :cond_10

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->startUnit(Ljava/util/List;J)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 142
    :cond_10
    monitor-exit p0

    return-object v0

    .line 139
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized armed()Z
    .registers 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->armed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized command(I[BJ)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    monitor-enter p0

    :try_start_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->prepare(Ljava/util/List;)V

    .line 84
    if-ne p1, v0, :cond_20

    .line 85
    :goto_f
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->parts:[I

    add-int/lit8 v2, v1, 0x1

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->at([BI)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 86
    :cond_20
    if-ne p1, v2, :cond_e7

    .line 87
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->at([BI)I

    move-result v2

    .line 88
    const/16 v3, 0xa

    invoke-static {p2, v3}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->at([BI)I

    move-result v3

    if-ne v3, v0, :cond_40

    .line 89
    :goto_2f
    if-eqz v0, :cond_33

    if-gtz v2, :cond_42

    .line 90
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->on:Z

    .line 91
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    if-ne v0, v4, :cond_3e

    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->setCurrents(Ljava/util/List;[I)V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_71

    .line 130
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-object v6

    :cond_40
    move v0, v1

    .line 88
    goto :goto_2f

    .line 93
    :cond_42
    :try_start_42
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->phase:I

    if-ne v0, v4, :cond_74

    .line 94
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restHz:I

    .line 100
    :goto_48
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->armed:Z

    if-eqz v0, :cond_3e

    .line 101
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->at([BI)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->at([BI)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 102
    if-lez v0, :cond_8c

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_60
    add-long/2addr v0, p3

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->deadlineMs:J

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->on:Z

    .line 104
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    if-nez v0, :cond_8f

    .line 105
    invoke-direct {p0, v6, p3, p4}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->startUnit(Ljava/util/List;J)V
    :try_end_70
    .catchall {:try_start_42 .. :try_end_70} :catchall_71

    goto :goto_3e

    .line 82
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_74
    :try_start_74
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->hz:I

    .line 97
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->at([BI)I

    move-result v0

    if-lez v0, :cond_84

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->at([BI)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->workS:I

    .line 98
    :cond_84
    const/4 v0, 0x6

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->at([BI)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restS:I

    goto :goto_48

    .line 102
    :cond_8c
    const-wide/16 v0, 0x1b58

    goto :goto_60

    .line 106
    :cond_8f
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    if-ne v0, v4, :cond_3e

    .line 107
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restHz:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devRestHz:I

    if-eq v0, v1, :cond_a8

    .line 108
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restHz:I

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/WiProto;->rest(II)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restHz:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devRestHz:I

    .line 111
    :cond_a8
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->phase:I

    if-eq v0, v4, :cond_de

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->hz:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devHz:I

    if-ne v0, v1, :cond_be

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->workS:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devWork:I

    if-ne v0, v1, :cond_be

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restS:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devRest:I

    if-eq v0, v1, :cond_de

    .line 113
    :cond_be
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->setCurrents(Ljava/util/List;[I)V

    .line 114
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->hz:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->workS:I

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restS:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/bodytech/WiProto;->program(IIIIII)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->hz:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devHz:I

    .line 116
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->workS:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devWork:I

    .line 117
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->restS:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devRest:I

    .line 119
    :cond_de
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->target()[I

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->setCurrents(Ljava/util/List;[I)V

    goto/16 :goto_3e

    .line 123
    :cond_e7
    const/16 v0, 0xf1

    if-ne p1, v0, :cond_f0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->armed:Z

    goto/16 :goto_3e

    .line 125
    :cond_f0
    const/16 v0, 0xf2

    if-ne p1, v0, :cond_3e

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->armed:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->on:Z

    .line 128
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->stopUnit(Ljava/util/List;)V
    :try_end_fd
    .catchall {:try_start_74 .. :try_end_fd} :catchall_71

    goto/16 :goto_3e
.end method

.method public declared-synchronized countdownPercent(J)I
    .registers 8

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v0, -0x1

    .line 149
    :goto_7
    monitor-exit p0

    return v0

    .line 148
    :cond_9
    :try_start_9
    iget-wide v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->countdownAt:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1194

    div-long/2addr v0, v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_26

    .line 149
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1b

    const/4 v0, 0x0

    goto :goto_7

    :cond_1b
    const-wide/16 v2, 0x63

    cmp-long v2, v0, v2

    if-lez v2, :cond_24

    const/16 v0, 0x63

    goto :goto_7

    :cond_24
    long-to-int v0, v0

    goto :goto_7

    .line 147
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized counting()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 57
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_a

    if-ne v1, v0, :cond_8

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forget()V
    .registers 2

    .prologue
    .line 62
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unsafe:Z

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->armed:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->on:Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->devKnown:Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 67
    monitor-exit p0

    return-void

    .line 62
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized heartbeat(J)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    .line 161
    monitor-enter p0

    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->countdownAt:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1770

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->begin(Ljava/util/List;)V

    .line 163
    :cond_1b
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->on:Z

    if-eqz v1, :cond_30

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_30

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->on:Z

    .line 165
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    if-ne v1, v6, :cond_30

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->setCurrents(Ljava/util/List;[I)V

    .line 167
    :cond_30
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    if-ne v1, v6, :cond_53

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->armed:Z

    if-nez v1, :cond_53

    .line 168
    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->idleRunAt:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_42

    iput-wide p1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->idleRunAt:J
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_50

    .line 173
    :cond_40
    :goto_40
    monitor-exit p0

    return-object v0

    .line 169
    :cond_42
    :try_start_42
    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->idleRunAt:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-lez v1, :cond_40

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->stopUnit(Ljava/util/List;)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_50

    goto :goto_40

    .line 161
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_53
    const-wide/16 v2, 0x0

    :try_start_55
    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->idleRunAt:J
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_50

    goto :goto_40
.end method

.method public declared-synchronized phase(I)V
    .registers 3

    .prologue
    .line 44
    monitor-enter p0

    if-ltz p1, :cond_6

    const/4 v0, 0x2

    if-le p1, v0, :cond_7

    :cond_6
    const/4 p1, 0x1

    :cond_7
    :try_start_7
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->phase:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->armed:Z

    .line 73
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->on:Z

    .line 74
    :goto_d
    const/16 v2, 0xa

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->parts:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 75
    :cond_19
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->prepare(Ljava/util/List;)V

    .line 76
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->stopUnit(Ljava/util/List;)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_21

    .line 77
    monitor-exit p0

    return-object v1

    .line 71
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runNotify([B)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 154
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I

    if-ne v1, v2, :cond_18

    if-eqz p1, :cond_18

    array-length v1, p1

    if-lez v1, :cond_18

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_18

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/WiTranslator;->begin(Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    .line 156
    :cond_18
    monitor-exit p0

    return-object v0

    .line 154
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized running()Z
    .registers 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->unit:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized target()[I
    .registers 7

    .prologue
    const/16 v5, 0xa

    .line 195
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_5
    new-array v1, v0, [I

    .line 196
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->on:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->armed:Z
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_2f

    if-nez v0, :cond_12

    :cond_f
    move-object v0, v1

    .line 199
    :goto_10
    monitor-exit p0

    return-object v0

    .line 197
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->xemsSuit:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->SLIDER_TO_CH_XEMS:[I

    .line 198
    :goto_18
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v5, :cond_2d

    aget v3, v0, v2

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->parts:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/WiProto;->unit(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 197
    :cond_2a
    sget-object v0, Lcom/isaigu/gymapp/bodytech/WiTranslator;->SLIDER_TO_CH:[I
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2f

    goto :goto_18

    :cond_2d
    move-object v0, v1

    .line 199
    goto :goto_10

    .line 195
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
