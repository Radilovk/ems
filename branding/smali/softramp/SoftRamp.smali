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
    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/WeakHashMap;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V
    .registers 6

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/train/model/SoftRamp;->startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    .registers 4

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V

    return-void
.end method

.method static alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 4

    .prologue
    .line 261
    if-eqz p0, :cond_2a

    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 262
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

    .line 261
    :cond_2a
    const/4 v0, 0x0

    goto :goto_a

    .line 262
    :cond_2c
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private static begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 181
    if-nez v0, :cond_16

    .line 182
    new-instance v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;-><init>()V

    .line 183
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 186
    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-ne v1, p1, :cond_2d

    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-gez v1, :cond_2d

    .line 201
    :goto_2c
    return-object v0

    .line 190
    :cond_2d
    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v1, :cond_65

    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v1, :cond_65

    if-eqz p1, :cond_65

    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    sub-long v6, v4, v6

    iget-wide v8, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const-wide/16 v10, 0x5dc

    add-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-gtz v1, :cond_65

    move v1, v2

    .line 191
    :goto_45
    iget v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    .line 192
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    .line 193
    iput-boolean p1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    .line 194
    iput-wide v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    .line 195
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->phaseMs(Lcom/isaigu/gymapp/train/model/TrainItem;Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    .line 196
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    .line 197
    if-nez v1, :cond_67

    :goto_5b
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->upAllowed:Z

    .line 198
    iput-boolean v3, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 199
    iput-boolean v3, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    .line 200
    const/4 v1, -0x1

    iput v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    goto :goto_2c

    :cond_65
    move v1, v3

    .line 190
    goto :goto_45

    :cond_67
    move v2, v3

    .line 197
    goto :goto_5b
.end method

.method static copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 281
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    .line 282
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 283
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 284
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 285
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 286
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 287
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 288
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 289
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 290
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 291
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 292
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 293
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 294
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 295
    return-object v0
.end method

.method static fit([IJ)[I
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    const/16 v2, 0xbb8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    aget v0, p0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    aget v0, p0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 217
    cmp-long v2, p1, v6

    if-lez v2, :cond_33

    add-int v2, v1, v0

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_33

    .line 218
    int-to-long v0, v1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 219
    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 221
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

    .line 244
    iget-boolean v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-nez v4, :cond_f

    .line 245
    iget-boolean v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    if-eqz v4, :cond_d

    .line 249
    :cond_c
    :goto_c
    return-wide v0

    :cond_d
    move-wide v0, v2

    .line 245
    goto :goto_c

    .line 247
    :cond_f
    iget-wide v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    iget v6, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampMs:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 248
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 249
    iget-boolean v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    if-nez v4, :cond_c

    sub-double v0, v2, v0

    goto :goto_c
.end method

.method private static kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    .registers 6

    .prologue
    .line 235
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    iget v0, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->g:I

    iget v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    if-eq v0, v1, :cond_15

    .line 236
    :cond_c
    new-instance v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    iget v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;I)V

    iput-object v0, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    .line 238
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    iget-object v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    iget-object v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method

.method static level(ID)I
    .registers 8

    .prologue
    .line 253
    const-wide v0, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_a

    .line 256
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
    .line 68
    if-eqz p0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_7

    .line 76
    :cond_6
    :goto_6
    return-void

    .line 71
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_6

    .line 73
    :catch_12
    move-exception v0

    .line 74
    const-string v1, "SoftRamp.phase"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static phaseMs(Lcom/isaigu/gymapp/train/model/TrainItem;Z)J
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 206
    :goto_9
    if-gtz v0, :cond_17

    .line 207
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 208
    if-eqz p1, :cond_22

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 210
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

    .line 205
    goto :goto_9

    .line 208
    :cond_22
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    goto :goto_17
.end method

.method static second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 3

    .prologue
    .line 267
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

    .line 80
    if-eqz p0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    move-object v1, v0

    .line 81
    :goto_8
    if-nez v1, :cond_e

    .line 117
    :cond_a
    :goto_a
    return-void

    .line 80
    :cond_b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_8

    .line 84
    :cond_e
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 86
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 87
    if-eqz v0, :cond_23

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v2, :cond_23

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-nez v2, :cond_28

    .line 88
    :cond_23
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    move-result-object v0

    .line 90
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 91
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    if-eqz v4, :cond_84

    .line 92
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    .line 93
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiRamp;->rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/train/model/SoftRamp;->fit([IJ)[I

    move-result-object v4

    .line 94
    const/4 v5, 0x0

    aget v5, v4, v5

    if-lez v5, :cond_51

    iget v5, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-le v5, v8, :cond_51

    iget-boolean v5, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->upAllowed:Z

    if-eqz v5, :cond_51

    .line 95
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {v0, v5, v6, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V

    .line 97
    :cond_51
    const/4 v5, 0x1

    aget v5, v4, v5

    if-lez v5, :cond_84

    iget v5, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v5, :cond_84

    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_84

    .line 98
    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const/4 v5, 0x1

    aget v5, v4, v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    .line 99
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_84

    .line 100
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

    .line 104
    :cond_84
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-nez v4, :cond_8c

    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    if-eqz v4, :cond_ac

    .line 105
    :cond_8c
    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D

    move-result-wide v2

    invoke-static {v4, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->level(ID)I

    move-result v2

    .line 106
    invoke-static {p0, p1, p2, p3, v2}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendMain(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V

    .line 107
    iput v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 108
    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-eqz v2, :cond_a

    .line 109
    const-wide/16 v2, 0x32

    invoke-static {p0, v0, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_a4} :catch_a6

    goto/16 :goto_a

    .line 113
    :catch_a6
    move-exception v0

    .line 114
    const-string v2, "SoftRamp.sendDuration"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :cond_ac
    invoke-virtual {v1, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto/16 :goto_a
.end method

.method static sendMain(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V
    .registers 7

    .prologue
    .line 271
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lt p4, v0, :cond_a

    .line 272
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 278
    :goto_9
    return-void

    .line 275
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 276
    iput p4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 277
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v1, v0, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_9
.end method

.method public static sendPause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 16

    .prologue
    .line 125
    if-eqz p0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    .line 126
    :goto_4
    if-eqz v0, :cond_8

    if-nez p1, :cond_b

    .line 174
    :cond_8
    :goto_8
    return-void

    .line 125
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 129
    :cond_b
    const/4 v2, 0x0

    .line 131
    :try_start_c
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_db

    move-result-object v6

    .line 132
    :try_start_10
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 133
    if-eqz v1, :cond_22

    iget-boolean v2, v1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v2, :cond_22

    iget-boolean v2, v1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_dd

    .line 134
    :cond_22
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    move-result-object v1

    move-object v7, v1

    .line 136
    :goto_28
    if-nez v6, :cond_3f

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_30} :catch_cc

    .line 169
    :cond_30
    :goto_30
    if-eqz v6, :cond_d6

    .line 170
    const/4 v1, 0x0

    aget v4, v6, v1

    const/4 v1, 0x1

    aget v5, v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    goto :goto_8

    .line 140
    :cond_3f
    :try_start_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 141
    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    if-eqz v1, :cond_a3

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    .line 143
    invoke-static {p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 144
    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 145
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiRamp;->rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    iget-wide v4, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/train/model/SoftRamp;->fit([IJ)[I

    move-result-object v1

    .line 146
    const/4 v4, 0x0

    aget v4, v1, v4

    if-lez v4, :cond_6e

    const/4 v4, 0x1

    aget v4, v6, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6e

    .line 147
    const/4 v4, 0x1

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-static {v7, v4, v5, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V

    .line 149
    :cond_6e
    const/4 v4, 0x1

    aget v4, v1, v4

    if-lez v4, :cond_a3

    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v4, :cond_a3

    iget-wide v4, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_a3

    .line 150
    iget-wide v4, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const/4 v8, 0x1

    aget v8, v1, v8

    int-to-long v8, v8

    sub-long/2addr v4, v8

    .line 151
    const/4 v8, 0x0

    aget v8, v1, v8

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-ltz v8, :cond_a3

    .line 152
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

    .line 156
    :cond_a3
    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-nez v1, :cond_ab

    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    if-eqz v1, :cond_30

    .line 157
    :cond_ab
    const/4 v1, 0x1

    aget v1, v6, v1

    invoke-static {v7, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->level(ID)I

    move-result v5

    .line 158
    const/4 v1, 0x0

    aget v4, v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    .line 159
    iput v5, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 160
    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-eqz v1, :cond_8

    .line 161
    const-wide/16 v2, 0x32

    invoke-static {p0, v7, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_ca} :catch_cc

    goto/16 :goto_8

    .line 166
    :catch_cc
    move-exception v1

    move-object v2, v6

    .line 167
    :goto_ce
    const-string v3, "SoftRamp.sendPause"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v2

    goto/16 :goto_30

    .line 172
    :cond_d6
    invoke-virtual {v0, p1, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto/16 :goto_8

    .line 166
    :catch_db
    move-exception v1

    goto :goto_ce

    :cond_dd
    move-object v7, v1

    goto/16 :goto_28
.end method

.method private static startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 228
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    .line 229
    iput-wide p3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    .line 230
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampMs:I

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    .line 232
    return-void
.end method
