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
.field private static final ACTIVE_LEVEL:D = 0.06

.field private static final ATTACK:D = 0.62

.field private static final AUDIO_BUFFER_SAMPLES:I = 0x200

.field private static final CURVE:D = 0.82

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field private static final PEAK_DECAY:D = 0.985

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final RELEASE:D = 0.38

.field private static final UI_MIN_INTERVAL_MS:J = 0x50L

.field private static final audioBuffer:[S

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static audioThread:Ljava/lang/Thread;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

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

    .line 45
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 51
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 53
    const/16 v0, 0x200

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

.method static synthetic access$200()V
    .registers 0

    .line 26
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    return-void
.end method

.method static ensureHandler()V
    .registers 2

    .line 56
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 59
    :cond_f
    return-void
.end method

.method public static getEffectiveStrength()I
    .registers 2

    .line 179
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSliderCeiling()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 344
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 340
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getSliderCeiling()I
    .registers 2

    .line 152
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 153
    const/16 v1, 0x64

    if-nez v0, :cond_7

    .line 154
    return v1

    .line 157
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 158
    if-nez v0, :cond_e

    .line 159
    return v1

    .line 161
    :cond_e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 162
    if-nez v0, :cond_15

    .line 163
    return v1

    .line 165
    :cond_15
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1f

    .line 166
    if-gez v0, :cond_1b

    .line 167
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_1b
    if-le v0, v1, :cond_1e

    .line 170
    return v1

    .line 172
    :cond_1e
    return v0

    .line 173
    :catchall_1f
    move-exception v0

    .line 174
    return v1
.end method

.method static hasRecordPermission()Z
    .registers 3

    .line 75
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 77
    return v1

    .line 79
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

    .line 336
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 255
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 256
    return-void

    .line 258
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 259
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 260
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 261
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$UiUpdateRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 183
    nop

    .line 184
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 185
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 187
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

    .line 143
    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_3c

    .line 144
    aget-object v6, v1, v3

    aget v6, v6, v4

    aget-object v7, v1, v3

    aget v7, v7, v5

    const/16 v8, 0x10

    invoke-static {v6, v7, v8, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(IIII)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 145
    return v5

    .line 143
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 148
    :cond_3c
    return v4

    nop

    :array_3e
    .array-data 4
        0x1
        0xac44
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x3e80
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0xac44
    .end array-data

    :array_56
    .array-data 4
        0x6
        0xac44
    .end array-data
.end method

.method private static permissionContext()Landroid/content/Context;
    .registers 1

    .line 68
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 69
    return-object v0

    .line 71
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method static releaseAudio()V
    .registers 3

    .line 83
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 84
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 85
    if-nez v0, :cond_8

    .line 86
    return-void

    .line 89
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 90
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 91
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 94
    :cond_19
    goto :goto_1b

    .line 93
    :catchall_1a
    move-exception v1

    .line 96
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 98
    goto :goto_20

    .line 97
    :catchall_1f
    move-exception v0

    .line 99
    :goto_20
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 62
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 63
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 64
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 65
    return-void
.end method

.method private static sampleStrength(Landroid/media/AudioRecord;)I
    .registers 10

    .line 207
    if-nez p0, :cond_5

    .line 208
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 210
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    .line 211
    if-gtz p0, :cond_12

    .line 212
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 215
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    .line 216
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 218
    const-wide v0, 0x3fc999999999999aL    # 0.2

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-double v3, p0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide v7, 0x3fc3333333333333L    # 0.15

    mul-double v3, v3, v7

    sub-double/2addr v0, v3

    .line 219
    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, v0, v3

    if-gez p0, :cond_38

    .line 220
    move-wide v0, v3

    .line 222
    :cond_38
    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    mul-double v7, v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 223
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpg-double p0, v3, v0

    if-gez p0, :cond_49

    .line 224
    return v2

    .line 227
    :cond_49
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sub-double/2addr v3, v0

    .line 228
    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    cmpg-double p0, v3, v7

    if-gez p0, :cond_53

    .line 229
    move-wide v3, v7

    .line 231
    :cond_53
    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double/2addr v7, v0

    div-double/2addr v7, v3

    .line 232
    const-wide/16 v0, 0x0

    cmpg-double p0, v7, v0

    if-gez p0, :cond_5e

    .line 233
    move-wide v7, v0

    .line 235
    :cond_5e
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v7, v0

    if-lez p0, :cond_65

    .line 236
    move-wide v7, v0

    .line 238
    :cond_65
    const-wide v0, 0x3fea3d70a3d70a3dL    # 0.82

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 239
    const-wide v3, 0x3faeb851eb851eb8L    # 0.06

    cmpg-double p0, v0, v3

    if-gez p0, :cond_78

    .line 240
    return v2

    .line 243
    :cond_78
    mul-double v0, v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    .line 244
    if-gez p0, :cond_82

    .line 245
    return v2

    .line 247
    :cond_82
    const/16 v0, 0x64

    if-le p0, v0, :cond_87

    .line 248
    return v0

    .line 250
    :cond_87
    return p0
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 348
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 349
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .line 360
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 361
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 356
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 357
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 352
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 364
    if-nez p0, :cond_3

    .line 365
    return-void

    .line 367
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 368
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 369
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 370
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 371
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 372
    return-void

    .line 374
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 375
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 377
    return-void
.end method

.method private static startAudioThread()V
    .registers 3

    .line 265
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$AudioLoopRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$AudioLoopRunnable;-><init>()V

    const-string v2, "MusicSyncAudio"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 266
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 267
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 269
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 299
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 300
    return-void

    .line 302
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 303
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 305
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_17
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_21

    .line 306
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 307
    return-void

    .line 309
    :cond_21
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 310
    if-eqz v3, :cond_49

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    goto :goto_49

    .line 314
    :cond_2d
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 315
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3e

    .line 316
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 317
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 318
    return-void

    .line 320
    :cond_3e
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 321
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 322
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 323
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startAudioThread()V

    goto :goto_60

    .line 311
    :cond_49
    :goto_49
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_4c} :catch_57
    .catchall {:try_start_17 .. :try_end_4c} :catchall_4d

    .line 312
    return-void

    .line 328
    :catchall_4d
    move-exception v1

    .line 329
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 331
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_61

    .line 324
    :catch_57
    move-exception v0

    .line 325
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 326
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 327
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 332
    :goto_60
    nop

    .line 333
    :goto_61
    return-void
.end method

.method public static stop()V
    .registers 1

    .line 380
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 381
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetMacAddress:Ljava/lang/String;

    .line 382
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 383
    return-void
.end method

.method private static stopAudioThread()V
    .registers 3

    .line 272
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 273
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 274
    if-nez v0, :cond_8

    .line 275
    return-void

    .line 278
    :cond_8
    const-wide/16 v1, 0x1f4

    :try_start_a
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    .line 280
    goto :goto_f

    .line 279
    :catchall_e
    move-exception v0

    .line 281
    :goto_f
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 3

    .line 284
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 285
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopAudioThread()V

    .line 287
    :try_start_6
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_10

    .line 288
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 290
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    .line 292
    goto :goto_15

    .line 291
    :catchall_14
    move-exception v1

    .line 293
    :goto_15
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 294
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 295
    return-void
.end method

.method private static tryOpen(IIII)Z
    .registers 13

    .line 103
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 104
    if-gtz v1, :cond_8

    .line 105
    return v0

    .line 107
    :cond_8
    const/16 v2, 0x400

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

    .line 191
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_17

    .line 192
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fe3d70a3d70a3d7L    # 0.62

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_27

    .line 194
    :cond_17
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fd851eb851eb852L    # 0.38

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 196
    :goto_27
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_30

    .line 197
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_43

    .line 199
    :cond_30
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3fef851eb851eb85L    # 0.985

    mul-double v0, v0, v2

    const-wide v2, 0x3f8eb851eb851ec0L    # 0.015000000000000013

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 201
    :goto_43
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_4d

    .line 202
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 204
    :cond_4d
    return-void
.end method
