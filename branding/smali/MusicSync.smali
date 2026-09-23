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

.field private static final BLE_ACK_STUCK_MS:J = 0x5dcL

.field private static final BLE_LATENCY_EMA:D = 0.2

.field private static final BLE_LATENCY_INITIAL_MS:I = 0x32

.field private static final BLE_LATENCY_OUTLIER_MS:J = 0x3e8L

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field static final ERROR_PLAYER:I = 0x7f0d0113

.field private static final PEAK_DECAY:D = 0.978

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final PLAYER_LEAD_MAX_MS:I = 0x190

.field private static final PLAYER_POLL_AGE_MS:I = 0x8

.field private static final READ_YIELD_MS:J = 0x5L

.field private static final RELEASE:D = 0.32

.field private static final UI_INTERVAL_MS:J = 0x50L

.field private static final audioBuffer:[S

.field private static audioRecord:Landroid/media/AudioRecord;

.field private static audioThread:Ljava/lang/Thread;

.field private static awaitingAck:Z

.field private static volatile bleLatencyMs:D

.field private static bleLatencySamples:I

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static lastPushedApplied:I

.field private static lastUiMs:J

.field static volatile liveStrength:I

.field private static pausedByTraining:Z

.field private static volatile pendingApplied:I

.field private static playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

.field private static playerMode:Z

.field private static volatile playerPreparing:Z

.field private static volatile playerSmoothedSound:F

.field static running:Z

.field private static sendStartMs:J

.field private static sensitivity:I

.field private static volatile smoothedRms:D

.field private static volatile trackedPeakRms:D

.field private static trainingGateOpen:Z

.field private static final writeCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 55
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 62
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 69
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 71
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 75
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 77
    const/16 v0, 0x80

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    .line 83
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    return-void
.end method

.method static synthetic access$1000()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    return v0
.end method

.method static synthetic access$200()Landroid/media/AudioRecord;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioRecord;)I
    .registers 2

    .prologue
    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleSoundPercent(Landroid/media/AudioRecord;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(I)V
    .registers 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 27
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    return v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/Activity;Landroid/net/Uri;[I)V
    .registers 3

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;[I)V

    return-void
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 27
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return p0
.end method

.method static synthetic access$900()V
    .registers 0

    .prologue
    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    return-void
.end method

.method public static adjustCeiling(I)Z
    .registers 3

    .prologue
    .line 537
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_6

    if-nez p0, :cond_8

    .line 538
    :cond_6
    const/4 v0, 0x0

    .line 546
    :goto_7
    return v0

    .line 540
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 541
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 542
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 543
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 544
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 545
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 546
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static clampPercent(I)I
    .registers 2

    .prologue
    const/16 v0, 0x64

    .line 343
    if-gez p0, :cond_6

    .line 344
    const/4 p0, 0x0

    .line 349
    :cond_5
    :goto_5
    return p0

    .line 346
    :cond_6
    if-le p0, v0, :cond_5

    move p0, v0

    .line 347
    goto :goto_5
.end method

.method static ensureHandler()V
    .registers 2

    .prologue
    .line 201
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 204
    :cond_f
    return-void
.end method

.method private static envelopeToSoundPercent(D)I
    .registers 8

    .prologue
    .line 397
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 398
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    return v0
.end method

.method private static finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;[I)V
    .registers 7

    .prologue
    const v3, 0x7f0d0113

    const/4 v0, 0x0

    .line 613
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 614
    if-eqz p0, :cond_a

    if-nez p1, :cond_e

    .line 615
    :cond_a
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 635
    :goto_d
    return-void

    .line 619
    :cond_e
    :try_start_e
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    .line 620
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPlayback(Landroid/content/Context;Landroid/net/Uri;[ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 621
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 622
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 623
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 624
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 625
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 626
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 627
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 628
    const/4 v0, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 629
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackStarted()V

    .line 630
    const-string v0, "ble-pacing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player start leadMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_57} :catch_58

    goto :goto_d

    .line 631
    :catch_58
    move-exception v0

    .line 632
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 633
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_d
.end method

.method private static flushPending()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 120
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v0, :cond_d

    .line 121
    :cond_a
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 149
    :cond_c
    :goto_c
    return-void

    .line 124
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_21

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 130
    :cond_21
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-nez v0, :cond_c

    .line 134
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 135
    if-ltz v0, :cond_c

    .line 138
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 139
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-eq v0, v1, :cond_c

    .line 142
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 143
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZ)V

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 145
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    .line 148
    :cond_44
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    goto :goto_c
.end method

.method private static freezeImpulseOutput()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 755
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 756
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 757
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 758
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 759
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 760
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 761
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->sendImpulseLevel(I)V

    .line 762
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 763
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 764
    return-void
.end method

.method public static getBleLatencyMs()I
    .registers 2

    .prologue
    .line 191
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .prologue
    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 558
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .prologue
    .line 554
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getPlaybackDurationMs()I
    .registers 1

    .prologue
    .line 781
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 782
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->getDurationMs()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static getPlaybackPositionMs()I
    .registers 1

    .prologue
    .line 776
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 777
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static getPlayerLeadMs()I
    .registers 2

    .prologue
    const/16 v0, 0x190

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 197
    if-le v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .prologue
    .line 335
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method private static handleWriteComplete()V
    .registers 8

    .prologue
    .line 168
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_2e

    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 187
    :cond_a
    :goto_a
    return-void

    .line 173
    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    .line 175
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_2e

    .line 176
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-nez v2, :cond_36

    .line 177
    long-to-double v0, v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 181
    :goto_28
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    .line 184
    :cond_2e
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v0, :cond_a

    .line 185
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    goto :goto_a

    .line 179
    :cond_36
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    long-to-double v0, v0

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    sub-double/2addr v0, v6

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    goto :goto_28
.end method

.method static hasRecordPermission()Z
    .registers 2

    .prologue
    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_10

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 263
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 262
    :goto_f
    return v0

    .line 263
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isMainThread()Z
    .registers 2

    .prologue
    .line 98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isPlaybackPaused()Z
    .registers 2

    .prologue
    .line 786
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 787
    if-eqz v0, :cond_14

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isPlayerMode()Z
    .registers 1

    .prologue
    .line 524
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static isPlayerPreparing()Z
    .registers 1

    .prologue
    .line 590
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .prologue
    .line 520
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 528
    if-nez p0, :cond_4

    .line 532
    :cond_3
    :goto_3
    return v0

    .line 531
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 532
    if-ne v1, p0, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static isTargetSenderBusy()Z
    .registers 1

    .prologue
    .line 102
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isTrainingGateOpen()Z
    .registers 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method private static maybeUpdateUi()V
    .registers 6

    .prologue
    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 414
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 422
    :goto_e
    return-void

    .line 417
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 418
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 419
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 420
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 421
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    goto :goto_e
.end method

.method private static measureRms([SI)D
    .registers 10

    .prologue
    .line 353
    const-wide/16 v2, 0x0

    .line 354
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_10

    .line 355
    aget-short v1, p0, v0

    int-to-long v4, v1

    aget-short v1, p0, v0

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 357
    :cond_10
    long-to-double v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static onBleWriteComplete()V
    .registers 2

    .prologue
    .line 156
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 165
    :goto_4
    return-void

    .line 159
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 160
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    goto :goto_4

    .line 163
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 164
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public static onPlayerPlaybackStarted()V
    .registers 1

    .prologue
    .line 638
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 639
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 640
    return-void
.end method

.method private static openMicrophone()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 321
    const/4 v0, 0x3

    new-array v3, v0, [[I

    new-array v0, v4, [I

    fill-array-data v0, :array_32

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_3a

    aput-object v0, v3, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_42

    aput-object v0, v3, v4

    move v0, v1

    .line 326
    :goto_1c
    array-length v4, v3

    if-ge v0, v4, :cond_2e

    .line 327
    aget-object v4, v3, v0

    aget v4, v4, v1

    aget-object v5, v3, v0

    aget v5, v5, v2

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    move v1, v2

    .line 331
    :cond_2e
    return v1

    .line 326
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 321
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

    .prologue
    .line 254
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 255
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 257
    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    goto :goto_6
.end method

.method private static pushSoundLevel(I)V
    .registers 6

    .prologue
    const/16 v0, 0x64

    const/high16 v4, 0x42c80000    # 100.0f

    .line 228
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v1, :cond_d

    .line 251
    :cond_c
    :goto_c
    return-void

    .line 232
    :cond_d
    if-gez p0, :cond_45

    .line 233
    const/4 p0, 0x0

    .line 237
    :cond_10
    :goto_10
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_33

    .line 238
    int-to-float v0, p0

    div-float v2, v0, v4

    .line 239
    const v0, 0x3f7851ec    # 0.97f

    .line 240
    const v1, 0x3f47ae14    # 0.78f

    .line 241
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_49

    .line 242
    :goto_23
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 243
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 245
    :cond_33
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 246
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 247
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v1, :cond_41

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v1, :cond_c

    .line 250
    :cond_41
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    goto :goto_c

    .line 234
    :cond_45
    if-le p0, v0, :cond_10

    move p0, v0

    .line 235
    goto :goto_10

    :cond_49
    move v0, v1

    .line 241
    goto :goto_23
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 220
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 221
    return-void
.end method

.method static releaseAudio()V
    .registers 3

    .prologue
    .line 267
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 268
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 269
    if-nez v0, :cond_8

    .line 283
    :goto_7
    return-void

    .line 273
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 274
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 275
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_1f

    .line 280
    :cond_19
    :goto_19
    :try_start_19
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_7

    .line 281
    :catch_1d
    move-exception v0

    goto :goto_7

    .line 277
    :catch_1f
    move-exception v1

    goto :goto_19
.end method

.method private static releasePlayer()V
    .registers 2

    .prologue
    .line 425
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 426
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 427
    if-eqz v0, :cond_a

    .line 428
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 430
    :cond_a
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 207
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 208
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 209
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 210
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 211
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 212
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 214
    return-void
.end method

.method private static resumeImpulseOutput()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 767
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 768
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 769
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 770
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 771
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 772
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 773
    return-void
.end method

.method private static sampleSoundPercent(Landroid/media/AudioRecord;)I
    .registers 4

    .prologue
    .line 402
    if-nez p0, :cond_5

    .line 403
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 409
    :goto_4
    return v0

    .line 405
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 406
    if-gtz v0, :cond_14

    .line 407
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    goto :goto_4

    .line 409
    :cond_14
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result v0

    goto :goto_4
.end method

.method public static seekPlaybackTo(I)V
    .registers 3

    .prologue
    .line 791
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 792
    if-eqz v0, :cond_b

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_b

    .line 793
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->seekTo(I)V

    .line 795
    :cond_b
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 562
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 563
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 3

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 570
    return-void
.end method

.method private static setSyncActive(Z)V
    .registers 1

    .prologue
    .line 550
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 551
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .prologue
    .line 224
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 225
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 566
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 6

    .prologue
    .line 573
    if-nez p0, :cond_3

    .line 587
    :goto_2
    return-void

    .line 576
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 577
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 578
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 579
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 580
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 581
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    goto :goto_2

    .line 584
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 585
    const-string v0, "android.permission.RECORD_AUDIO"

    const/16 v1, 0x4254

    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    goto :goto_2
.end method

.method static startCapture()V
    .registers 6

    .prologue
    const v5, 0x7f0d010d

    const/4 v2, 0x1

    const v4, 0x7f0d010e

    const/4 v3, 0x0

    .line 460
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    if-nez v0, :cond_12

    .line 461
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 517
    :goto_11
    return-void

    .line 464
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 467
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 469
    :try_start_1e
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v0

    if-nez v0, :cond_35

    .line 470
    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2a} :catch_46

    goto :goto_11

    .line 508
    :catch_2b
    move-exception v0

    .line 509
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 510
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 511
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_11

    .line 473
    :cond_35
    :try_start_35
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 474
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eq v1, v2, :cond_50

    .line 475
    :cond_3f
    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_45} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_45} :catch_46

    goto :goto_11

    .line 512
    :catch_46
    move-exception v0

    .line 513
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 514
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 515
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_11

    .line 478
    :cond_50
    :try_start_50
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 479
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_64

    .line 480
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 481
    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_11

    .line 484
    :cond_64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 485
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 486
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 487
    const/4 v0, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 488
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$3;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$3;-><init>()V

    const-string v2, "MusicSyncMic"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 507
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_89
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_89} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_89} :catch_46

    goto :goto_11
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/net/Uri;I)V
    .registers 6

    .prologue
    .line 594
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 610
    :cond_4
    :goto_4
    return-void

    .line 597
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    if-nez v0, :cond_4

    .line 600
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 601
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 602
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 603
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 604
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 605
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 606
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 607
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 608
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 609
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    const-string v2, "music-player-prepare"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method public static stop()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 716
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 717
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 718
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 719
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 720
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 433
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 434
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 435
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 436
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 437
    if-eqz v0, :cond_11

    .line 439
    const-wide/16 v2, 0x190

    :try_start_e
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_61

    .line 443
    :cond_11
    :goto_11
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    .line 444
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    :cond_23
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v0, :cond_4f

    .line 448
    const-string v0, "ble-pacing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latencyMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " samples="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_4f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 452
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePlayer()V

    .line 453
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 454
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 455
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 456
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->releaseMaModeForActivePause()V

    .line 457
    return-void

    .line 440
    :catch_61
    move-exception v0

    goto :goto_11
