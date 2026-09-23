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

.field public static final DEFAULT_FLOOR:I = 0x14

.field public static final DEFAULT_RHYTHM_MIX:I = 0x32

.field public static final DEFAULT_SENSITIVITY:I = 0x14

.field public static final DEFAULT_SMOOTHNESS:I = 0x14

.field static final ERROR_DENIED:I = 0x7f0d010d

.field static final ERROR_MIC:I = 0x7f0d010e

.field static final ERROR_PLAYER:I = 0x7f0d0113

.field private static final KEY_FLOOR:Ljava/lang/String; = "floor"

.field private static final KEY_RHYTHM_MIX:Ljava/lang/String; = "rhythm_mix"

.field private static final KEY_SENSITIVITY:Ljava/lang/String; = "sensitivity"

.field private static final KEY_SMOOTHNESS:Ljava/lang/String; = "smoothness"

.field private static final MIC_BASS_CUTOFF_HZ:D = 180.0

.field private static final MIC_ONSET_MIN_PEAK_DB:D = 3.0

.field private static final MIC_ONSET_PEAK_DECAY_PER_MS:D = 0.9995

.field private static final MIC_ONSET_SLOW_MS:D = 90.0

.field private static final ONSET_DECAY_PER_20MS:D = 0.72

.field private static final ONSET_GATE:D = 0.15

.field private static final PEAK_DECAY:D = 0.978

.field static final PERMISSION_REQUEST:I = 0x4254

.field private static final PLAYER_LEAD_MAX_MS:I = 0x190

.field private static final PLAYER_POLL_AGE_MS:I = 0x8

.field private static final PREFS:Ljava/lang/String; = "music_sync_settings"

.field private static final READ_YIELD_MS:J = 0x5L

.field private static final RELEASE:D = 0.32

.field private static final RISE_TIME_MAX_MS:I = 0x258

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

.field private static micLp1:D

.field private static micLp2:D

.field private static micOnsetPrimed:Z

.field private static micPeakFlux:D

.field private static micRhythm:D

.field private static micSlowDb:D

.field private static pausedByTraining:Z

.field private static volatile pendingApplied:I

.field private static playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

.field private static playerMode:Z

.field private static volatile playerPreparing:Z

.field private static volatile playerSmoothedSound:F

.field private static rhythmMix:I

.field static running:Z

.field private static sendStartMs:J

.field private static sensitivity:I

.field private static slewLastMs:J

.field private static slewLevel:F

.field private static volatile smoothedRms:D

.field private static smoothness:I

.field private static volatile trackedPeakRms:D

.field private static trainingGateOpen:Z

.field private static final writeCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v1, 0x14

    const/4 v2, -0x1

    .line 76
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 78
    const/16 v0, 0x32

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 80
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 86
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->micPeakFlux:D

    .line 95
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 102
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 104
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 108
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 110
    const/16 v0, 0x80

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    .line 116
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    return-void
.end method

.method static synthetic access$1000()Z
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    return v0
.end method

.method static synthetic access$200()Landroid/media/AudioRecord;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioRecord;)I
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->sampleSoundPercent(Landroid/media/AudioRecord;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(I)V
    .registers 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 3

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    return-void
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .prologue
    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return p0
.end method

.method static synthetic access$800()V
    .registers 0

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    return-void
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static adjustCeiling(I)Z
    .registers 3

    .prologue
    .line 620
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_6

    if-nez p0, :cond_8

    .line 621
    :cond_6
    const/4 v0, 0x0

    .line 629
    :goto_7
    return v0

    .line 623
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 624
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 625
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 626
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 627
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 628
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 629
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static clampPercent(I)I
    .registers 2

    .prologue
    const/16 v0, 0x64

    .line 414
    if-gez p0, :cond_6

    .line 415
    const/4 p0, 0x0

    .line 420
    :cond_5
    :goto_5
    return p0

    .line 417
    :cond_6
    if-le p0, v0, :cond_5

    move p0, v0

    .line 418
    goto :goto_5
.end method

.method static ensureHandler()V
    .registers 2

    .prologue
    .line 234
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 237
    :cond_f
    return-void
.end method

.method private static envelopeToSoundPercent(D)I
    .registers 8

    .prologue
    .line 448
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->updateEnvelope(D)V

    .line 449
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/SoundEnvelopeMapper;->rmsToPercent(DDI)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    return v0
.end method

.method private static finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 7

    .prologue
    const v3, 0x7f0d0113

    const/4 v0, 0x0

    .line 766
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 767
    if-eqz p0, :cond_a

    if-nez p1, :cond_e

    .line 768
    :cond_a
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 788
    :goto_d
    return-void

    .line 772
    :cond_e
    :try_start_e
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    .line 773
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 774
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 775
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 776
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 777
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 778
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 779
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 780
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 781
    const/4 v0, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 782
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackStarted()V

    .line 783
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

    .line 784
    :catch_58
    move-exception v0

    .line 785
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 786
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_d
.end method

.method private static flushPending()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 153
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v0, :cond_d

    .line 154
    :cond_a
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 182
    :cond_c
    :goto_c
    return-void

    .line 157
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_21

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    .line 161
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 163
    :cond_21
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-nez v0, :cond_c

    .line 167
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 168
    if-ltz v0, :cond_c

    .line 171
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 172
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-eq v0, v1, :cond_c

    .line 175
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 176
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZ)V

    .line 177
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 178
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    .line 181
    :cond_44
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    goto :goto_c
.end method

