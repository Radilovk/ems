.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$AudioLoopRunnable;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;
    }
.end annotation


# static fields
.field private static final ACTIVE_LEVEL:D = 0.03

.field private static final ATTACK:D = 0.88

.field private static final AUDIO_BUFFER_SAMPLES:I = 0x100

.field private static final CURVE:D = 0.92

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field private static final PEAK_DECAY:D = 0.97

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final RELEASE:D = 0.55

.field private static final UI_MIN_INTERVAL_MS:J = 0x3cL

.field private static final WORK_PUSH_MIN_MS:J = 0x23L

.field private static final audioBuffer:[S

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static audioThread:Ljava/lang/Thread;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static lastUiMs:J

.field private static lastWorkPushMs:J

.field private static lastWorkPushStrength:I

.field static volatile liveStrength:I

.field static running:Z

.field private static sensitivity:I

.field private static volatile smoothedRms:D

.field private static targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static targetMacAddress:Ljava/lang/String;

.field private static volatile trackedPeakRms:D

.field private static wasInWorkPhase:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 52
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastWorkPushStrength:I

    .line 57
    const/16 v0, 0x100

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/media/AudioRecord;
    .registers 1

    .line 26
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioRecord;)I
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleStrength(Landroid/media/AudioRecord;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .line 26
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isInWorkPhase(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 26
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .line 26
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z

    return p0
.end method

.method static synthetic access$502(I)I
    .registers 1

    .line 26
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastWorkPushStrength:I

    return p0
.end method

.method static synthetic access$600(I)V
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushWorkPhaseStrength(I)V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    .line 26
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    return-void
.end method

.method static ensureHandler()V
    .registers 2

    .line 60
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 63
    :cond_f
    return-void
.end method

.method public static getEffectiveStrength()I
    .registers 2

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSliderCeiling()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 381
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 377
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getSliderCeiling()I
    .registers 2

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 190
    const/16 v1, 0x64

    if-nez v0, :cond_7

    .line 191
    return v1

    .line 194
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 195
    if-nez v0, :cond_e

    .line 196
    return v1

    .line 198
    :cond_e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 199
    if-nez v0, :cond_15

    .line 200
    return v1

    .line 202
    :cond_15
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1f

    .line 203
    if-gez v0, :cond_1b

    .line 204
    const/4 v0, 0x0

    return v0

    .line 206
    :cond_1b
    if-le v0, v1, :cond_1e

    .line 207
    return v1

    .line 209
    :cond_1e
    return v0

    .line 210
    :catchall_1f
    move-exception v0

    .line 211
    return v1
.end method

.method static hasRecordPermission()Z
    .registers 3

    .line 112
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 114
    return v1

    .line 116
    :cond_8
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method private static isInWorkPhase(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 2

    .line 75
    if-eqz p0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_7

    goto :goto_c

    .line 78
    :cond_7
    iget-object p0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    return p0

    .line 76
    :cond_c
    :goto_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isRunning()Z
    .registers 1

    .line 373
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 292
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3c

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 293
    return-void

    .line 295
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 297
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 298
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 220
    nop

    .line 221
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 222
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 224
    :cond_12
    long-to-double v0, v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static openMicrophone()Z
    .registers 9

    .line 172
    nop

    .line 173
    nop

    .line 174
    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_3e

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_46

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4e

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_56

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 180
    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_3c

    .line 181
    aget-object v6, v1, v3

    aget v6, v6, v4

    aget-object v7, v1, v3

    aget v7, v7, v5

    const/16 v8, 0x10

    invoke-static {v6, v7, v8, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(IIII)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 182
    return v5

    .line 180
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 185
    :cond_3c
    return v4

    nop

    :array_3e
    .array-data 4
        0x1
        0xbb80
    .end array-data

    :array_46
    .array-data 4
        0x1
        0xac44
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0xbb80
    .end array-data

    :array_56
    .array-data 4
        0x6
        0xac44
    .end array-data
.end method

.method private static permissionContext()Landroid/content/Context;
    .registers 1

    .line 105
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 106
    return-object v0

    .line 108
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private static pushWorkPhaseStrength(I)V
    .registers 8

    .line 86
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isInWorkPhase(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 87
    return-void

    .line 89
    :cond_9
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastWorkPushStrength:I

    if-ne p0, v0, :cond_e

    .line 90
    return-void

    .line 92
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 93
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastWorkPushMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x23

    cmp-long v6, v2, v4

    if-gez v6, :cond_1d

    .line 94
    return-void

    .line 97
    :cond_1d
    :try_start_1d
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 98
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastWorkPushStrength:I

    .line 99
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastWorkPushMs:J
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    .line 101
    goto :goto_28

    .line 100
    :catchall_27
    move-exception p0

    .line 102
    :goto_28
    return-void
.end method

.method static releaseAudio()V
    .registers 3

    .line 120
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 121
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 122
    if-nez v0, :cond_8

    .line 123
    return-void

    .line 126
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 127
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 128
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 131
    :cond_19
    goto :goto_1b

    .line 130
    :catchall_1a
    move-exception v1

    .line 133
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 135
    goto :goto_20

    .line 134
    :catchall_1f
    move-exception v0

    .line 136
    :goto_20
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 67
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 69
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastWorkPushMs:J

    .line 70
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastWorkPushStrength:I

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z

    .line 72
    return-void
.end method

.method private static sampleStrength(Landroid/media/AudioRecord;)I
    .registers 10

    .line 244
    if-nez p0, :cond_5

    .line 245
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 247
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    .line 248
    if-gtz p0, :cond_12

    .line 249
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 252
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    .line 253
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 255
    const-wide v0, 0x3fc999999999999aL    # 0.2

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-double v3, p0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide v7, 0x3fc3333333333333L    # 0.15

    mul-double v3, v3, v7

    sub-double/2addr v0, v3

    .line 256
    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, v0, v3

    if-gez p0, :cond_38

    .line 257
    move-wide v0, v3

    .line 259
    :cond_38
    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    mul-double v7, v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 260
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpg-double p0, v3, v0

    if-gez p0, :cond_49

    .line 261
    return v2

    .line 264
    :cond_49
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sub-double/2addr v3, v0

    .line 265
    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    cmpg-double p0, v3, v7

    if-gez p0, :cond_53

    .line 266
    move-wide v3, v7

    .line 268
    :cond_53
    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double/2addr v7, v0

    div-double/2addr v7, v3

    .line 269
    const-wide/16 v0, 0x0

    cmpg-double p0, v7, v0

    if-gez p0, :cond_5e

    .line 270
    move-wide v7, v0

    .line 272
    :cond_5e
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v7, v0

    if-lez p0, :cond_65

    .line 273
    move-wide v7, v0

    .line 275
    :cond_65
    const-wide v0, 0x3fed70a3d70a3d71L    # 0.92

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 276
    const-wide v3, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double p0, v0, v3

    if-gez p0, :cond_78

    .line 277
    return v2

    .line 280
    :cond_78
    mul-double v0, v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    .line 281
    if-gez p0, :cond_82

    .line 282
    return v2

    .line 284
    :cond_82
    const/16 v0, 0x64

    if-le p0, v0, :cond_87

    .line 285
    return v0

    .line 287
    :cond_87
    return p0
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 385
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 386
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .line 397
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 398
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 393
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 394
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 389
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 401
    if-nez p0, :cond_3

    .line 402
    return-void

    .line 404
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 405
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 406
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 407
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 408
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 409
    return-void

    .line 411
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 412
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 414
    return-void
.end method

.method private static startAudioThread()V
    .registers 3

    .line 302
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$AudioLoopRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$AudioLoopRunnable;-><init>()V

    const-string v2, "MusicSyncAudio"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 303
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 304
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 306
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 335
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 336
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 337
    return-void

    .line 339
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 340
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 342
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_17
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_21

    .line 343
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 344
    return-void

    .line 346
    :cond_21
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 347
    if-eqz v3, :cond_49

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    goto :goto_49

    .line 351
    :cond_2d
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 352
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3e

    .line 353
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 354
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 355
    return-void

    .line 357
    :cond_3e
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 358
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 359
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startAudioThread()V

    goto :goto_60

    .line 348
    :cond_49
    :goto_49
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_4c} :catch_57
    .catchall {:try_start_17 .. :try_end_4c} :catchall_4d

    .line 349
    return-void

    .line 365
    :catchall_4d
    move-exception v1

    .line 366
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 367
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 368
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_61

    .line 361
    :catch_57
    move-exception v0

    .line 362
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 363
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 364
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 369
    :goto_60
    nop

    .line 370
    :goto_61
    return-void
.end method

.method public static stop()V
    .registers 1

    .line 417
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 418
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 419
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 420
    return-void
.end method

.method private static stopAudioThread()V
    .registers 3

    .line 309
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 310
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 311
    if-nez v0, :cond_8

    .line 312
    return-void

    .line 315
    :cond_8
    const-wide/16 v1, 0x1f4

    :try_start_a
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    .line 317
    goto :goto_f

    .line 316
    :catchall_e
    move-exception v0

    .line 318
    :goto_f
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 3

    .line 321
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 322
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopAudioThread()V

    .line 324
    :try_start_6
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_10

    .line 325
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 327
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    .line 329
    goto :goto_15

    .line 328
    :catchall_14
    move-exception v1

    .line 330
    :goto_15
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 332
    return-void
.end method

.method private static tryOpen(IIII)Z
    .registers 13

    .line 140
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 141
    if-gtz v1, :cond_8

    .line 142
    return v0

    .line 144
    :cond_8
    const/16 v2, 0x200

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3f

    .line 147
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 148
    invoke-virtual {v1, p3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 149
    invoke-virtual {p3, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 152
    new-instance p2, Landroid/media/AudioRecord$Builder;

    invoke-direct {p2}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 153
    invoke-virtual {p2, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 154
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 155
    invoke-virtual {p0, v8}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 157
    goto :goto_4a

    .line 158
    :cond_3f
    new-instance v1, Landroid/media/AudioRecord;

    move-object v3, v1

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v1

    .line 160
    :goto_4a
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_55

    .line 161
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 162
    return v0

    .line 164
    :cond_55
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_58

    .line 165
    return p2

    .line 166
    :catchall_58
    move-exception p0

    .line 167
    return v0
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 228
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_17

    .line 229
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fec28f5c28f5c29L    # 0.88

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_27

    .line 231
    :cond_17
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fe199999999999aL    # 0.55

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 233
    :goto_27
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_30

    .line 234
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_43

    .line 236
    :cond_30
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3fef0a3d70a3d70aL    # 0.97

    mul-double v0, v0, v2

    const-wide v2, 0x3f9eb851eb851ec0L    # 0.030000000000000027

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 238
    :goto_43
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_4d

    .line 239
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 241
    :cond_4d
    return-void
.end method
