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
.field private static final ATTACK:D = 0.94

.field private static final AUDIO_BUFFER_SAMPLES:I = 0x80

.field private static final BLE_MIN_INTERVAL_MS:J = 0x10L

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field private static final PEAK_DECAY:D = 0.978

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final RELEASE:D = 0.32

.field private static final UI_INTERVAL_MS:J = 0x50L

.field private static final applyRunnable:Ljava/lang/Runnable;

.field private static final audioBuffer:[S

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static audioThread:Ljava/lang/Thread;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static lastBleMs:J

.field private static lastPushedApplied:I

.field private static lastUiMs:J

.field static volatile liveStrength:I

.field private static volatile pendingApplied:I

.field static running:Z

.field private static sensitivity:I

.field private static volatile smoothedRms:D

.field private static volatile trackedPeakRms:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 44
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 49
    const/16 v0, 0x80

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    .line 51
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 23
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 23
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1

    .line 23
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    return p0
.end method

.method static synthetic access$202(J)J
    .registers 2

    .line 23
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J

    return-wide p0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 23
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    return-void
.end method

.method static synthetic access$400()Landroid/media/AudioRecord;
    .registers 1

    .line 23
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/AudioRecord;)I
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleSoundPercent(Landroid/media/AudioRecord;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(I)V
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method private static clampPercent(I)I
    .registers 2

    .line 204
    if-gez p0, :cond_4

    .line 205
    const/4 p0, 0x0

    return p0

    .line 207
    :cond_4
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 208
    return v0

    .line 210
    :cond_9
    return p0
.end method

.method static ensureHandler()V
    .registers 2

    .line 69
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 72
    :cond_f
    return-void
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .line 200
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 365
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 361
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method static hasRecordPermission()Z
    .registers 2

    .line 122
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_10

    .line 124
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 123
    :goto_11
    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 357
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 274
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 275
    return-void

    .line 277
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 279
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 280
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 281
    return-void
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 214
    nop

    .line 215
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 216
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 218
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

    .line 182
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

    .line 187
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_30

    .line 188
    aget-object v3, v1, v2

    aget v3, v3, v4

    aget-object v6, v1, v2

    aget v6, v6, v5

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(II)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 189
    return v5

    .line 187
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 192
    :cond_30
    return v4

    nop

    :array_32
    .array-data 4
        0x1
        0x3e80
    .end array-data

    :array_3a
    .array-data 4
        0x1
        0xac44
    .end array-data

    :array_42
    .array-data 4
        0x0
        0x3e80
    .end array-data
.end method

.method private static permissionContext()Landroid/content/Context;
    .registers 1

    .line 115
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 116
    return-object v0

    .line 118
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private static pushSoundLevel(I)V
    .registers 6

    .line 96
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 97
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 98
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne p0, v0, :cond_f

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ne p0, v0, :cond_f

    .line 99
    return-void

    .line 101
    :cond_f
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 103
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-gez v4, :cond_2e

    if-eqz p0, :cond_2e

    .line 104
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    sub-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 105
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2e

    if-eqz p0, :cond_2e

    .line 106
    return-void

    .line 109
    :cond_2e
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 110
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 88
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 89
    return-void
.end method

.method static releaseAudio()V
    .registers 3

    .line 128
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 129
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 130
    if-nez v0, :cond_8

    .line 131
    return-void

    .line 134
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 135
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 136
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 139
    :cond_19
    goto :goto_1b

    .line 138
    :catchall_1a
    move-exception v1

    .line 141
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 143
    goto :goto_20

    .line 142
    :catchall_1f
    move-exception v0

    .line 144
    :goto_20
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 75
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 76
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 77
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 78
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J

    .line 79
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 82
    return-void
.end method

.method private static sampleSoundPercent(Landroid/media/AudioRecord;)I
    .registers 10

    .line 238
    if-nez p0, :cond_5

    .line 239
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 241
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    .line 242
    if-gtz p0, :cond_12

    .line 243
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 246
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    .line 247
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 249
    const-wide v0, 0x3fc70a3d70a3d70aL    # 0.18

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-double v3, p0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide v7, 0x3fc1eb851eb851ecL    # 0.14

    mul-double v3, v3, v7

    sub-double/2addr v0, v3

    .line 250
    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, v0, v3

    if-gez p0, :cond_38

    .line 251
    move-wide v0, v3

    .line 253
    :cond_38
    const-wide v3, 0x4041800000000000L    # 35.0

    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    mul-double v7, v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 254
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpg-double p0, v3, v0

    if-gtz p0, :cond_4c

    .line 255
    return v2

    .line 258
    :cond_4c
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sub-double/2addr v2, v0

    .line 259
    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    cmpg-double p0, v2, v7

    if-gez p0, :cond_56

    .line 260
    move-wide v2, v7

    .line 262
    :cond_56
    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double/2addr v7, v0

    div-double/2addr v7, v2

    .line 263
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmpg-double p0, v7, v2

    if-gez p0, :cond_64

    .line 264
    move-wide v7, v2

    goto :goto_69

    .line 265
    :cond_64
    cmpl-double p0, v7, v0

    if-lez p0, :cond_69

    .line 266
    move-wide v7, v0

    .line 269
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

    .line 369
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 370
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .line 376
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 377
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 92
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 93
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 373
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 380
    if-nez p0, :cond_3

    .line 381
    return-void

    .line 383
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 384
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 385
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 386
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 387
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 388
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 389
    return-void

    .line 391
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 392
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 394
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 303
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 304
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 305
    return-void

    .line 307
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 308
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 310
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 312
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_1d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_27

    .line 313
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 314
    return-void

    .line 316
    :cond_27
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 317
    if-eqz v3, :cond_61

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    goto :goto_61

    .line 321
    :cond_33
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 322
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_44

    .line 323
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 324
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 325
    return-void

    .line 327
    :cond_44
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 328
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 329
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 330
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>()V

    const-string v5, "MusicSyncMic"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 344
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_78

    .line 318
    :cond_61
    :goto_61
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_64} :catch_6f
    .catchall {:try_start_1d .. :try_end_64} :catchall_65

    .line 319
    return-void

    .line 349
    :catchall_65
    move-exception v1

    .line 350
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 352
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_79

    .line 345
    :catch_6f
    move-exception v0

    .line 346
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 347
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 348
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 353
    :goto_78
    nop

    .line 354
    :goto_79
    return-void