.method private static freezeImpulseOutput()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 908
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 909
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 910
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 911
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 912
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 913
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 914
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 915
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 916
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->sendImpulseLevel(I)V

    .line 917
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 918
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 919
    return-void
.end method

.method public static getBleLatencyMs()I
    .registers 2

    .prologue
    .line 224
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .prologue
    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getFloorPercent()I
    .registers 1

    .prologue
    .line 668
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 641
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .prologue
    .line 637
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getPlaybackDurationMs()I
    .registers 1

    .prologue
    .line 936
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 937
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
    .line 931
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 932
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

    .line 229
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 230
    if-le v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public static getRhythmMix()I
    .registers 1

    .prologue
    .line 660
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    return v0
.end method

.method public static getSensitivity()I
    .registers 1

    .prologue
    .line 656
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    return v0
.end method

.method public static getSmoothness()I
    .registers 1

    .prologue
    .line 681
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .prologue
    .line 406
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method private static handleWriteComplete()V
    .registers 8

    .prologue
    .line 201
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_2e

    .line 202
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    :cond_a
    :goto_a
    return-void

    .line 206
    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    .line 208
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_2e

    .line 209
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-nez v2, :cond_36

    .line 210
    long-to-double v0, v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 214
    :goto_28
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    .line 217
    :cond_2e
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v0, :cond_a

    .line 218
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    goto :goto_a

    .line 212
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

.method public static hasBleLatencySample()Z
    .registers 1

    .prologue
    .line 689
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static hasRecordPermission()Z
    .registers 2

    .prologue
    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->permissionContext()Landroid/content/Context;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_10

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 334
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 333
    :goto_f
    return v0

    .line 334
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isMainThread()Z
    .registers 2

    .prologue
    .line 131
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
    .line 941
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 942
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
    .line 607
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static isPlayerPreparing()Z
    .registers 1

    .prologue
    .line 743
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .prologue
    .line 603
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 611
    if-nez p0, :cond_4

    .line 615
    :cond_3
    :goto_3
    return v0

    .line 614
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 615
    if-ne v1, p0, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static isTargetSenderBusy()Z
    .registers 1

    .prologue
    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 136
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
    .line 113
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method private static limitRise(I)I
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 311
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_42

    const-wide/16 v0, 0x10

    .line 312
    :goto_f
    sput-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 313
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v3, v3, 0x258

    div-int/lit8 v3, v3, 0x64

    .line 314
    if-lez v3, :cond_47

    int-to-float v4, p0

    sget v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_47

    .line 315
    const/high16 v4, 0x42c80000    # 100.0f

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, v4

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 316
    int-to-float v1, p0

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 320
    :goto_36
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 321
    if-lez p0, :cond_41

    if-ge v0, v2, :cond_41

    move v0, v2

    :cond_41
    return v0

    .line 311
    :cond_42
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    sub-long v0, v4, v0

    goto :goto_f

    .line 318
    :cond_47
    int-to-float v0, p0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    goto :goto_36
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 694
    if-nez p0, :cond_3

    .line 706
    :goto_2
    return-void

    .line 698
    :cond_3
    :try_start_3
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 699
    const-string v1, "sensitivity"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 700
    const-string v1, "rhythm_mix"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 701
    const-string v1, "floor"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 702
    const-string v1, "smoothness"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_36} :catch_37

    goto :goto_2

    .line 703
    :catch_37
    move-exception v0

    .line 704
    const-string v1, "music_settings_load"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static maybeUpdateUi()V
    .registers 6

    .prologue
    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 497
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 505
    :goto_e
    return-void

    .line 500
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 501
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 502
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 503
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 504
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    goto :goto_e
.end method