.end method

.method private static submitApplied(I)V
    .registers 3

    .prologue
    .line 108
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 109
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    .line 116
    :goto_b
    return-void

    .line 113
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 114
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method public static syncWithTrainingState(Z)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 727
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-nez v0, :cond_b

    .line 752
    :cond_a
    :goto_a
    return-void

    .line 730
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 731
    if-eqz v0, :cond_a

    .line 734
    if-nez p0, :cond_2f

    .line 735
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 736
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 737
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 739
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 740
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 742
    :cond_28
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 743
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_a

    .line 746
    :cond_2f
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 747
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_a

    .line 748
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 749
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 750
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_a
.end method

.method public static togglePlaybackPause()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 798
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 799
    if-eqz v0, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v1, :cond_e

    .line 812
    :cond_d
    :goto_d
    return-void

    .line 802
    :cond_e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 803
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 804
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 805
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 811
    :goto_1c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_d

    .line 807
    :cond_20
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 808
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resumeImpulseOutput()V

    .line 809
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    goto :goto_1c
.end method

.method private static tryOpen(II)Z
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 287
    const/16 v0, 0x10

    const/4 v1, 0x2

    :try_start_5
    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 289
    if-gtz v5, :cond_d

    move v0, v6

    .line 316
    :goto_c
    return v0

    .line 294
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4b

    .line 295
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x2

    .line 296
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 298
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 300
    new-instance v1, Landroid/media/AudioRecord$Builder;

    invoke-direct {v1}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 301
    invoke-virtual {v1, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v1

    .line 302
    invoke-virtual {v1, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v5}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    .line 309
    :goto_40
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eq v1, v7, :cond_59

    .line 310
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    move v0, v6

    .line 311
    goto :goto_c

    .line 306
    :cond_4b
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    goto :goto_40

    .line 315
    :catch_56
    move-exception v0

    move v0, v6

    .line 316
    goto :goto_c

    .line 313
    :cond_59
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5b} :catch_56

    move v0, v7

    .line 314
    goto :goto_c
