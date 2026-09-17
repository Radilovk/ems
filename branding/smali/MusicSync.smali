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
.field private static final ATTACK:D = 0.7

.field private static final AUDIO_BUFFER_SAMPLES:I = 0x200

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field private static final PEAK_DECAY:D = 0.988

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final PUSH_MIN_DELTA:I = 0x5

.field private static final PUSH_MIN_INTERVAL_MS:J = 0x64L

.field private static final RELEASE:D = 0.45

.field private static final SAMPLE_INTERVAL_MS:J = 0x14L

.field private static final UI_INTERVAL_MS:J = 0x64L

.field private static final audioBuffer:[S

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static audioThread:Ljava/lang/Thread;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static lastPushMs:J

.field private static lastPushedStrength:I

.field private static lastUiMs:J

.field static volatile liveStrength:I

.field static running:Z

.field private static sensitivity:I

.field private static volatile smoothedRms:D

.field private static targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private static volatile trackedPeakRms:D

.field private static wasInWorkPhase:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 51
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 54
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedStrength:I

    .line 56
    const/16 v0, 0x200

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .line 27
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->canPushWorkPulse(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 27
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z

    return p0
.end method

.method static synthetic access$300()Landroid/media/AudioRecord;
    .registers 1

    .line 27
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/AudioRecord;)I
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleIntensity(Landroid/media/AudioRecord;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(I)V
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->onStrengthChanged(I)V

    return-void
.end method

.method private static canPushWorkPulse(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .line 75
    const/4 v0, 0x0

    if-eqz p0, :cond_18

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v1, :cond_8

    goto :goto_18

    .line 78
    :cond_8
    iget-object p0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 79
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_17

    iget-boolean p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0

    .line 76
    :cond_18
    :goto_18
    return v0
.end method

.method static ensureHandler()V
    .registers 2

    .line 59
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 62
    :cond_f
    return-void
.end method

.method public static getEffectiveStrength()I
    .registers 2

    .line 241
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSliderCeiling()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 418
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 414
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getSliderCeiling()I
    .registers 2

    .line 214
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 215
    const/16 v1, 0x64

    if-nez v0, :cond_7

    .line 216
    return v1

    .line 219
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 220
    if-nez v0, :cond_e

    .line 221
    return v1

    .line 223
    :cond_e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 224
    if-nez v0, :cond_15

    .line 225
    return v1

    .line 227
    :cond_15
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1f

    .line 228
    if-gez v0, :cond_1b

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_1b
    if-le v0, v1, :cond_1e

    .line 232
    return v1

    .line 234
    :cond_1e
    return v0

    .line 235
    :catchall_1f
    move-exception v0

    .line 236
    return v1
.end method

.method static hasRecordPermission()Z
    .registers 2

    .line 140
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_10

    .line 142
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 141
    :goto_11
    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 410
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method private static maybePushWorkPulse(I)V
    .registers 9

    .line 87
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 88
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->canPushWorkPulse(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 89
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z

    .line 90
    return-void

    .line 93
    :cond_c
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z

    .line 94
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 97
    if-nez v0, :cond_3a

    .line 98
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedStrength:I

    if-ne p0, v0, :cond_1d

    .line 99
    return-void

    .line 101
    :cond_1d
    sub-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    const-wide/16 v4, 0x64

    if-ge v0, v3, :cond_31

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushMs:J

    sub-long v6, v1, v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_31

    .line 103
    return-void

    .line 105
    :cond_31
    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushMs:J

    sub-long v6, v1, v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_3a

    .line 106
    return-void

    .line 110
    :cond_3a
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedStrength:I

    .line 111
    sput-wide v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushMs:J

    .line 112
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 113
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 320
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 321
    return-void

    .line 323
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 324
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 325
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 326
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 245
    nop

    .line 246
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 247
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 249
    :cond_12
    long-to-double v0, v0

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static onStrengthChanged(I)V
    .registers 2

    .line 311
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    if-eq p0, v0, :cond_c

    .line 312
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 313
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybePushWorkPulse(I)V

    .line 314
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 316
    :cond_c
    return-void
.end method

.method private static openMicrophone()Z
    .registers 7

    .line 200
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

    .line 205
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_30

    .line 206
    aget-object v3, v1, v2

    aget v3, v3, v4

    aget-object v6, v1, v2

    aget v6, v6, v5

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(II)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 207
    return v5

    .line 205
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 210
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

    .line 133
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 134
    return-object v0

    .line 136
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method static releaseAudio()V
    .registers 3

    .line 146
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 147
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 148
    if-nez v0, :cond_8

    .line 149
    return-void

    .line 152
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 153
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 154
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 157
    :cond_19
    goto :goto_1b

    .line 156
    :catchall_1a
    move-exception v1

    .line 159
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 161
    goto :goto_20

    .line 160
    :catchall_1f
    move-exception v0

    .line 162
    :goto_20
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 65
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 66
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 67
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 68
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushMs:J

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedStrength:I

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->wasInWorkPhase:Z

    .line 71
    return-void
.end method

.method private static sampleIntensity(Landroid/media/AudioRecord;)I
    .registers 10

    .line 269
    if-nez p0, :cond_5

    .line 270
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 272
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    .line 273
    if-gtz p0, :cond_12

    .line 274
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 277
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    .line 278
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 280
    const-wide v0, 0x3fc70a3d70a3d70aL    # 0.18

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-double v3, p0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide v7, 0x3fc1eb851eb851ecL    # 0.14

    mul-double v3, v3, v7

    sub-double/2addr v0, v3

    .line 281
    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, v0, v3

    if-gez p0, :cond_38

    .line 282
    move-wide v0, v3

    .line 284
    :cond_38
    const-wide v3, 0x4041800000000000L    # 35.0

    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    mul-double v7, v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 285
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpg-double p0, v3, v0

    if-gtz p0, :cond_4c

    .line 286
    return v2

    .line 289
    :cond_4c
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sub-double/2addr v3, v0

    .line 290
    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    cmpg-double p0, v3, v7

    if-gez p0, :cond_56

    .line 291
    move-wide v3, v7

    .line 293
    :cond_56
    sget-wide v7, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double/2addr v7, v0

    div-double/2addr v7, v3

    .line 294
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    cmpg-double p0, v7, v3

    if-gez p0, :cond_64

    .line 295
    move-wide v7, v3

    goto :goto_69

    .line 296
    :cond_64
    cmpl-double p0, v7, v0

    if-lez p0, :cond_69

    .line 297
    move-wide v7, v0

    .line 300
    :cond_69
    :goto_69
    mul-double v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    .line 301
    if-gez p0, :cond_73

    .line 302
    return v2

    .line 304
    :cond_73
    const/16 v0, 0x64

    if-le p0, v0, :cond_78

    .line 305
    return v0

    .line 307
    :cond_78
    return p0
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 422
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 423
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .line 434
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 435
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 426
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 427
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 431
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 438
    if-nez p0, :cond_3

    .line 439
    return-void

    .line 441
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 442
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 443
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 444
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 445
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 446
    return-void

    .line 448
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 449
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 451
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 355
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 356
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 357
    return-void

    .line 359
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 362
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_17
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_21

    .line 363
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 364
    return-void

    .line 366
    :cond_21
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 367
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    goto :goto_57

    .line 371
    :cond_2d
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 372
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3e

    .line 373
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 374
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 375
    return-void

    .line 377
    :cond_3e
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 378
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 379
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(I)V

    .line 380
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/isaigu/gymapp/train/utils/MusicSync$3;

    invoke-direct {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync$3;-><init>()V

    const-string v5, "MusicSyncMic"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 397
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_6e

    .line 368
    :cond_57
    :goto_57
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_5a
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_5a} :catch_65
    .catchall {:try_start_17 .. :try_end_5a} :catchall_5b

    .line 369
    return-void

    .line 402
    :catchall_5b
    move-exception v1

    .line 403
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 404
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 405
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_6f

    .line 398
    :catch_65
    move-exception v0

    .line 399
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 400
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 401
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 406
    :goto_6e
    nop

    .line 407
    :goto_6f
    return-void
.end method

.method public static stop()V
    .registers 0

    .line 454
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 455
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 5

    .line 337
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 338
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 339
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 340
    if-eqz v1, :cond_11

    .line 342
    const-wide/16 v3, 0x190

    :try_start_c
    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 344
    goto :goto_11

    .line 343
    :catchall_10
    move-exception v1

    .line 346
    :cond_11
    :goto_11
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_18

    .line 347
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 350
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 352
    return-void
.end method

.method private static tryOpen(II)Z
    .registers 13

    .line 166
    const/4 v0, 0x2

    const/16 v1, 0x10

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 168
    if-gtz v3, :cond_b

    .line 169
    return v2

    .line 171
    :cond_b
    const/16 v4, 0x400

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 173
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_42

    .line 174
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 175
    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 179
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 180
    invoke-virtual {v0, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 181
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p0, v10}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 184
    goto :goto_4e

    .line 185
    :cond_42
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, v0

    move v6, p0

    move v7, p1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v0

    .line 188
    :goto_4e
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_59

    .line 189
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 190
    return v2

    .line 192
    :cond_59
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_5c

    .line 193
    return v0

    .line 194
    :catchall_5c
    move-exception p0

    .line 195
    return v2
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 253
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_17

    .line 254
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fe6666666666666L    # 0.7

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_27

    .line 256
    :cond_17
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 258
    :goto_27
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_30

    .line 259
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_43

    .line 261
    :cond_30
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3fef9db22d0e5604L    # 0.988

    mul-double v0, v0, v2

    const-wide v2, 0x3f889374bc6a7f00L    # 0.01200000000000001

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 263
    :goto_43
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_4d

    .line 264
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 266
    :cond_4d
    return-void
.end method