.end method

.method public static stop()V
    .registers 0

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 398
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 5

    .line 284
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 285
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 286
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 287
    if-eqz v1, :cond_11

    .line 289
    const-wide/16 v3, 0x190

    :try_start_c
    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 291
    goto :goto_11

    .line 290
    :catchall_10
    move-exception v1

    .line 293
    :cond_11
    :goto_11
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1f

    .line 294
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 295
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 297
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 298
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 300
    return-void
.end method

.method private static tryOpen(II)Z
    .registers 11

    .line 148
    const/4 v0, 0x2

    const/16 v1, 0x10

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 150
    if-gtz v8, :cond_b

    .line 151
    return v2

    .line 153
    :cond_b
    nop

    .line 155
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3d

    .line 156
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 157
    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 161
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 162
    invoke-virtual {v0, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 164
    invoke-virtual {p0, v8}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 166
    goto :goto_49

    .line 167
    :cond_3d
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v0

    move v4, p0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v0

    .line 170
    :goto_49
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_54

    .line 171
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 172
    return v2

    .line 174
    :cond_54
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_56
    .catchall {:try_start_4 .. :try_end_56} :catchall_57

    .line 175
    return v0

    .line 176
    :catchall_57
    move-exception p0

    .line 177
    return v2
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 222
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_17

    .line 223
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fee147ae147ae14L    # 0.94

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_27

    .line 225
    :cond_17
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fd47ae147ae147bL    # 0.32

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 227
    :goto_27
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_30

    .line 228
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_43

    .line 230
    :cond_30
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3fef4bc6a7ef9db2L    # 0.978

    mul-double v0, v0, v2

    const-wide v2, 0x3f96872b020c49c0L    # 0.02200000000000002

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 232
    :goto_43
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_4d

    .line 233
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 235
    :cond_4d
    return-void
.end method