.end method

.method private static updateEnvelope(D)V
    .registers 10

    .prologue
    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    .line 361
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v0, p0, v0

    if-lez v0, :cond_28

    .line 362
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fee147ae147ae14L    # 0.94

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 366
    :goto_17
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v0, p0, v0

    if-lez v0, :cond_38

    .line 367
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 371
    :goto_1f
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_27

    .line 372
    sput-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 374
    :cond_27
    return-void

    .line 364
    :cond_28
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fd47ae147ae147bL    # 0.32

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_17

    .line 369
    :cond_38
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    const-wide v2, 0x3fef4bc6a7ef9db2L    # 0.978

    mul-double/2addr v0, v2

    const-wide v2, 0x3f96872b020c49c0L    # 0.02200000000000002

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    goto :goto_1f
.end method

.method static waveformToSoundPercent([B)I
    .registers 9

    .prologue
    .line 377
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    .line 378
    :cond_5
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 386
    :goto_7
    return v0

    .line 380
    :cond_8
    const-wide/16 v2, 0x0

    .line 381
    const/4 v0, 0x0

    :goto_b
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 382
    aget-byte v1, p0, v0

    add-int/lit16 v1, v1, 0x80

    .line 383
    int-to-long v4, v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 385
    :cond_19
    long-to-double v0, v2

    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 386
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result v0

    goto :goto_7
.end method

.method static waveformToSoundPercent([SI)I
    .registers 4

    .prologue
    .line 390
    if-eqz p0, :cond_4

    if-gtz p1, :cond_7

    .line 391
    :cond_4
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 393
    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result v0

    goto :goto_6
.end method
