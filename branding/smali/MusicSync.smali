.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;
    }
.end annotation


# static fields
.field private static final ATTACK:D = 0.94

.field private static final AUDIO_BUFFER_SAMPLES:I = 0x80

.field private static final BLE_MIN_INTERVAL_MS:J = 0x10L

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field static final ERROR_PLAYER:I = 0x7f0d0113

.field private static final PEAK_DECAY:D = 0.978

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final READ_YIELD_MS:J = 0x5L

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

.field private static playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

.field private static playerMode:Z

.field private static volatile playerPreparing:Z

.field private static volatile playerSmoothedSound:F

.field static running:Z

.field private static sensitivity:I

.field private static volatile smoothedRms:D

.field private static volatile trackedPeakRms:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 51
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 57
    const/16 v0, 0x80

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    .line 59
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 25
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 25
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .registers 1

    .line 25
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return p0
.end method

.method static synthetic access$102(I)I
    .registers 1

    .line 25
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    return p0
.end method

.method static synthetic access$1100()V
    .registers 0

    .line 25
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    return-void
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method static synthetic access$202(J)J
    .registers 2

    .line 25
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J

    return-wide p0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 25
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    return-void
.end method

.method static synthetic access$400()Landroid/media/AudioRecord;
    .registers 1

    .line 25
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/AudioRecord;)I
    .registers 1

    .line 25
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleSoundPercent(Landroid/media/AudioRecord;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(I)V
    .registers 1

    .line 25
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .line 25
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    return v0
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .registers 1

    .line 25
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/app/Activity;Landroid/net/Uri;[I)V
    .registers 3

    .line 25
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;[I)V

    return-void
.end method

.method public static adjustCeiling(I)Z
    .registers 2

    .line 420
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_2c

    if-nez p0, :cond_7

    goto :goto_2c

    .line 423
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 424
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 425
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 426
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 427
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 428
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 429
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 430
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 431
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 432
    const/4 p0, 0x1

    return p0

    .line 421
    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method private static clampPercent(I)I
    .registers 2

    .line 232
    if-gez p0, :cond_4

    .line 233
    const/4 p0, 0x0

    return p0

    .line 235
    :cond_4
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 236
    return v0

    .line 238
    :cond_9
    return p0
.end method

.method static ensureHandler()V
    .registers 2

    .line 77
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 80
    :cond_f
    return-void
.end method

.method private static envelopeToSoundPercent(D)I
    .registers 5

    .line 286
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 287
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result p0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    return p0
.end method

.method private static finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;[I)V
    .registers 7

    .line 499
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 500
    const v1, 0x7f0d0113

    if-eqz p0, :cond_34

    if-nez p1, :cond_b

    goto :goto_34

    .line 505
    :cond_b
    :try_start_b
    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    .line 506
    new-instance v3, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {v2, p0, p1, p2, v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPlayback(Landroid/content/Context;Landroid/net/Uri;[ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 507
    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 508
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 509
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 510
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 511
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 512
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result p0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_2c

    .line 516
    goto :goto_33

    .line 513
    :catchall_2c
    move-exception p0

    .line 514
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 515
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 517
    :goto_33
    return-void

    .line 501
    :cond_34
    :goto_34
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 502
    return-void
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .line 228
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 444
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 440
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getPlaybackDurationMs()I
    .registers 1

    .line 602
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 603
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->getDurationMs()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static getPlaybackPositionMs()I
    .registers 1

    .line 597
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 598
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .line 224
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method static hasRecordPermission()Z
    .registers 2

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_10

    .line 152
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 151
    :goto_11
    return v0
.end method

.method public static isPlaybackPaused()Z
    .registers 2

    .line 607
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 608
    if-eqz v0, :cond_14

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static isPlayerMode()Z
    .registers 1

    .line 407
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static isPlayerPreparing()Z
    .registers 1

    .line 476
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 403
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .line 411
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 412
    return v0

    .line 414
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 415
    if-ne v1, p0, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 303
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 304
    return-void

    .line 306
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 307
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 308
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 309
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 310
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 311
    return-void
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 242
    nop

    .line 243
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 244
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 246
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

    .line 210
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

    .line 215
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_30

    .line 216
    aget-object v3, v1, v2

    aget v3, v3, v4

    aget-object v6, v1, v2

    aget v6, v6, v5

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(II)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 217
    return v5

    .line 215
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 220
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

    .line 143
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 144
    return-object v0

    .line 146
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private static pushSoundLevel(I)V
    .registers 6

    .line 104
    nop

    .line 105
    const/16 v0, 0x64

    if-gez p0, :cond_7

    .line 106
    const/4 p0, 0x0

    goto :goto_b

    .line 107
    :cond_7
    if-le p0, v0, :cond_b

    .line 108
    const/16 p0, 0x64

    .line 110
    :cond_b
    :goto_b
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_35

    .line 111
    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 112
    const v1, 0x3f6b851f    # 0.92f

    .line 113
    const v2, 0x3f1eb852    # 0.62f

    .line 114
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    cmpl-float v3, p0, v3

    if-lez v3, :cond_20

    goto :goto_23

    :cond_20
    const v1, 0x3f1eb852    # 0.62f

    .line 115
    :goto_23
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sub-float/2addr p0, v3

    mul-float p0, p0, v1

    add-float/2addr v2, p0

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 116
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 118
    :cond_35
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 119
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 120
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne p0, v0, :cond_44

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ne p0, v0, :cond_44

    .line 121
    return-void

    .line 123
    :cond_44
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 124
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_5a

    .line 125
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 126
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 128
    return-void

    .line 130
    :cond_5a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 131
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-gez v4, :cond_77

    if-eqz p0, :cond_77

    .line 132
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    sub-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 133
    const/4 v1, 0x2

    if-ge v0, v1, :cond_77

    if-eqz p0, :cond_77

    .line 134
    return-void

    .line 137
    :cond_77
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 138
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 96
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 97
    return-void
.end method

.method static releaseAudio()V
    .registers 3

    .line 156
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 157
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 158
    if-nez v0, :cond_8

    .line 159
    return-void

    .line 162
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 163
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 164
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 167
    :cond_19
    goto :goto_1b

    .line 166
    :catchall_1a
    move-exception v1

    .line 169
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 171
    goto :goto_20

    .line 170
    :catchall_1f
    move-exception v0

    .line 172
    :goto_20
    return-void
.end method

.method private static releasePlayer()V
    .registers 2

    .line 314
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 315
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 316
    if-eqz v0, :cond_a

    .line 317
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 319
    :cond_a
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 83
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 84
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 85
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 86
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J

    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 90
    return-void
.end method

.method private static sampleSoundPercent(Landroid/media/AudioRecord;)I
    .registers 4

    .line 291
    if-nez p0, :cond_5

    .line 292
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 294
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    .line 295
    if-gtz p0, :cond_12

    .line 296
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 298
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result p0

    return p0
.end method

.method public static seekPlaybackTo(I)V
    .registers 3

    .line 612
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 613
    if-eqz v0, :cond_b

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_b

    .line 614
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->seekTo(I)V

    .line 616
    :cond_b
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 448
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 449
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .line 455
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 456
    return-void
.end method

.method private static setSyncActive(Z)V
    .registers 1

    .line 436
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 437
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 100
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 101
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 452
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 459
    if-nez p0, :cond_3

    .line 460
    return-void

    .line 462
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 463
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 464
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 467
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 468
    return-void

    .line 470
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 471
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 473
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 343
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 344
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 345
    return-void

    .line 347
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 348
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 349
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 350
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 352
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_1d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_27

    .line 353
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 354
    return-void

    .line 356
    :cond_27
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 357
    if-eqz v3, :cond_64

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    goto :goto_64

    .line 361
    :cond_33
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 362
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_44

    .line 363
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 364
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 365
    return-void

    .line 367
    :cond_44
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 368
    invoke-static {v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 369
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 370
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 371
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>()V

    const-string v5, "MusicSyncMic"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 390
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_7b

    .line 358
    :cond_64
    :goto_64
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_67} :catch_72
    .catchall {:try_start_1d .. :try_end_67} :catchall_68

    .line 359
    return-void

    .line 395
    :catchall_68
    move-exception v1

    .line 396
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 398
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_7c

    .line 391
    :catch_72
    move-exception v0

    .line 392
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 393
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 394
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 399
    :goto_7b
    nop

    .line 400
    :goto_7c
    return-void
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/net/Uri;I)V
    .registers 4

    .line 480
    if-eqz p0, :cond_34

    if-nez p1, :cond_5

    goto :goto_34

    .line 483
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    if-eqz v0, :cond_a

    .line 484
    return-void

    .line 486
    :cond_a
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 487
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 488
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 489
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 490
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 492
    const/4 p2, 0x0

    sput p2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 493
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 494
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 495
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    const-string p0, "music-player-prepare"

    invoke-direct {p2, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 496
    return-void

    .line 481
    :cond_34
    :goto_34
    return-void
.end method

.method public static stop()V
    .registers 1

    .line 592
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 593
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 594
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 4

    .line 322
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 323
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 324
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 325
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 326
    if-eqz v1, :cond_13

    .line 328
    const-wide/16 v2, 0x190

    :try_start_e
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    .line 330
    goto :goto_13

    .line 329
    :catchall_12
    move-exception v1

    .line 332
    :cond_13
    :goto_13
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1c

    .line 333
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePlayer()V

    .line 337
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 338
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 339
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 340
    return-void
.end method

.method public static togglePlaybackPause()V
    .registers 2

    .line 619
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 620
    if-eqz v0, :cond_1e

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_1e

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v1, :cond_d

    goto :goto_1e

    .line 623
    :cond_d
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 624
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    goto :goto_1a

    .line 626
    :cond_17
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 628
    :goto_1a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 629
    return-void

    .line 621
    :cond_1e
    :goto_1e
    return-void
.end method

.method private static tryOpen(II)Z
    .registers 11

    .line 176
    const/4 v0, 0x2

    const/16 v1, 0x10

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 178
    if-gtz v8, :cond_b

    .line 179
    return v2

    .line 181
    :cond_b
    nop

    .line 183
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3d

    .line 184
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 185
    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 187
    invoke-virtual {p1, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 189
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 190
    invoke-virtual {v0, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 191
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 192
    invoke-virtual {p0, v8}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 194
    goto :goto_49

    .line 195
    :cond_3d
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v0

    move v4, p0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v0

    .line 198
    :goto_49
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_54

    .line 199
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 200
    return v2

    .line 202
    :cond_54
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_56
    .catchall {:try_start_4 .. :try_end_56} :catchall_57

    .line 203
    return v0

    .line 204
    :catchall_57
    move-exception p0

    .line 205
    return v2
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 250
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_17

    .line 251
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fee147ae147ae14L    # 0.94

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_27

    .line 253
    :cond_17
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fd47ae147ae147bL    # 0.32

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 255
    :goto_27
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_30

    .line 256
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_43

    .line 258
    :cond_30
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3fef4bc6a7ef9db2L    # 0.978

    mul-double v0, v0, v2

    const-wide v2, 0x3f96872b020c49c0L    # 0.02200000000000002

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 260
    :goto_43
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_4d

    .line 261
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 263
    :cond_4d
    return-void
.end method

.method static waveformToSoundPercent([B)I
    .registers 6

    .line 266
    if-eqz p0, :cond_24

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_24

    .line 269
    :cond_6
    const-wide/16 v0, 0x0

    .line 270
    const/4 v2, 0x0

    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_17

    .line 271
    aget-byte v3, p0, v2

    add-int/lit16 v3, v3, 0x80

    .line 272
    int-to-long v3, v3

    mul-long v3, v3, v3

    add-long/2addr v0, v3

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 274
    :cond_17
    long-to-double v0, v0

    array-length p0, p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 275
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result p0

    return p0

    .line 267
    :cond_24
    :goto_24
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0
.end method

.method static waveformToSoundPercent([SI)I
    .registers 2

    .line 279
    if-eqz p0, :cond_e

    if-gtz p1, :cond_5

    goto :goto_e

    .line 282
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result p0

    return p0

    .line 280
    :cond_e
    :goto_e
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0
.end method