.method private static measureRms([SI)D
    .registers 10

    .prologue
    .line 424
    const-wide/16 v2, 0x0

    .line 425
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_10

    .line 426
    aget-short v1, p0, v0

    int-to-long v4, v1

    aget-short v1, p0, v0

    int-to-long v6, v1

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 428
    :cond_10
    long-to-double v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static micRhythmPercent([SII)I
    .registers 15

    .prologue
    .line 467
    const/16 v0, 0x1f40

    if-ge p2, v0, :cond_6

    .line 468
    const/16 p2, 0x3e80

    .line 470
    :cond_6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, -0x3f6e541b48c0104bL    # -1130.9733552923256

    int-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double v4, v0, v2

    .line 471
    const-wide/16 v2, 0x0

    .line 472
    const/4 v0, 0x0

    :goto_18
    if-ge v0, p1, :cond_3a

    .line 473
    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp1:D

    aget-short v1, p0, v0

    int-to-double v8, v1

    sget-wide v10, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp1:D

    sub-double/2addr v8, v10

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    sput-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp1:D

    .line 474
    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp2:D

    sget-wide v8, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp1:D

    sget-wide v10, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp2:D

    sub-double/2addr v8, v10

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    sput-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp2:D

    .line 475
    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp2:D

    sget-wide v8, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp2:D

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 477
    :cond_3a
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 478
    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    int-to-double v4, p2

    div-double/2addr v2, v4

    .line 479
    sget-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->micOnsetPrimed:Z

    if-nez v4, :cond_58

    .line 480
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->micSlowDb:D

    .line 481
    const/4 v4, 0x1

    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->micOnsetPrimed:Z

    .line 483
    :cond_58
    const-wide/16 v4, 0x0

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->micSlowDb:D

    sub-double v6, v0, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 484
    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->micSlowDb:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x4056800000000000L    # 90.0

    div-double v10, v2, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    sget-wide v10, Lcom/isaigu/gymapp/train/utils/MusicSync;->micSlowDb:D

    sub-double/2addr v0, v10

    mul-double/2addr v0, v8

    add-double/2addr v0, v6

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->micSlowDb:D

    .line 485
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->micPeakFlux:D

    const-wide v8, 0x3feffbe76c8b4396L    # 0.9995

    .line 486
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    .line 485
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->micPeakFlux:D

    .line 487
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->micPeakFlux:D

    div-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 488
    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpg-double v4, v0, v4

    if-gez v4, :cond_a4

    .line 489
    const-wide/16 v0, 0x0

    .line 491
    :cond_a4
    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->micRhythm:D

    const-wide v6, 0x3fe70a3d70a3d70aL    # 0.72

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    div-double/2addr v2, v8

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->micRhythm:D

    .line 492
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->micRhythm:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mixLevels(II)I
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 300
    if-gtz p0, :cond_5

    .line 301
    const/4 v0, 0x0

    .line 305
    :cond_4
    :goto_4
    return v0

    .line 303
    :cond_5
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 304
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    int-to-double v6, p0

    mul-double/2addr v4, v6

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 305
    if-lt v1, v0, :cond_4

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    goto :goto_4
.end method

.method public static onBleWriteComplete()V
    .registers 2

    .prologue
    .line 189
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 198
    :goto_4
    return-void

    .line 192
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 193
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    goto :goto_4

    .line 196
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public static onPlayerPlaybackStarted()V
    .registers 1

    .prologue
    .line 791
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 792
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 793
    return-void
.end method

.method private static openMicrophone()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 392
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

    .line 397
    :goto_1c
    array-length v4, v3

    if-ge v0, v4, :cond_2e

    .line 398
    aget-object v4, v3, v0

    aget v4, v4, v1

    aget-object v5, v3, v0

    aget v5, v5, v2

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->tryOpen(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    move v1, v2

    .line 402
    :cond_2e
    return v1

    .line 397
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 392
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
    .line 325
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 326
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 328
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

    .line 269
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v1, :cond_d

    .line 293
    :cond_c
    :goto_c
    return-void

    .line 273
    :cond_d
    if-gez p0, :cond_49

    .line 274
    const/4 p0, 0x0

    .line 278
    :cond_10
    :goto_10
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_33

    .line 279
    int-to-float v0, p0

    div-float v2, v0, v4

    .line 280
    const v0, 0x3f7851ec    # 0.97f

    .line 281
    const v1, 0x3f47ae14    # 0.78f

    .line 282
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4d

    .line 283
    :goto_23
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 284
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 286
    :cond_33
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 287
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->limitRise(I)I

    move-result v0

    .line 288
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 289
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v1, :cond_45

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v1, :cond_c

    .line 292
    :cond_45
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    goto :goto_c

    .line 275
    :cond_49
    if-le p0, v0, :cond_10

    move p0, v0

    .line 276
    goto :goto_10

    :cond_4d
    move v0, v1

    .line 282
    goto :goto_23
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 261
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 262
    return-void
.end method

.method static releaseAudio()V
    .registers 3

    .prologue
    .line 338
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 339
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 340
    if-nez v0, :cond_8

    .line 354
    :goto_7
    return-void

    .line 344
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 345
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 346
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_1f

    .line 351
    :cond_19
    :goto_19
    :try_start_19
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_7

    .line 352
    :catch_1d
    move-exception v0

    goto :goto_7

    .line 348
    :catch_1f
    move-exception v1

    goto :goto_19
.end method

.method private static releasePlayer()V
    .registers 2

    .prologue
    .line 508
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 509
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 510
    if-eqz v0, :cond_a

    .line 511
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 513
    :cond_a
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    .line 240
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 241
    const-wide v0, 0x4072c00000000000L    # 300.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 242
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 243
    sput-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 244
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp1:D

    .line 245
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->micLp2:D

    .line 246
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->micSlowDb:D

    .line 247
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->micPeakFlux:D

    .line 248
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->micRhythm:D

    .line 249
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->micOnsetPrimed:Z

    .line 250
    sput-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 251
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 252
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 253
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 254
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 255
    return-void
.end method

.method private static resumeImpulseOutput()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 922
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 923
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 924
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 925
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 926
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 927
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 928
    return-void
.end method

.method private static sampleSoundPercent(Landroid/media/AudioRecord;)I
    .registers 5

    .prologue
    .line 453
    if-nez p0, :cond_5

    .line 454
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 462
    :goto_4
    return v0

    .line 456
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 457
    if-gtz v0, :cond_14

    .line 458
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    goto :goto_4

    .line 460
    :cond_14
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->measureRms([SI)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->envelopeToSoundPercent(D)I

    move-result v1

    .line 461
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioBuffer:[S

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->micRhythmPercent([SII)I

    move-result v0

    .line 462
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->mixLevels(II)I

    move-result v0

    goto :goto_4
.end method

.method public static saveSettings(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 709
    if-nez p0, :cond_3

    .line 722
    :goto_2
    return-void

    .line 713
    :cond_3
    :try_start_3
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sensitivity"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 714
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rhythm_mix"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 715
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "floor"

    .line 716
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "smoothness"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 717
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 718
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_33} :catch_34

    goto :goto_2

    .line 719
    :catch_34
    move-exception v0

    .line 720
    const-string v1, "music_settings_save"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static seekPlaybackTo(I)V
    .registers 3

    .prologue
    .line 946
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 947
    if-eqz v0, :cond_b

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_b

    .line 948
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->seekTo(I)V

    .line 950
    :cond_b
    return-void
.end method

.method public static setFloorPercent(I)V
    .registers 2

    .prologue
    .line 673
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 674
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_17

    .line 675
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 676
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 678
    :cond_17
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 645
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 646
    return-void
.end method

.method public static setRhythmMix(I)V
    .registers 2

    .prologue
    .line 664
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 665
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .prologue
    .line 652
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 653
    return-void
.end method

.method public static setSmoothness(I)V
    .registers 2

    .prologue
    .line 685
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 686
    return-void
.end method

.method private static setSyncActive(Z)V
    .registers 1

    .prologue
    .line 633
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 634
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .prologue
    .line 265
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 266
    return-void
.end method

.method public static setTargetMacAddress(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 649
    return-void
.end method

.method public static start(Landroid/app/Activity;II)V
    .registers 6

    .prologue
    .line 725
    if-nez p0, :cond_3

    .line 740
    :goto_2
    return-void

    .line 728
    :cond_3
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 729
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 730
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->loadSettings(Landroid/content/Context;)V

    .line 731
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 732
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 733
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 734
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    goto :goto_2

    .line 737
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showPermission()V

    .line 738
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

    .line 543
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->hasRecordPermission()Z

    move-result v0

    if-nez v0, :cond_12

    .line 544
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 600
    :goto_11
    return-void

    .line 547
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 548
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 549
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 550
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 552
    :try_start_1e
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->openMicrophone()Z

    move-result v0

    if-nez v0, :cond_35

    .line 553
    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_2a} :catch_46

    goto :goto_11

    .line 591
    :catch_2b
    move-exception v0

    .line 592
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 593
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 594
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_11

    .line 556
    :cond_35
    :try_start_35
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;

    .line 557
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eq v1, v2, :cond_50

    .line 558
    :cond_3f
    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_45} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_45} :catch_46

    goto :goto_11

    .line 595
    :catch_46
    move-exception v0

    .line 596
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 597
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 598
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_11

    .line 561
    :cond_50
    :try_start_50
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 562
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_64

    .line 563
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 564
    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_11

    .line 567
    :cond_64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 568
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 569
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 570
    const/4 v0, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showActive(II)V

    .line 571
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$3;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$3;-><init>()V

    const-string v2, "MusicSyncMic"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 590
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_89
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_89} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_89} :catch_46

    goto :goto_11
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 747
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 762
    :cond_4
    :goto_4
    return-void

    .line 750
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    if-nez v0, :cond_4

    .line 753
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 754
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 755
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 756
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 757
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 758
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 759
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 760
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 761
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

    .line 869
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 870
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 871
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 872
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 873
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 516
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 517
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 518
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 519
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioThread:Ljava/lang/Thread;

    .line 520
    if-eqz v0, :cond_11

    .line 522
    const-wide/16 v2, 0x190

    :try_start_e
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_61

    .line 526
    :cond_11
    :goto_11
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    .line 527
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 528
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 530
    :cond_23
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v0, :cond_4f

    .line 531
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

    .line 534
    :cond_4f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseAudio()V

    .line 535
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePlayer()V

    .line 536
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 537
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 538
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 539
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->releaseMaModeForActivePause()V

    .line 540
    return-void

    .line 523
    :catch_61
    move-exception v0

    goto :goto_11
.end method

.method private static submitApplied(I)V
    .registers 3

    .prologue
    .line 141
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 142
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    .line 149
    :goto_b
    return-void

    .line 146
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 147
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
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

    .line 880
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-nez v0, :cond_b

    .line 905
    :cond_a
    :goto_a
    return-void

    .line 883
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 884
    if-eqz v0, :cond_a

    .line 887
    if-nez p0, :cond_2f

    .line 888
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 889
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 890
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 891
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 892
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 893
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 895
    :cond_28
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 896
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_a

    .line 899
    :cond_2f
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 900
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_a

    .line 901
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 902
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 903
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_a
.end method

.method public static togglePlaybackPause()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 953
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 954
    if-eqz v0, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v1, :cond_e

    .line 967
    :cond_d
    :goto_d
    return-void

    .line 957
    :cond_e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 958
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 959
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 960
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 966
    :goto_1c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_d

    .line 962
    :cond_20
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 963
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resumeImpulseOutput()V

    .line 964
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    goto :goto_1c
.end method

.method private static tryOpen(II)Z
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 358
    const/16 v0, 0x10

    const/4 v1, 0x2

    :try_start_5
    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 360
    if-gtz v5, :cond_d

    move v0, v6

    .line 387
    :goto_c
    return v0

    .line 365
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4b

    .line 366
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x2

    .line 367
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 369
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 371
    new-instance v1, Landroid/media/AudioRecord$Builder;

    invoke-direct {v1}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 372
    invoke-virtual {v1, p0}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v1

    .line 373
    invoke-virtual {v1, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0, v5}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    .line 380
    :goto_40
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eq v1, v7, :cond_59

    .line 381
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    move v0, v6

    .line 382
    goto :goto_c

    .line 377
    :cond_4b
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    goto :goto_40

    .line 386
    :catch_56
    move-exception v0

    move v0, v6

    .line 387
    goto :goto_c

    .line 384
    :cond_59
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->audioRecord:Landroid/media/AudioRecord;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5b} :catch_56

    move v0, v7

    .line 385
    goto :goto_c
.end method

.method private static updateEnvelope(D)V
    .registers 10

    .prologue
    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    .line 432
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    cmpl-double v0, p0, v0

    if-lez v0, :cond_28

    .line 433
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fee147ae147ae14L    # 0.94

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    .line 437
    :goto_17
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpl-double v0, p0, v0

    if-lez v0, :cond_38

    .line 438
    sput-wide p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 442
    :goto_1f
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_27

    .line 443
    sput-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->trackedPeakRms:D

    .line 445
    :cond_27
    return-void

    .line 435
    :cond_28
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    const-wide v2, 0x3fd47ae147ae147bL    # 0.32

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    sub-double v4, p0, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothedRms:D

    goto :goto_17

    .line 440
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
