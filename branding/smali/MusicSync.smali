.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;
    }
.end annotation


# static fields
.field private static final APPLY_MIN_DELTA:I = 0x1

.field private static final APPLY_MIN_INTERVAL_MS:J = 0x1eL

.field private static final ATTACK:D = 0.82

.field private static final AUDIO_BUFFER_SAMPLES:I = 0x100

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field private static final PEAK_DECAY:D = 0.982

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final RELEASE:D = 0.38

.field private static final SAMPLE_INTERVAL_MS:J = 0xfL

.field private static final UI_INTERVAL_MS:J = 0x32L

.field private static final audioBuffer:[S

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static audioThread:Ljava/lang/Thread;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static lastApplyMs:J

.field private static lastPushedApplied:I

.field private static lastUiMs:J

.field static volatile liveStrength:I

.field static running:Z

.field private static sensitivity:I

.field private static volatile smoothedRms:D

.field private static volatile trackedPeakRms:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 47
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 51
    const/16 v0, 0x100

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 23
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    return-void
.end method

.method static synthetic access$100()Landroid/media/AudioRecord;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioRecord;)I
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleSoundPercent(Landroid/media/AudioRecord;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(I)V
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method private static clampPercent(I)I
    .registers 2

    .line 198
    if-gez p0, :cond_4

    .line 199
    const/4 p0, 0x0

    return p0

    .line 201
    :cond_4
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 202
    return v0

    .line 204
    :cond_9
    return p0
.end method

.method static ensureHandler()V
    .registers 2

    .line 54
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 57
    :cond_f
    return-void
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 369
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 365
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .line 190
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method static hasRecordPermission()Z
    .registers 2

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_10

    .line 118
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 117
    :goto_11
    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 361
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 268
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 269
    return-void

    .line 271
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 273
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 274
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 275
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v3, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 208
    nop

    .line 209
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 210
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 212
    :cond_12
    long-to-double v0, v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static openMicrophone()Z
    .registers 7

    .line 176
    const/4 v0, 0x3

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_3a

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_42

    aput-object v3, v1, v2

    .line 181
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_30

    .line 182
    aget-object v3, v1, v2

    aget v3, v3, v4

    aget-object v6, v1, v2

    aget v6, v6, v5

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(II)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 183
    return v5

    .line 181
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 186
    :cond_30
    return v4

    nop

    :array_32
    .array-data 4
        0x1
        0xac44
    .end array-data

    :array_3a
    .array-data 4
        0x1
        0x3e80
    .end array-data

    :array_42
    .array-data 4
        0x0
        0xac44
    .end array-data
.end method

.method private static permissionContext()Landroid/content/Context;
    .registers 1

    .line 109
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 110
    return-object v0

    .line 112
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private static pushSoundLevel(I)V
    .registers 8

    .line 80
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 81
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 82
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne p0, v0, :cond_b

    .line 83
    return-void

    .line 85
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 86
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    sub-int v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    if-ge v2, v3, :cond_25

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastApplyMs:J

    sub-long v2, v0, v2

    cmp-long v6, v2, v4

    if-gez v6, :cond_25

    .line 88
    return-void

    .line 90
    :cond_25
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastApplyMs:J

    sub-long v2, v0, v2

    cmp-long v6, v2, v4

    if-gez v6, :cond_2e

    .line 91
    return-void

    .line 93
    :cond_2e
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastApplyMs:J

    .line 94
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 96
    nop

    .line 97
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 72
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 73
    return-void
.end method

.method static releaseAudio()V
    .registers 3

    .line 122
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 123
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 124
    if-nez v0, :cond_8

    .line 125
    return-void

    .line 128
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 129
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 130
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 133
    :cond_19
    goto :goto_1b

    .line 132
    :catchall_1a
    move-exception v1

    .line 135
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 137
    goto :goto_20

    .line 136
    :catchall_1f
    move-exception v0

    .line 138
    :goto_20
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 60
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 61
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 62
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 63
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastApplyMs:J

    .line 64
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 65
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 66
    return-void
.end method

.method private static sampleSoundPercent(Landroid/media/AudioRecord;)I
    .registers 10

    .line 232
    if-nez p0, :cond_5

    .line 233
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 235
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    .line 236
    if-gtz p0, :cond_12

    .line 237
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 240
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    .line 241
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 243
    const-wide v0, 0x3fc70a3d70a3d70aL    # 0.18

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-double v3, p0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide v7, 0x3fc1eb851eb851ecL    # 0.14

    mul-double v3, v3, v7

    sub-double/2addr v0, v3

    .line 244
    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, v0, v3

    if-gez p0, :cond_38

    .line 245
    move-wide v0, v3

    .line 247
    :cond_38
    const-wide v3, 0x4041800000000000L    # 35.0

    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    mul-double v7, v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 248
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpg-double p0, v3, v0

    if-gtz p0, :cond_4c

    .line 249
    return v2

    .line 252
    :cond_4c
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sub-double/2addr v2, v0

    .line 253
    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    cmpg-double p0, v2, v7

    if-gez p0, :cond_56

    .line 254
    move-wide v2, v7

    .line 256
    :cond_56
    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double/2addr v7, v0

    div-double/2addr v7, v2

    .line 257
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double p0, v7, v2

    if-gez p0, :cond_64

    .line 258
    move-wide v7, v2

    goto :goto_69

    .line 259
    :cond_64
    cmpl-double p0, v7, v0

    if-lez p0, :cond_69

    .line 260
    move-wide v7, v0

    .line 263
    :cond_69
    :goto_69
    mul-double v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    return p0
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 373
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 374
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .line 380
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 381
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 76
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 77
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 377
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 384
    if-nez p0, :cond_3

    .line 385
    return-void

    .line 387
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 388
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 389
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 390
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 391
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 392
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 393
    return-void

    .line 395
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 396
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 398
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 304
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 305
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 306
    return-void

    .line 308
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 310
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 311
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 313
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_1d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_27

    .line 314
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 315
    return-void

    .line 317
    :cond_27
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 318
    if-eqz v3, :cond_61

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    goto :goto_61

    .line 322
    :cond_33
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 323
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_44

    .line 324
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 325
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 326
    return-void

    .line 328
    :cond_44
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 329
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 331
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/isaigu/gymapp/train/utils/MusicSync$3;

    invoke-direct {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync$3;-><init>()V

    const-string v5, "MusicSyncMic"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 348
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_78

    .line 319
    :cond_61
    :goto_61
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_64} :catch_6f
    .catchall {:try_start_1d .. :try_end_64} :catchall_65

    .line 320
    return-void

    .line 353
    :catchall_65
    move-exception v1

    .line 354
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 355
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 356
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_79

    .line 349
    :catch_6f
    move-exception v0

    .line 350
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 352
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 357
    :goto_78
    nop

    .line 358
    :goto_79
    return-void
.end method

.method public static stop()V
    .registers 0

    .line 401
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 402
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 5

    .line 286
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 287
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 288
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 289
    if-eqz v1, :cond_11

    .line 291
    const-wide/16 v3, 0x190

    :try_start_c
    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 293
    goto :goto_11

    .line 292
    :catchall_10
    move-exception v1

    .line 295
    :cond_11
    :goto_11
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_18

    .line 296
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 298
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 299
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 301
    return-void
.end method

.method private static tryOpen(II)Z
    .registers 13

    .line 142
    const/4 v0, 0x2

    const/16 v1, 0x10

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 144
    if-gtz v3, :cond_b

    .line 145
    return v2

    .line 147
    :cond_b
    const/16 v4, 0x200

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 149
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_42

    .line 150
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 151
    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 155
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 156
    invoke-virtual {v0, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 158
    invoke-virtual {p0, v10}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 160
    goto :goto_4e

    .line 161
    :cond_42
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, v0

    move v6, p0

    move v7, p1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v0

    .line 164
    :goto_4e
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_59

    .line 165
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 166
    return v2

    .line 168
    :cond_59
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_5c

    .line 169
    return v0

    .line 170
    :catchall_5c
    move-exception p0

    .line 171
    return v2
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 216
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_17

    .line 217
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fea3d70a3d70a3dL    # 0.82

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_27

    .line 219
    :cond_17
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fd851eb851eb852L    # 0.38

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 221
    :goto_27
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_30

    .line 222
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_43

    .line 224
    :cond_30
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3fef6c8b43958106L    # 0.982

    mul-double v0, v0, v2

    const-wide v2, 0x3f926e978d4fdf40L    # 0.018000000000000016

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 226
    :goto_43
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_4d

    .line 227
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 229
    :cond_4d
    return-void
.end method
