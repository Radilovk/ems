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
.field private static final AUDIO_BUFFER_SAMPLES:I = 0x100

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field private static final PEAK_DECAY:D = 0.965

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final PULSE_DEADBAND:I = 0x1

.field private static final PULSE_MIN_INTERVAL_MS:J = 0x10L

.field private static final RELEASE:D = 0.72

.field private static final UI_MIN_INTERVAL_MS:J = 0x28L

.field private static final audioBuffer:[S

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static audioThread:Ljava/lang/Thread;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static lastPulseMs:J

.field private static lastPushedStrength:I

.field private static lastUiMs:J

.field static volatile liveStrength:I

.field static running:Z

.field private static sensitivity:I

.field private static volatile smoothedRms:D

.field private static targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static targetMacAddress:Ljava/lang/String;

.field private static volatile trackedPeakRms:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 46
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedStrength:I

    .line 50
    const/16 v0, 0x100

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/media/AudioRecord;
    .registers 1

    .line 21
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioRecord;)I
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleStrength(Landroid/media/AudioRecord;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(I)V
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushPulse(I)V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .line 21
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    return-void
.end method

.method static ensureHandler()V
    .registers 2

    .line 53
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 56
    :cond_f
    return-void
.end method

.method public static getEffectiveStrength()I
    .registers 2

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSliderCeiling()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 366
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 362
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getSliderCeiling()I
    .registers 2

    .line 154
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 155
    const/16 v1, 0x64

    if-nez v0, :cond_7

    .line 156
    return v1

    .line 159
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 160
    if-nez v0, :cond_e

    .line 161
    return v1

    .line 163
    :cond_e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 164
    if-nez v0, :cond_15

    .line 165
    return v1

    .line 167
    :cond_15
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1f

    .line 168
    if-gez v0, :cond_1b

    .line 169
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_1b
    if-le v0, v1, :cond_1e

    .line 172
    return v1

    .line 174
    :cond_1e
    return v0

    .line 175
    :catchall_1f
    move-exception v0

    .line 176
    return v1
.end method

.method static hasRecordPermission()Z
    .registers 3

    .line 74
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 76
    return v1

    .line 78
    :cond_8
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public static isRunning()Z
    .registers 1

    .line 358
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 277
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x28

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 278
    return-void

    .line 280
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 281
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 282
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 283
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 185
    nop

    .line 186
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 187
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 189
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

    .line 135
    nop

    .line 136
    nop

    .line 137
    const/4 v0, 0x6

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_56

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5e

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_66

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_6e

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_76

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_7e

    const/4 v6, 0x5

    aput-object v3, v1, v6

    .line 145
    const/4 v3, 0x0

    :goto_36
    if-ge v3, v0, :cond_4c

    .line 146
    aget-object v6, v1, v3

    aget v6, v6, v4

    aget-object v7, v1, v3

    aget v7, v7, v5

    const/16 v8, 0x10

    invoke-static {v6, v7, v8, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(IIII)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 147
    return v5

    .line 145
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 150
    :cond_4c
    const v0, 0xac44

    const/16 v1, 0xc

    invoke-static {v5, v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(IIII)Z

    move-result v0

    return v0

    :array_56
    .array-data 4
        0x1
        0xac44
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0xbb80
    .end array-data

    :array_66
    .array-data 4
        0x1
        0x3e80
    .end array-data

    :array_6e
    .array-data 4
        0x0
        0xac44
    .end array-data

    :array_76
    .array-data 4
        0x6
        0xac44
    .end array-data

    :array_7e
    .array-data 4
        0x6
        0x3e80
    .end array-data
.end method

.method private static permissionContext()Landroid/content/Context;
    .registers 1

    .line 67
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 68
    return-object v0

    .line 70
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private static pushPulse(I)V
    .registers 8

    .line 255
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedStrength:I

    if-ne p0, v0, :cond_5

    .line 256
    return-void

    .line 258
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 259
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPulseMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x10

    cmp-long v6, v2, v4

    if-gez v6, :cond_1f

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedStrength:I

    sub-int v2, p0, v2

    .line 260
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1f

    .line 261
    return-void

    .line 263
    :cond_1f
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 264
    if-nez v2, :cond_24

    .line 265
    return-void

    .line 268
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 269
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedStrength:I

    .line 270
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPulseMs:J
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    .line 272
    goto :goto_2d

    .line 271
    :catchall_2c
    move-exception p0

    .line 273
    :goto_2d
    return-void
.end method

.method static releaseAudio()V
    .registers 3

    .line 82
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 83
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 84
    if-nez v0, :cond_8

    .line 85
    return-void

    .line 88
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 89
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 90
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 93
    :cond_19
    goto :goto_1b

    .line 92
    :catchall_1a
    move-exception v1

    .line 95
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 97
    goto :goto_20

    .line 96
    :catchall_1f
    move-exception v0

    .line 98
    :goto_20
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 60
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 61
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedStrength:I

    .line 62
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPulseMs:J

    .line 63
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 64
    return-void
.end method

.method private static sampleStrength(Landroid/media/AudioRecord;)I
    .registers 10

    .line 212
    if-nez p0, :cond_5

    .line 213
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 215
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    .line 216
    if-gtz p0, :cond_12

    .line 217
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 220
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    .line 221
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 223
    const-wide v0, 0x3fc70a3d70a3d70aL    # 0.18

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-double v3, p0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide v7, 0x3fc1eb851eb851ecL    # 0.14

    mul-double v3, v3, v7

    sub-double/2addr v0, v3

    .line 224
    const-wide v3, 0x3fa47ae147ae147bL    # 0.04

    cmpg-double p0, v0, v3

    if-gez p0, :cond_38

    .line 225
    move-wide v0, v3

    .line 227
    :cond_38
    const-wide v3, 0x4041800000000000L    # 35.0

    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    mul-double v7, v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 228
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpg-double p0, v3, v0

    if-gez p0, :cond_4c

    .line 229
    return v2

    .line 232
    :cond_4c
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sub-double/2addr v3, v0

    .line 233
    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    cmpg-double p0, v3, v7

    if-gez p0, :cond_56

    .line 234
    move-wide v3, v7

    .line 236
    :cond_56
    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double/2addr v7, v0

    div-double/2addr v7, v3

    .line 237
    const-wide/16 v0, 0x0

    cmpg-double p0, v7, v0

    if-gez p0, :cond_61

    .line 238
    move-wide v7, v0

    .line 240
    :cond_61
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v7, v0

    if-lez p0, :cond_68

    .line 241
    move-wide v7, v0

    .line 244
    :cond_68
    mul-double v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    .line 245
    if-gez p0, :cond_72

    .line 246
    goto :goto_73

    .line 245
    :cond_72
    move v2, p0

    .line 248
    :goto_73
    const/16 p0, 0x64

    if-le v2, p0, :cond_79

    .line 249
    const/16 v2, 0x64

    .line 251
    :cond_79
    return v2
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 370
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 371
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .line 382
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 383
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 378
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 379
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 374
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 386
    if-nez p0, :cond_3

    .line 387
    return-void

    .line 389
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 390
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 391
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 392
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 393
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 394
    return-void

    .line 396
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 397
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 399
    return-void
.end method

.method private static startAudioThread()V
    .registers 3

    .line 287
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$AudioLoopRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$AudioLoopRunnable;-><init>()V

    const-string v2, "MusicSyncAudio"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 288
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 289
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 290
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 291
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 321
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 322
    return-void

    .line 324
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 325
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 327
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_17
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_21

    .line 328
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 329
    return-void

    .line 331
    :cond_21
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 332
    if-eqz v3, :cond_49

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    goto :goto_49

    .line 336
    :cond_2d
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 337
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3e

    .line 338
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 339
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 340
    return-void

    .line 342
    :cond_3e
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 343
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 344
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 345
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startAudioThread()V

    goto :goto_60

    .line 333
    :cond_49
    :goto_49
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_4c} :catch_57
    .catchall {:try_start_17 .. :try_end_4c} :catchall_4d

    .line 334
    return-void

    .line 350
    :catchall_4d
    move-exception v1

    .line 351
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 352
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 353
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_61

    .line 346
    :catch_57
    move-exception v0

    .line 347
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 348
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 349
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 354
    :goto_60
    nop

    .line 355
    :goto_61
    return-void
.end method

.method public static stop()V
    .registers 1

    .line 402
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 403
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 404
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 405
    return-void
.end method

.method private static stopAudioThread()V
    .registers 3

    .line 294
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 295
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 296
    if-nez v0, :cond_8

    .line 297
    return-void

    .line 300
    :cond_8
    const-wide/16 v1, 0x190

    :try_start_a
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    .line 302
    goto :goto_f

    .line 301
    :catchall_e
    move-exception v0

    .line 303
    :goto_f
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 3

    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 307
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopAudioThread()V

    .line 309
    :try_start_6
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_10

    .line 310
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 312
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    .line 314
    goto :goto_15

    .line 313
    :catchall_14
    move-exception v1

    .line 315
    :goto_15
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 316
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 317
    return-void
.end method

.method private static tryOpen(IIII)Z
    .registers 13

    .line 102
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 103
    if-gtz v1, :cond_8

    .line 104
    return v0

    .line 106
    :cond_8
    const/16 v2, 0x200

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 109
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3f

    .line 110
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 111
    invoke-virtual {v1, p3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 112
    invoke-virtual {p3, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 115
    new-instance p2, Landroid/media/AudioRecord$Builder;

    invoke-direct {p2}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 116
    invoke-virtual {p2, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 118
    invoke-virtual {p0, v8}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 120
    goto :goto_4a

    .line 121
    :cond_3f
    new-instance v1, Landroid/media/AudioRecord;

    move-object v3, v1

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v1

    .line 123
    :goto_4a
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_55

    .line 124
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 125
    return v0

    .line 127
    :cond_55
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_58

    .line 128
    return p2

    .line 129
    :catchall_58
    move-exception p0

    .line 130
    return v0
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 193
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_9

    .line 194
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_19

    .line 196
    :cond_9
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fe70a3d70a3d70aL    # 0.72

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 198
    :goto_19
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_22

    .line 199
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_35

    .line 201
    :cond_22
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3feee147ae147ae1L    # 0.965

    mul-double v0, v0, v2

    const-wide v2, 0x3fa1eb851eb851f0L    # 0.03500000000000003

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 203
    :goto_35
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_3f

    .line 204
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 206
    :cond_3f
    return-void
.end method
