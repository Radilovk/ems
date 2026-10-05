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
    .registers 2

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->gen:Ljava/util/WeakHashMap;

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->fresh:Ljava/util/WeakHashMap;

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/WeakHashMap;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 3

    .prologue
    .line 145
    if-eqz p0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v0, :cond_20

    .line 146
    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->current(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v0

    if-ne v0, p1, :cond_20

    const/4 v0, 0x1

    .line 145
    :goto_1f
    return v0

    .line 146
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 160
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    .line 161
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 162
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 163
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 164
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 165
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 166
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 167
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 168
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 169
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 170
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 171
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 172
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 173
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 174
    return-object v0
.end method

.method private static current(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->gen:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 127
    if-eqz v0, :cond_e

    aget v0, v0, v1

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method private static next(Lcom/isaigu/gymapp/train/model/TrainItem;)I
    .registers 4

    .prologue
    .line 117
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->gen:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 118
    if-nez v0, :cond_12

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 120
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->gen:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_12
    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v2
.end method

.method public static phase(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 41
    if-eqz p0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_7

    .line 51
    :cond_6
    :goto_6
    return-void

    .line 44
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 45
    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->next(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->fresh:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1c
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_6

    .line 48
    :catch_20
    move-exception v0

    .line 49
    const-string v1, "SoftRamp.phase"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 47
    :cond_27
    :try_start_27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_29} :catch_20

    goto :goto_1c
.end method

.method private static rampUp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V
    .registers 20

    .prologue
    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->current(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v10

    .line 132
    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x14

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

    .line 134
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, v11

    div-double v6, v2, v4

    .line 135
    sget-object v2, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    .line 136
    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendScaled(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZID)V

    .line 137
    const/4 v2, 0x2

    move v9, v2

    :goto_38
    if-gt v9, v11, :cond_60

    .line 138
    add-int/lit8 v2, v9, -0x1

    mul-int v2, v2, p4

    int-to-double v2, v2

    int-to-double v4, v11

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    .line 139
    sget-object v14, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;

    int-to-double v4, v9

    int-to-double v6, v11

    div-double v6, v4, v6

    if-ne v9, v11, :cond_5e

    const/4 v8, 0x1

    :goto_50
    move-object v3, p0

    move v4, v10

    move/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/isaigu/gymapp/train/model/SoftRamp$Step;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;IIDZ)V

    invoke-virtual {v14, v2, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_38

    .line 139
    :cond_5e
    const/4 v8, 0x0

    goto :goto_50

    .line 141
    :cond_60
    return-void
.end method

.method public static sendDuration(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 12

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    .line 78
    if-eqz p0, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    move-object v6, v0

    .line 79
    :goto_8
    if-nez v6, :cond_e

    .line 112
    :cond_a
    :goto_a
    return-void

    .line 78
    :cond_b
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_8

    .line 82
    :cond_e
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z

    .line 84
    :try_start_11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/isaigu/gymapp/train/model/SoftRamp;->fresh:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiRamp;->rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v1

    .line 86
    if-eqz v0, :cond_6c

    const/4 v2, 0x0

    aget v2, v1, v2

    if-lez v2, :cond_6c

    iget v2, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-le v2, v3, :cond_6c

    .line 87
    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->rampUp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V

    .line 88
    const/4 v0, 0x1

    aget v0, v1, v0

    if-lez v0, :cond_a

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v0, :cond_a

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v0, :cond_a

    .line 89
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 90
    const/4 v0, 0x0

    aget v0, v1, v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_a

    .line 91
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    new-instance v4, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;

    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->current(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v5

    const/4 v7, 0x1

    aget v1, v1, v7

    invoke-direct {v4, p0, v5, p3, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;III)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_61} :catch_62

    goto :goto_a

    .line 108
    :catch_62
    move-exception v0

    .line 109
    const-string v1, "SoftRamp.sendDuration"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :cond_68
    invoke-virtual {v6, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_a

    .line 96
    :cond_6c
    if-eqz v0, :cond_9b

    const/4 v0, 0x1

    :try_start_6f
    aget v0, v1, v0

    if-lez v0, :cond_9b

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v0, :cond_9b

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v0, :cond_9b

    .line 97
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 98
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_9b

    .line 99
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;

    new-instance v4, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;

    invoke-static {p0}, Lcom/isaigu/gymapp/train/model/SoftRamp;->current(Lcom/isaigu/gymapp/train/model/TrainItem;)I

    move-result v5

    const/4 v7, 0x1

    aget v1, v1, v7

    invoke-direct {v4, p0, v5, p3, v1}, Lcom/isaigu/gymapp/train/model/SoftRamp$Down;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;III)V

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    :cond_9b
    sget-object v0, Lcom/isaigu/gymapp/train/model/SoftRamp;->scale:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 103
    if-eqz v0, :cond_68

    .line 105
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendScaled(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZID)V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_b0} :catch_62

    goto/16 :goto_a
.end method

.method public static sendPause(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 59
    if-eqz p0, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    .line 60
    :goto_5
    if-eqz v0, :cond_9

    if-nez p1, :cond_c

    .line 74
    :cond_9
    :goto_9
    return-void

    :cond_a
    move-object v0, v2

    .line 59
    goto :goto_5

    .line 65
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->pause(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_23

    move-result-object v1

    .line 69
    :goto_14
    if-eqz v1, :cond_2b

    .line 70
    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v2, 0x1

    aget v5, v1, v2

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    goto :goto_9

    .line 66
    :catch_23
    move-exception v1

    .line 67
    const-string v3, "SoftRamp.sendPause"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_14

    .line 72
    :cond_2b
    invoke-virtual {v0, p1, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendPause(Lcom/isaigu/gymapp/bean/ProgramDataBean;I)V

    goto :goto_9
.end method

.method static sendScaled(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZID)V
    .registers 10

    .prologue
    .line 150
    const-wide v0, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, p4, v0

    if-ltz v0, :cond_f

    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 157
    :goto_e
    return-void

    .line 154
    :cond_f
    invoke-static {p1}, Lcom/isaigu/gymapp/train/model/SoftRamp;->copy(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 155
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

    .line 156
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v1, v0, p2, p3}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    goto :goto_e
.end method
