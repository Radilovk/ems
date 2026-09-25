.class public final Lcom/isaigu/gymapp/train/model/SoftRamp;
.super Ljava/lang/Object;
.source "SoftRamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/model/SoftRamp$Down;,
        Lcom/isaigu/gymapp/train/model/SoftRamp$Step;
    }
.end annotation


# static fields
.field private static final STEP_MS:J = 0x96L

.field private static final fresh:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final gen:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final main:Landroid/os/Handler;

.field private static final scale:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->gen:Ljava/util/WeakHashMap;

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->fresh:Ljava/util/WeakHashMap;

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .locals 1

    .prologue
    .line 118
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->current(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    .line 134
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 135
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 136
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 137
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 138
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 139
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 140
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 141
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 142
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 143
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 144
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 145
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 146
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 147
    return-object v0
.end method

.method private static current(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->gen:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 100
    if-eqz v0, :cond_0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static next(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->gen:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 91
    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 93
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->gen:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v2
.end method

.method public static phase(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 2

    .prologue
    .line 39
    if-eqz p0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->next(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    .line 43
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->fresh:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "SoftRamp.phase"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    :cond_2
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static rampUp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V
    .locals 15

    .prologue
    .line 104
    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->current(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v10

    .line 105
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0xc

    move/from16 v0, p4

    int-to-double v6, v0

    const-wide v8, 0x4062c00000000000L    # 150.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v11, v2

    .line 107
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, v11

    div-double v6, v2, v4

    .line 108
    sget-object v2, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    .line 109
    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendScaled(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZID)V

    .line 110
    const/4 v2, 0x2

    move v9, v2

    :goto_0
    if-gt v9, v11, :cond_1

    .line 111
    add-int/lit8 v2, v9, -0x1

    mul-int v2, v2, p4

    int-to-double v2, v2

    int-to-double v4, v11

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    .line 112
    sget-object v14, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;

    int-to-double v4, v9

    int-to-double v6, v11

    div-double v6, v4, v6

    if-ne v9, v11, :cond_0

    const/4 v8, 0x1

    :goto_1
    move-object v3, p0

    move v4, v10

    move/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;IIDZ)V

    invoke-virtual {v14, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    .line 112
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 114
    :cond_1
    return-void
.end method

.method public static sendDuration(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    .line 52
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    move-object v6, v0

    .line 53
    :goto_0
    if-nez v6, :cond_2

    .line 85
    :cond_0
    :goto_1
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    .line 57
    :cond_2
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->fresh:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiRamp;->rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    .line 59
    if-eqz v0, :cond_4

    const/4 v2, 0x0

    aget v2, v1, v2

    if-lez v2, :cond_4

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-le v2, v3, :cond_4

    .line 60
    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->rampUp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V

    .line 61
    const/4 v0, 0x1

    aget v0, v1, v0

    if-lez v0, :cond_0

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v0, :cond_0

    .line 62
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 63
    const/4 v0, 0x0

    aget v0, v1, v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 64
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    new-instance v4, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;

    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->current(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v5

    const/4 v7, 0x1

    aget v1, v1, v7

    invoke-direct {v4, p0, v5, p3, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;III)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "SoftRamp.sendDuration"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :cond_3
    invoke-virtual {v6, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_1

    .line 69
    :cond_4
    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :try_start_1
    aget v0, v1, v0

    if-lez v0, :cond_5

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v0, :cond_5

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v0, :cond_5

    .line 70
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 71
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 72
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    new-instance v4, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;

    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->current(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v5

    const/4 v7, 0x1

    aget v1, v1, v7

    invoke-direct {v4, p0, v5, p3, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;III)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 76
    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendScaled(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZID)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static sendScaled(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZID)V
    .locals 4

    .prologue
    .line 123
    const-wide v0, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, p4, v0

    if-ltz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 128
    const/4 v1, 0x1

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v2, v2

    mul-double/2addr v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 129
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v1, v0, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_0
.end method
