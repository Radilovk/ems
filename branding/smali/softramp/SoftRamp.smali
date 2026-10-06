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
    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
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
    .line 274
    if-eqz p0, :cond_2a

    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 275
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

    .line 274
    :cond_2a
    const/4 v0, 0x0

    goto :goto_a

    .line 275
    :cond_2c
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private static begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 191
    if-nez v0, :cond_16

    .line 192
    new-instance v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;-><init>()V

    .line 193
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 196
    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-ne v1, p1, :cond_2d

    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-gez v1, :cond_2d

    .line 211
    :goto_2c
    return-object v0

    .line 200
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

    .line 201
    :goto_45
    iget v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    .line 202
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    .line 203
    iput-boolean p1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    .line 204
    iput-wide v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->beganAt:J

    .line 205
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->phaseMs(Lcom/isaigu/gymapp/train/model/TrainItem;Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    .line 206
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    .line 207
    if-nez v1, :cond_67

    :goto_5b
    iput-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->upAllowed:Z

    .line 208
    iput-boolean v3, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 209
    iput-boolean v3, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    .line 210
    const/4 v1, -0x1

    iput v1, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    goto :goto_2c

    :cond_65
    move v1, v3

    .line 200
    goto :goto_45

    :cond_67
    move v2, v3

    .line 207
    goto :goto_5b
.end method

.method static copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 294
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    .line 295
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 296
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 297
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 298
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 299
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 300
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 301
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 302
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 303
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 304
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 305
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 306
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 307
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 308
    return-object v0
.end method

.method static fit([IJ)[I
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    const/16 v2, 0xbb8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    aget v0, p0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 226
    aget v0, p0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 227
    cmp-long v2, p1, v6

    if-lez v2, :cond_33

    add-int v2, v1, v0

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_33

    .line 228
    int-to-long v0, v1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 229
    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 231
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

    .line 257
    iget-boolean v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-nez v4, :cond_f

    .line 258
    iget-boolean v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    if-eqz v4, :cond_d

    .line 262
    :cond_c
    :goto_c
    return-wide v0

    :cond_d
    move-wide v0, v2

    .line 258
    goto :goto_c

    .line 260
    :cond_f
    iget-wide v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    iget v6, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampMs:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 261
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 262
    iget-boolean v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    if-nez v4, :cond_c

    sub-double v0, v2, v0

    goto :goto_c
.end method

.method private static kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    .registers 6

    .prologue
    .line 248
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    iget v0, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->g:I

    iget v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    if-eq v0, v1, :cond_15

    .line 249
    :cond_c
    new-instance v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    iget v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->gen:I

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;I)V

    iput-object v0, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    .line 251
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    iget-object v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    iget-object v1, p1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method

.method static level(ID)I
    .registers 8

    .prologue
    .line 266
    const-wide v0, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_a

    .line 269
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
    .line 78
    if-eqz p0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_7

    .line 86
    :cond_6
    :goto_6
    return-void

    .line 81
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_6

    .line 83
    :catch_12
    move-exception v0

    .line 84
    const-string v1, "SoftRamp.phase"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static phaseMs(Lcom/isaigu/gymapp/train/model/TrainItem;Z)J
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 216
    :goto_9
    if-gtz v0, :cond_17

    .line 217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 218
    if-eqz p1, :cond_22

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 220
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

    .line 215
    goto :goto_9

    .line 218
    :cond_22
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    goto :goto_17
.end method

.method static second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 3

    .prologue
    .line 280
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

    .line 90
    if-eqz p0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    move-object v1, v0

    .line 91
    :goto_8
    if-nez v1, :cond_e

    .line 127
    :cond_a
    :goto_a
    return-void

    .line 90
    :cond_b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_8

    .line 94
    :cond_e
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 96
    :try_start_11
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 97
    if-eqz v0, :cond_23

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v2, :cond_23

    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-nez v2, :cond_28

    .line 98
    :cond_23
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    move-result-object v0

    .line 100
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 101
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    if-eqz v4, :cond_84

    .line 102
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    .line 103
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiRamp;->rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/train/model/SoftRamp;->fit([IJ)[I

    move-result-object v4

    .line 104
    const/4 v5, 0x0

    aget v5, v4, v5

    if-lez v5, :cond_51

    iget v5, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-le v5, v8, :cond_51

    iget-boolean v5, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->upAllowed:Z

    if-eqz v5, :cond_51

    .line 105
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {v0, v5, v6, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V

    .line 107
    :cond_51
    const/4 v5, 0x1

    aget v5, v4, v5

    if-lez v5, :cond_84

    iget v5, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v5, :cond_84

    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_84

    .line 108
    iget-wide v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const/4 v5, 0x1

    aget v5, v4, v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    .line 109
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_84

    .line 110
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

    .line 114
    :cond_84
    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-nez v4, :cond_8c

    iget-boolean v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    if-eqz v4, :cond_ac

    .line 115
    :cond_8c
    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D

    move-result-wide v2

    invoke-static {v4, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->level(ID)I

    move-result v2

    .line 116
    invoke-static {p0, p1, p2, p3, v2}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendMain(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V

    .line 117
    iput v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 118
    iget-boolean v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-eqz v2, :cond_a

    .line 119
    const-wide/16 v2, 0x32

    invoke-static {p0, v0, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_a4} :catch_a6

    goto/16 :goto_a

    .line 123
    :catch_a6
    move-exception v0

    .line 124
    const-string v2, "SoftRamp.sendDuration"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_ac
    invoke-virtual {v1, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto/16 :goto_a
.end method

.method static sendMain(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V
    .registers 7

    .prologue
    .line 284
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lt p4, v0, :cond_a

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 291
    :goto_9
    return-void

    .line 288
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 289
    iput p4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 290
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v1, v0, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_9
.end method

.method public static sendPause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 16

    .prologue
    .line 135
    if-eqz p0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    .line 136
    :goto_4
    if-eqz v0, :cond_8

    if-nez p1, :cond_b

    .line 184
    :cond_8
    :goto_8
    return-void

    .line 135
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 139
    :cond_b
    const/4 v2, 0x0

    .line 141
    :try_start_c
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_db

    move-result-object v6

    .line 142
    :try_start_10
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    .line 143
    if-eqz v1, :cond_22

    iget-boolean v2, v1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->known:Z

    if-eqz v2, :cond_22

    iget-boolean v2, v1, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_dd

    .line 144
    :cond_22
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->begin(Lcom/isaigu/gymapp/train/model/TrainItem;Z)Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    move-result-object v1

    move-object v7, v1

    .line 146
    :goto_28
    if-nez v6, :cond_3f

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_30} :catch_cc

    .line 179
    :cond_30
    :goto_30
    if-eqz v6, :cond_d6

    .line 180
    const/4 v1, 0x0

    aget v4, v6, v1

    const/4 v1, 0x1

    aget v5, v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    goto :goto_8

    .line 150
    :cond_3f
    :try_start_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 151
    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    if-eqz v1, :cond_a3

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->fresh:Z

    .line 153
    invoke-static {p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 154
    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 155
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiRamp;->rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    iget-wide v4, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/train/model/SoftRamp;->fit([IJ)[I

    move-result-object v1

    .line 156
    const/4 v4, 0x0

    aget v4, v1, v4

    if-lez v4, :cond_6e

    const/4 v4, 0x1

    aget v4, v6, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_6e

    .line 157
    const/4 v4, 0x1

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-static {v7, v4, v5, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V

    .line 159
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

    .line 160
    iget-wide v4, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lenMs:J

    const/4 v8, 0x1

    aget v8, v1, v8

    int-to-long v8, v8

    sub-long/2addr v4, v8

    .line 161
    const/4 v8, 0x0

    aget v8, v1, v8

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-ltz v8, :cond_a3

    .line 162
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

    .line 166
    :cond_a3
    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-nez v1, :cond_ab

    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    if-eqz v1, :cond_30

    .line 167
    :cond_ab
    const/4 v1, 0x1

    aget v1, v6, v1

    invoke-static {v7, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->level(ID)I

    move-result v5

    .line 168
    const/4 v1, 0x0

    aget v4, v6, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    .line 169
    iput v5, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 170
    iget-boolean v1, v7, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-eqz v1, :cond_8

    .line 171
    const-wide/16 v2, 0x32

    invoke-static {p0, v7, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->kick(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_ca} :catch_cc

    goto/16 :goto_8

    .line 176
    :catch_cc
    move-exception v1

    move-object v2, v6

    .line 177
    :goto_ce
    const-string v3, "SoftRamp.sendPause"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v2

    goto/16 :goto_30

    .line 182
    :cond_d6
    invoke-virtual {v0, p1, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto/16 :goto_8

    .line 176
    :catch_db
    move-exception v1

    goto :goto_ce

    :cond_dd
    move-object v7, v1

    goto/16 :goto_28
.end method

.method private static startRamp(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;ZIJ)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 238
    iput-boolean p1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    .line 239
    iput-wide p3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    .line 240
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampMs:I

    .line 241
    iput-boolean v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    .line 242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    .line 243
    iput-wide p3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastTick:J

    .line 244
    iput-boolean v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->stalled:Z

    .line 245
    return-void
.end method
