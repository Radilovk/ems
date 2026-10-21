.class public final Lcom/isaigu/gymapp/train/model/SoftRamp;
.super Ljava/lang/Object;
.source "SoftRamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;,
        Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;,
        Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;
    }
.end annotation


# static fields
.field private static final MAX_MS:I = 0xbb8

.field private static final SAME_PHASE_MS:J = 0x1f4L

.field private static final SOFT_START_MS:I = 0x5dc

.field private static final STALL_MS:J = 0x190L

.field private static final TICK_MS:J = 0x32L

.field private static final main:Landroid/os/Handler;

.field private static final slots:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/WeakHashMap;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V
    .registers 6

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/train/model/SoftRamp;->startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    .registers 4

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V

    return-void
.end method

.method static alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 4

    .prologue
    .line 379
    if-eqz p0, :cond_2a

    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 380
    :goto_a
    if-eqz v0, :cond_2c

    iget v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    if-ne v1, p1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    iget-boolean v0, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-ne v1, v0, :cond_2c

    const/4 v0, 0x1

    :goto_29
    return v0

    .line 379
    :cond_2a
    const/4 v0, 0x0

    goto :goto_a

    .line 380
    :cond_2c
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private static begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 248
    if-nez v0, :cond_16

    .line 249
    new-instance v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;-><init>()V

    .line 250
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 253
    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-ne v1, p1, :cond_2d

    iget-wide v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    sub-long v4, v6, v4

    const-wide/16 v8, 0x1f4

    cmp-long v1, v4, v8

    if-gez v1, :cond_2d

    .line 269
    :goto_2c
    return-object v0

    .line 257
    :cond_2d
    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v1, :cond_79

    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v1, :cond_79

    if-eqz p1, :cond_79

    iget-wide v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    sub-long v4, v6, v4

    iget-wide v8, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const-wide/16 v10, 0x5dc

    add-long/2addr v8, v10

    cmp-long v1, v4, v8

    if-gtz v1, :cond_79

    move v1, v2

    .line 258
    :goto_45
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v4, :cond_56

    iget-wide v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    iget-wide v8, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    add-long/2addr v4, v8

    sub-long v4, v6, v4

    const-wide/16 v8, 0x1388

    cmp-long v4, v4, v8

    if-lez v4, :cond_7b

    :cond_56
    move v4, v2

    :goto_57
    iput-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->afterGap:Z

    .line 259
    iget v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    .line 260
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    .line 261
    iput-boolean p1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    .line 262
    iput-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    .line 263
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->phaseMs(Lcom/isaigu/gymapp/train/model/TrainItem;Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    .line 264
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    .line 265
    if-nez v1, :cond_7d

    :goto_6f
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->upAllowed:Z

    .line 266
    iput-boolean v3, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 267
    iput-boolean v3, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    .line 268
    const/4 v1, -0x1

    iput v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    goto :goto_2c

    :cond_79
    move v1, v3

    .line 257
    goto :goto_45

    :cond_7b
    move v4, v3

    .line 258
    goto :goto_57

    :cond_7d
    move v2, v3

    .line 265
    goto :goto_6f
.end method

.method public static clock(Lcom/isaigu/gymapp/train/model/TrainItem;)[J
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 88
    if-eqz p0, :cond_14

    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    move-object v3, v0

    .line 89
    :goto_c
    if-eqz v3, :cond_12

    iget-boolean v0, v3, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-nez v0, :cond_16

    :cond_12
    move-object v0, v1

    .line 92
    :goto_13
    return-object v0

    :cond_14
    move-object v3, v1

    .line 88
    goto :goto_c

    .line 92
    :cond_16
    const/4 v0, 0x3

    new-array v2, v0, [J

    const/4 v4, 0x0

    iget-boolean v0, v3, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v0, :cond_2e

    const-wide/16 v0, 0x1

    :goto_20
    aput-wide v0, v2, v4

    const/4 v0, 0x1

    iget-wide v4, v3, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    aput-wide v4, v2, v0

    const/4 v0, 0x2

    iget-wide v4, v3, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    aput-wide v4, v2, v0

    move-object v0, v2

    goto :goto_13

    :cond_2e
    const-wide/16 v0, 0x0

    goto :goto_20
.end method

.method static copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 399
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    .line 400
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 401
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 402
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 403
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 404
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 405
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 406
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 407
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 408
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 409
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 410
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 411
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 412
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 413
    return-object v0
.end method

.method static cycleOk(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 3

    .prologue
    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->cycle()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->active()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 310
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->holding(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 309
    :goto_19
    return v0

    .line 310
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static fit([IJ)[I
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    const/16 v2, 0xbb8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 330
    aget v0, p0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 331
    aget v0, p0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 332
    cmp-long v2, p1, v6

    if-lez v2, :cond_33

    add-int v2, v1, v0

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_33

    .line 333
    int-to-long v0, v1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 334
    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 336
    :cond_33
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v4

    aput v0, v2, v5

    return-object v2
.end method

.method static frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D
    .registers 12

    .prologue
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 362
    iget-boolean v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-nez v4, :cond_f

    .line 363
    iget-boolean v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    if-eqz v4, :cond_d

    .line 367
    :cond_c
    :goto_c
    return-wide v0

    :cond_d
    move-wide v0, v2

    .line 363
    goto :goto_c

    .line 365
    :cond_f
    iget-wide v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    iget v6, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampMs:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 366
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 367
    iget-boolean v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    if-nez v4, :cond_c

    sub-double v0, v2, v0

    goto :goto_c
.end method

.method private static held(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)Z
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 219
    if-eqz p1, :cond_a

    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->holding(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move v0, v7

    .line 239
    :goto_b
    return v0

    .line 222
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 223
    if-eqz v0, :cond_28

    .line 224
    iget v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    .line 226
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    .line 228
    const/4 v1, -0x1

    iput v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 230
    :cond_28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    .line 231
    if-eqz v1, :cond_3e

    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v2, 0x1

    aget v5, v1, v2

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    :goto_3c
    move v0, v6

    .line 236
    goto :goto_b

    .line 234
    :cond_3e
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0, p1, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_43} :catch_44

    goto :goto_3c

    .line 237
    :catch_44
    move-exception v0

    .line 238
    const-string v1, "SoftRamp.held"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    .line 239
    goto :goto_b
.end method

.method private static kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    .registers 6

    .prologue
    .line 353
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    iget v0, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->g:I

    iget v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    if-eq v0, v1, :cond_15

    .line 354
    :cond_c
    new-instance v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    iget v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;I)V

    iput-object v0, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    .line 356
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    iget-object v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    iget-object v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void
.end method

.method static level(ID)I
    .registers 8

    .prologue
    .line 371
    const-wide v0, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_a

    .line 374
    :goto_9
    return p0

    :cond_a
    const/4 v0, 0x1

    int-to-double v2, p0

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_9
.end method

.method public static phase(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 98
    if-eqz p0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_7

    .line 107
    :cond_6
    :goto_6
    return-void

    .line 101
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 103
    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->suitCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_6

    .line 104
    :catch_15
    move-exception v0

    .line 105
    const-string v1, "SoftRamp.phase"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static phaseMs(Lcom/isaigu/gymapp/train/model/TrainItem;Z)J
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 274
    :goto_9
    if-gtz v0, :cond_17

    .line 275
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 276
    if-eqz p1, :cond_22

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 278
    :cond_17
    :goto_17
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :cond_20
    move v0, v1

    .line 273
    goto :goto_9

    .line 276
    :cond_22
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    goto :goto_17
.end method

.method static rampMs(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 6

    .prologue
    const/16 v3, 0x5dc

    .line 288
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 289
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->cycleOk(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    .line 304
    :goto_14
    return-object v0

    .line 292
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->ramp()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiRamp;->rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    .line 293
    :goto_1f
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 294
    if-eqz v0, :cond_57

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_57

    iget-boolean v0, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->afterGap:Z

    if-eqz v0, :cond_57

    const/4 v0, 0x0

    aget v0, v1, v0

    if-ge v0, v3, :cond_57

    .line 297
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5dc

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v2
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_44} :catch_45

    goto :goto_14

    .line 301
    :catch_45
    move-exception v0

    .line 302
    const-string v1, "SoftRamp.rampMs"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    :cond_4b
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiRamp;->rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    goto :goto_14

    .line 292
    :cond_50
    const/4 v0, 0x2

    :try_start_51
    new-array v1, v0, [I
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_53} :catch_45

    fill-array-data v1, :array_62

    goto :goto_1f

    :cond_57
    move-object v0, v1

    goto :goto_14

    .line 290
    nop

    :array_5a
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 292
    :array_62
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 3

    .prologue
    .line 385
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->pause(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static sendDuration(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 16

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    .line 111
    if-eqz p0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    move-object v1, v0

    .line 112
    :goto_8
    if-nez v1, :cond_e

    .line 151
    :cond_a
    :goto_a
    return-void

    .line 111
    :cond_b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_8

    .line 115
    :cond_e
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 116
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->held(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)Z

    move-result v0

    if-nez v0, :cond_a

    .line 120
    :try_start_17
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 121
    if-eqz v0, :cond_29

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v2, :cond_29

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-nez v2, :cond_2e

    .line 122
    :cond_29
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    move-result-object v0

    .line 124
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 125
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    if-eqz v4, :cond_8a

    .line 126
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    .line 127
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->rampMs(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/train/model/SoftRamp;->fit([IJ)[I

    move-result-object v4

    .line 128
    const/4 v5, 0x0

    aget v5, v4, v5

    if-lez v5, :cond_57

    iget v5, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-le v5, v8, :cond_57

    iget-boolean v5, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->upAllowed:Z

    if-eqz v5, :cond_57

    .line 129
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {v0, v5, v6, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V

    .line 131
    :cond_57
    const/4 v5, 0x1

    aget v5, v4, v5

    if-lez v5, :cond_8a

    iget v5, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v5, :cond_8a

    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_8a

    .line 132
    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const/4 v5, 0x1

    aget v5, v4, v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    .line 133
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_8a

    .line 134
    sget-object v5, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    new-instance v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;

    iget v9, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    const/4 v10, 0x1

    aget v4, v4, v10

    invoke-direct {v8, p0, v9, v4}, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;II)V

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :cond_8a
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-nez v4, :cond_92

    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    if-eqz v4, :cond_b2

    .line 139
    :cond_92
    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D

    move-result-wide v2

    invoke-static {v4, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->level(ID)I

    move-result v2

    .line 140
    invoke-static {p0, p1, p2, p3, v2}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendMain(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V

    .line 141
    iput v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 142
    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-eqz v2, :cond_a

    .line 143
    const-wide/16 v2, 0x32

    invoke-static {p0, v0, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_aa} :catch_ac

    goto/16 :goto_a

    .line 147
    :catch_ac
    move-exception v0

    .line 148
    const-string v2, "SoftRamp.sendDuration"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    :cond_b2
    invoke-virtual {v1, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto/16 :goto_a
.end method

.method static sendMain(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V
    .registers 7

    .prologue
    .line 389
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lt p4, v0, :cond_a

    .line 390
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 396
    :goto_9
    return-void

    .line 393
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 394
    iput p4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 395
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v1, v0, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_9
.end method

.method public static sendPause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 16

    .prologue
    .line 159
    if-eqz p0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    .line 160
    :goto_4
    if-eqz v0, :cond_8

    if-nez p1, :cond_b

    .line 211
    :cond_8
    :goto_8
    return-void

    .line 159
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 163
    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->held(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)Z

    move-result v1

    if-nez v1, :cond_8

    .line 166
    const/4 v2, 0x0

    .line 168
    :try_start_12
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_e1

    move-result-object v6

    .line 169
    :try_start_16
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 170
    if-eqz v1, :cond_28

    iget-boolean v2, v1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v2, :cond_28

    iget-boolean v2, v1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_e3

    .line 171
    :cond_28
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    move-result-object v1

    move-object v7, v1

    .line 173
    :goto_2e
    if-nez v6, :cond_45

    .line 174
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_36} :catch_d2

    .line 206
    :cond_36
    :goto_36
    if-eqz v6, :cond_dc

    .line 207
    const/4 v1, 0x0

    aget v4, v6, v1

    const/4 v1, 0x1

    aget v5, v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    goto :goto_8

    .line 177
    :cond_45
    :try_start_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    if-eqz v1, :cond_a9

    .line 179
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    .line 180
    invoke-static {p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 181
    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 182
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->rampMs(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    iget-wide v4, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/train/model/SoftRamp;->fit([IJ)[I

    move-result-object v1

    .line 183
    const/4 v4, 0x0

    aget v4, v1, v4

    if-lez v4, :cond_74

    const/4 v4, 0x1

    aget v4, v6, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_74

    .line 184
    const/4 v4, 0x1

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-static {v7, v4, v5, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V

    .line 186
    :cond_74
    const/4 v4, 0x1

    aget v4, v1, v4

    if-lez v4, :cond_a9

    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v4, :cond_a9

    iget-wide v4, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_a9

    .line 187
    iget-wide v4, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const/4 v8, 0x1

    aget v8, v1, v8

    int-to-long v8, v8

    sub-long/2addr v4, v8

    .line 188
    const/4 v8, 0x0

    aget v8, v1, v8

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-ltz v8, :cond_a9

    .line 189
    sget-object v8, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    new-instance v9, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;

    iget v10, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    const/4 v11, 0x1

    aget v1, v1, v11

    invoke-direct {v9, p0, v10, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp$Fall;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;II)V

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v8, v9, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_a9
    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-nez v1, :cond_b1

    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    if-eqz v1, :cond_36

    .line 194
    :cond_b1
    const/4 v1, 0x1

    aget v1, v6, v1

    invoke-static {v7, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->level(ID)I

    move-result v5

    .line 195
    const/4 v1, 0x0

    aget v4, v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    .line 196
    iput v5, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 197
    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-eqz v1, :cond_8

    .line 198
    const-wide/16 v2, 0x32

    invoke-static {p0, v7, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_d0} :catch_d2

    goto/16 :goto_8

    .line 203
    :catch_d2
    move-exception v1

    move-object v2, v6

    .line 204
    :goto_d4
    const-string v3, "SoftRamp.sendPause"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v2

    goto/16 :goto_36

    .line 209
    :cond_dc
    invoke-virtual {v0, p1, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto/16 :goto_8

    .line 203
    :catch_e1
    move-exception v1

    goto :goto_d4

    :cond_e3
    move-object v7, v1

    goto/16 :goto_2e
.end method

.method private static startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 343
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    .line 344
    iput-wide p3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    .line 345
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampMs:I

    .line 346
    iput-boolean v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    .line 347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    .line 348
    iput-wide p3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastTick:J

    .line 349
    iput-boolean v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->stalled:Z

    .line 350
    return-void
.end method

.method static suitCycle(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 6

    .prologue
    .line 316
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 326
    :goto_6
    return-void

    .line 319
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 320
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->cycleOk(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    move-result v1

    .line 321
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->ramp()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v0

    .line 322
    :goto_1d
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/bodytech/BtBridge;->cycle(Ljava/lang/String;IIZ)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_6

    .line 323
    :catch_2b
    move-exception v0

    .line 324
    const-string v1, "SoftRamp.suitCycle"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 321
    :cond_32
    const/4 v0, 0x2

    :try_start_33
    new-array v0, v0, [I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_35} :catch_2b

    fill-array-data v0, :array_3a

    goto :goto_1d

    nop

    :array_3a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
