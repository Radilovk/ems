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

    .line 50
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 54
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 56
    const/16 v0, 0x80

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    .line 58
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

.method static synthetic access$1000(Landroid/app/Activity;Landroid/net/Uri;[I)V
    .registers 3

    .line 25
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;[I)V

    return-void
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

.method static synthetic access$202(J)J
    .registers 2

    .line 25
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J

    return-wide p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method static synthetic access$400()V
    .registers 0

    .line 25
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    return-void
.end method

.method static synthetic access$500()Landroid/media/AudioRecord;
    .registers 1

    .line 25
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/AudioRecord;)I
    .registers 1

    .line 25
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleSoundPercent(Landroid/media/AudioRecord;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(I)V
    .registers 1

    .line 25
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method static synthetic access$800()I
    .registers 1

    .line 25
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    return v0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .registers 1

    .line 25
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static adjustCeiling(I)Z
    .registers 2

    .line 431
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_2c

    if-nez p0, :cond_7

    goto :goto_2c

    .line 434
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 435
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 436
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 437
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 438
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 439
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 442
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 443
    const/4 p0, 0x1

    return p0

    .line 432
    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method private static clampPercent(I)I
    .registers 2

    .line 243
    if-gez p0, :cond_4

    .line 244
    const/4 p0, 0x0

    return p0

    .line 246
    :cond_4
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 247
    return v0

    .line 249
    :cond_9
    return p0
.end method

.method static ensureHandler()V
    .registers 2

    .line 76
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 79
    :cond_f
    return-void
.end method

.method private static envelopeToSoundPercent(D)I
    .registers 5

    .line 297
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 298
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
    .registers 6

    .line 502
    const v0, 0x7f0d0113

    if-eqz p0, :cond_32

    if-nez p1, :cond_8

    goto :goto_32

    .line 507
    :cond_8
    :try_start_8
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    .line 508
    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPlayback(Landroid/content/Context;Landroid/net/Uri;[ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 509
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 510
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 511
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 512
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 513
    const/4 p0, 0x0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 514
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result p1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_2a

    .line 518
    goto :goto_31

    .line 515
    :catchall_2a
    move-exception p0

    .line 516
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 517
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 519
    :goto_31
    return-void

    .line 503
    :cond_32
    :goto_32
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 504
    return-void
.end method

.method private static flushZeroStrength()V
    .registers 2

    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 95
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 96
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 97
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 98
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZ)V

    .line 99
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showIdle()V

    .line 100
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 101
    return-void
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .line 239
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 455
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 451
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .line 235
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method static hasRecordPermission()Z
    .registers 2

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_10

    .line 163
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 162
    :goto_11
    return v0
.end method

.method public static isPlayerMode()Z
    .registers 1

    .line 418
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 414
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .line 422
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 423
    return v0

    .line 425
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 426
    if-ne v1, p0, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 314
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 315
    return-void

    .line 317
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 318
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 319
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 320
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 321
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 322
    return-void
.end method

.method private static measureRms([SI)D
    .registers 9

    .line 253
    nop

    .line 254
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_12

    .line 255
    aget-short v3, p0, v2

    int-to-long v3, v3

    aget-short v5, p0, v2

    int-to-long v5, v5

    mul-long v3, v3, v5

    add-long/2addr v0, v3

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 257
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

    .line 221
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

    .line 226
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_30

    .line 227
    aget-object v3, v1, v2

    aget v3, v3, v4

    aget-object v6, v1, v2

    aget v6, v6, v5

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(II)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 228
    return v5

    .line 226
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 231
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

    .line 154
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 155
    return-object v0

    .line 157
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method private static pushSoundLevel(I)V
    .registers 6

    .line 115
    nop

    .line 116
    const/16 v0, 0x64

    if-gez p0, :cond_7

    .line 117
    const/4 p0, 0x0

    goto :goto_b

    .line 118
    :cond_7
    if-le p0, v0, :cond_b

    .line 119
    const/16 p0, 0x64

    .line 121
    :cond_b
    :goto_b
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_35

    .line 122
    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 123
    const v1, 0x3f0ccccd    # 0.55f

    .line 124
    const v2, 0x3e6147ae    # 0.22f

    .line 125
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    cmpl-float v3, p0, v3

    if-lez v3, :cond_20

    goto :goto_23

    :cond_20
    const v1, 0x3e6147ae    # 0.22f

    .line 126
    :goto_23
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sub-float/2addr p0, v3

    mul-float p0, p0, v1

    add-float/2addr v2, p0

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 127
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 129
    :cond_35
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 130
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 131
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne p0, v0, :cond_44

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ne p0, v0, :cond_44

    .line 132
    return-void

    .line 134
    :cond_44
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 135
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_5a

    .line 136
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 137
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 139
    return-void

    .line 141
    :cond_5a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 142
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-gez v4, :cond_77

    if-eqz p0, :cond_77

    .line 143
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    sub-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 144
    const/4 v1, 0x2

    if-ge v0, v1, :cond_77

    if-eqz p0, :cond_77

    .line 145
    return-void

    .line 148
    :cond_77
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 149
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 107
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 108
    return-void
.end method

.method static releaseAudio()V
    .registers 3

    .line 167
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 168
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 169
    if-nez v0, :cond_8

    .line 170
    return-void

    .line 173
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 174
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 175
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 178
    :cond_19
    goto :goto_1b

    .line 177
    :catchall_1a
    move-exception v1

    .line 180
    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 182
    goto :goto_20

    .line 181
    :catchall_1f
    move-exception v0

    .line 183
    :goto_20
    return-void
.end method

.method private static releasePlayer()V
    .registers 2

    .line 325
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 326
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 327
    if-eqz v0, :cond_a

    .line 328
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 330
    :cond_a
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 2

    .line 82
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 83
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 84
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 85
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J

    .line 86
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 90
    return-void
.end method

.method private static sampleSoundPercent(Landroid/media/AudioRecord;)I
    .registers 4

    .line 302
    if-nez p0, :cond_5

    .line 303
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 305
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    .line 306
    if-gtz p0, :cond_12

    .line 307
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0

    .line 309
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result p0

    return p0
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 459
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 460
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .line 466
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 467
    return-void
.end method

.method private static setSyncActive(Z)V
    .registers 1

    .line 447
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 448
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 111
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 112
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .line 463
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 4

    .line 470
    if-nez p0, :cond_3

    .line 471
    return-void

    .line 473
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 474
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 475
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 476
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 477
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 478
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 479
    return-void

    .line 481
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 482
    const/16 p1, 0x4254

    new-instance p2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0, p1, p2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 484
    return-void
.end method

.method static startCapture()V
    .registers 6

    .line 354
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    const v1, 0x7f0d010d

    if-nez v0, :cond_d

    .line 355
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 356
    return-void

    .line 358
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 359
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 361
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 363
    const v0, 0x7f0d010e

    const/4 v2, 0x0

    :try_start_1d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v3

    if-nez v3, :cond_27

    .line 364
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 365
    return-void

    .line 367
    :cond_27
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 368
    if-eqz v3, :cond_64

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    goto :goto_64

    .line 372
    :cond_33
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 373
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_44

    .line 374
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 375
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 376
    return-void

    .line 378
    :cond_44
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 379
    invoke-static {v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 380
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 381
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 382
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>()V

    const-string v5, "MusicSyncMic"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 401
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_7b

    .line 369
    :cond_64
    :goto_64
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_67} :catch_72
    .catchall {:try_start_1d .. :try_end_67} :catchall_68

    .line 370
    return-void

    .line 406
    :catchall_68
    move-exception v1

    .line 407
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 408
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 409
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_7c

    .line 402
    :catch_72
    move-exception v0

    .line 403
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 404
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 405
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 410
    :goto_7b
    nop

    .line 411
    :goto_7c
    return-void
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/net/Uri;I)V
    .registers 4

    .line 487
    if-eqz p0, :cond_2c

    if-nez p1, :cond_5

    goto :goto_2c

    .line 490
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 492
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 493
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 494
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 495
    const/4 p2, 0x0

    sput p2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 496
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 497
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 498
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    const-string p0, "music-player-prepare"

    invoke-direct {p2, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 499
    return-void

    .line 488
    :cond_2c
    :goto_2c
    return-void
.end method

.method public static stop()V
    .registers 0

    .line 590
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 591
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 4

    .line 333
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 334
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 335
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_e

    .line 336
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePlayer()V

    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 340
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 341
    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 342
    if-eqz v1, :cond_22

    .line 344
    const-wide/16 v2, 0x190

    :try_start_1d
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    .line 346
    goto :goto_22

    .line 345
    :catchall_21
    move-exception v1

    .line 348
    :cond_22
    :goto_22
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushZeroStrength()V

    .line 349
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 350
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 351
    return-void
.end method

.method private static tryOpen(II)Z
    .registers 11

    .line 187
    const/4 v0, 0x2

    const/16 v1, 0x10

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 189
    if-gtz v8, :cond_b

    .line 190
    return v2

    .line 192
    :cond_b
    nop

    .line 194
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3d

    .line 195
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 196
    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 198
    invoke-virtual {p1, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 200
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 201
    invoke-virtual {v0, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 203
    invoke-virtual {p0, v8}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    .line 205
    goto :goto_49

    .line 206
    :cond_3d
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v0

    move v4, p0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object p0, v0

    .line 209
    :goto_49
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_54

    .line 210
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 211
    return v2

    .line 213
    :cond_54
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_56
    .catchall {:try_start_4 .. :try_end_56} :catchall_57

    .line 214
    return v0

    .line 215
    :catchall_57
    move-exception p0

    .line 216
    return v2
.end method

.method private static updateEnvelope(D)V
    .registers 8

    .line 261
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_17

    .line 262
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fee147ae147ae14L    # 0.94

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_27

    .line 264
    :cond_17
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fd47ae147ae147bL    # 0.32

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 266
    :goto_27
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v2, p0, v0

    if-lez v2, :cond_30

    .line 267
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_43

    .line 269
    :cond_30
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3fef4bc6a7ef9db2L    # 0.978

    mul-double v0, v0, v2

    const-wide v2, 0x3f96872b020c49c0L    # 0.02200000000000002

    mul-double p0, p0, v2

    add-double/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 271
    :goto_43
    sget-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_4d

    .line 272
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 274
    :cond_4d
    return-void
.end method

.method static waveformToSoundPercent([B)I
    .registers 6

    .line 277
    if-eqz p0, :cond_24

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_24

    .line 280
    :cond_6
    const-wide/16 v0, 0x0

    .line 281
    const/4 v2, 0x0

    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_17

    .line 282
    aget-byte v3, p0, v2

    add-int/lit16 v3, v3, 0x80

    .line 283
    int-to-long v3, v3

    mul-long v3, v3, v3

    add-long/2addr v0, v3

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 285
    :cond_17
    long-to-double v0, v0

    array-length p0, p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 286
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result p0

    return p0

    .line 278
    :cond_24
    :goto_24
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0
.end method

.method static waveformToSoundPercent([SI)I
    .registers 2

    .line 290
    if-eqz p0, :cond_e

    if-gtz p1, :cond_5

    goto :goto_e

    .line 293
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result p0

    return p0

    .line 291
    :cond_e
    :goto_e
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return p0
.end method
