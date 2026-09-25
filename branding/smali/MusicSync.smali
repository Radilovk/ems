.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;
    }
.end annotation


# static fields
.field private static final BLE_ACK_STUCK_MS:J = 0x5dcL

.field private static final BLE_LATENCY_EMA:D = 0.2

.field private static final BLE_LATENCY_INITIAL_MS:I = 0x32

.field private static final BLE_LATENCY_OUTLIER_MS:J = 0x3e8L

.field public static final DEFAULT_FLOOR:I = 0x14

.field public static final DEFAULT_HZ_BASS:I = 0x0

.field public static final DEFAULT_HZ_TREBLE:I = 0x55

.field public static final DEFAULT_RHYTHM_MIX:I = 0x32

.field public static final DEFAULT_SENSITIVITY:I = 0x14

.field public static final DEFAULT_SMOOTHNESS:I = 0x14

.field static final ERROR_PLAYER:I = 0x7f0d0113

.field public static final HZ_MAX:I = 0x78

.field public static final HZ_MIN:I = 0x5

.field private static final KEY_FLOOR:Ljava/lang/String; = "floor"

.field private static final KEY_HZ_BASS:Ljava/lang/String; = "hz_bass"

.field private static final KEY_HZ_TREBLE:Ljava/lang/String; = "hz_treble"

.field private static final KEY_RHYTHM_MIX:Ljava/lang/String; = "rhythm_mix"

.field private static final KEY_SENSITIVITY:Ljava/lang/String; = "sensitivity"

.field private static final KEY_SMOOTHNESS:Ljava/lang/String; = "smoothness"

.field private static final PLAYER_LEAD_MAX_MS:I = 0x190

.field private static final PLAYER_POLL_AGE_MS:I = 0x8

.field private static final PREFS:Ljava/lang/String; = "music_sync_settings"

.field private static final PW_MIN:I = 0x32

.field private static final PW_TREBLE_SHARE:F = 0.6f

.field private static final RISE_TIME_MAX_MS:I = 0x258

.field private static final UI_INTERVAL_MS:J = 0x50L

.field private static awaitingAck:Z

.field private static volatile bleLatencyMs:D

.field private static bleLatencySamples:I

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static hzBass:I

.field private static hzTreble:I

.field private static lastPushedApplied:I

.field private static lastPushedHz:I

.field private static lastPushedPw:I

.field private static lastTone:F

.field private static lastUiMs:J

.field private static volatile latestTone:I

.field static volatile liveStrength:I

.field private static pausedByTraining:Z

.field private static volatile pendingApplied:I

.field private static volatile pendingHz:I

.field private static volatile pendingPw:I

.field private static playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

.field private static playerMode:Z

.field private static volatile playerPreparing:Z

.field private static volatile playerSmoothedSound:F

.field private static volatile playerSmoothedTone:F

.field private static rhythmMix:I

.field static running:Z

.field private static savedProgramHz:I

.field private static savedProgramPw:I

.field private static sendStartMs:J

.field private static sensitivity:I

.field private static slewLastMs:J

.field private static slewLevel:F

.field private static smoothness:I

.field private static toneSlew:F

.field private static toneSlewLastMs:J

.field private static trainingGateOpen:Z

.field private static final writeCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x32

    const/16 v0, 0x14

    const/high16 v2, 0x42480000    # 50.0f

    const/4 v1, -0x1

    .line 58
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 60
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 62
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 67
    const/16 v0, 0x55

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 69
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    .line 71
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 72
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 74
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 75
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 76
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 77
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 81
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 83
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    .line 85
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 97
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 99
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 103
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 110
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    return-void
.end method

.method static synthetic access$1000(I)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return p0
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    return-void
.end method

.method static synthetic access$602(I)I
    .locals 0

    .prologue
    .line 20
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    return v0
.end method

.method public static adjustCeiling(I)Z
    .locals 2

    .prologue
    .line 499
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 500
    :cond_0
    const/4 v0, 0x0

    .line 508
    :goto_0
    return v0

    .line 502
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 503
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 504
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 505
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 506
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 507
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 508
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static clampPercent(I)I
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 434
    if-gez p0, :cond_1

    .line 435
    const/4 p0, 0x0

    .line 440
    :cond_0
    :goto_0
    return p0

    .line 437
    :cond_1
    if-le p0, v0, :cond_0

    move p0, v0

    .line 438
    goto :goto_0
.end method

.method static ensureHandler()V
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 248
    :cond_0
    return-void
.end method

.method private static finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .locals 4

    .prologue
    const v3, 0x7f0d0113

    const/4 v0, 0x0

    .line 628
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 629
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 630
    :cond_0
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 653
    :goto_0
    return-void

    .line 634
    :cond_1
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    .line 635
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 636
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 637
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 638
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 639
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 640
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-lez v0, :cond_2

    .line 641
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    .line 643
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 644
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 645
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 646
    const/4 v0, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 647
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackStarted()V

    .line 648
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 651
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_0
.end method

.method private static flushPending()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 154
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v0, :cond_2

    .line 155
    :cond_0
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_3

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 164
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 169
    if-ltz v0, :cond_1

    .line 172
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 173
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 174
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 175
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 176
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 177
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v3, :cond_5

    if-lez v1, :cond_4

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-ne v1, v3, :cond_5

    :cond_4
    if-lez v2, :cond_1

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    if-eq v2, v3, :cond_1

    .line 180
    :cond_5
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 181
    if-lez v1, :cond_6

    .line 182
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 184
    :cond_6
    if-lez v2, :cond_7

    .line 185
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 187
    :cond_7
    invoke-static {v0, v5, v5, v1, v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZII)V

    .line 188
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    .line 192
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    goto :goto_0
.end method

.method private static freezeImpulseOutput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 778
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 779
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 780
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 781
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 782
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 783
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 784
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 785
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 786
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->sendImpulseLevel(I)V

    .line 787
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 788
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 789
    return-void
.end method

.method public static getBleLatencyMs()I
    .locals 2

    .prologue
    .line 235
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getEffectiveStrength()I
    .locals 1

    .prologue
    .line 430
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getFloorPercent()I
    .locals 1

    .prologue
    .line 544
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 520
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getHzBass()I
    .locals 1

    .prologue
    .line 354
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    return v0
.end method

.method public static getHzTreble()I
    .locals 1

    .prologue
    .line 358
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    return v0
.end method

.method public static getLiveStrength()I
    .locals 1

    .prologue
    .line 516
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getPlaybackDurationMs()I
    .locals 1

    .prologue
    .line 806
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 807
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->getDurationMs()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPlaybackPositionMs()I
    .locals 1

    .prologue
    .line 801
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 802
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPlayerLeadMs()I
    .locals 2

    .prologue
    const/16 v0, 0x190

    .line 240
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 241
    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getRhythmMix()I
    .locals 1

    .prologue
    .line 536
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    return v0
.end method

.method public static getSensitivity()I
    .locals 1

    .prologue
    .line 532
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    return v0
.end method

.method public static getSmoothness()I
    .locals 1

    .prologue
    .line 557
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method private static handleWriteComplete()V
    .locals 8

    .prologue
    .line 212
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_2

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    .line 219
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 220
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-nez v2, :cond_3

    .line 221
    long-to-double v0, v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 225
    :goto_1
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    .line 228
    :cond_2
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v0, :cond_0

    .line 229
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    goto :goto_0

    .line 223
    :cond_3
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    long-to-double v0, v0

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    sub-double/2addr v0, v6

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    goto :goto_1
.end method

.method public static hasBleLatencySample()Z
    .locals 1

    .prologue
    .line 565
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMainThread()Z
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlaybackPaused()Z
    .locals 2

    .prologue
    .line 811
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 812
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayerMode()Z
    .locals 1

    .prologue
    .line 486
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static isPlayerPreparing()Z
    .locals 1

    .prologue
    .line 605
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return v0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 482
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 490
    if-nez p0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 493
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 494
    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isTargetSenderBusy()Z
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrainingGateOpen()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method private static limitRise(I)I
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 412
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    const-wide/16 v0, 0x10

    .line 413
    :goto_0
    sput-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 414
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v3, v3, 0x258

    div-int/lit8 v3, v3, 0x64

    .line 415
    if-lez v3, :cond_2

    int-to-float v4, p0

    sget v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 416
    const/high16 v4, 0x42c80000    # 100.0f

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, v4

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 417
    int-to-float v1, p0

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 421
    :goto_1
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 422
    if-lez p0, :cond_0

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 412
    :cond_1
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    sub-long v0, v4, v0

    goto :goto_0

    .line 419
    :cond_2
    int-to-float v0, p0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    goto :goto_1
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 570
    if-nez p0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 574
    :cond_0
    :try_start_0
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 575
    const-string v1, "sensitivity"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 576
    const-string v1, "rhythm_mix"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 577
    const-string v1, "floor"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 578
    const-string v1, "smoothness"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 579
    const-string v1, "hz_bass"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 580
    const-string v1, "hz_treble"

    const/16 v2, 0x55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    const-string v1, "music_settings_load"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static maybeUpdateUi()V
    .locals 6

    .prologue
    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 445
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 452
    :goto_0
    return-void

    .line 448
    :cond_0
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 449
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 451
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    goto :goto_0
.end method

.method public static mixLevels(II)I
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 401
    if-gtz p0, :cond_1

    .line 402
    const/4 v0, 0x0

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 405
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

    .line 406
    if-lt v1, v0, :cond_0

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    goto :goto_0
.end method

.method public static onBleWriteComplete()V
    .locals 2

    .prologue
    .line 200
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 208
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onPlayerPlaybackStarted()V
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 657
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 658
    return-void
.end method

.method private static pushSoundLevel(I)V
    .locals 5

    .prologue
    const/16 v0, 0x64

    const/high16 v4, 0x42c80000    # 100.0f

    .line 279
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-gez p0, :cond_6

    .line 284
    const/4 p0, 0x0

    .line 288
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_3

    .line 289
    int-to-float v0, p0

    div-float v2, v0, v4

    .line 290
    const v0, 0x3f7851ec    # 0.97f

    .line 291
    const v1, 0x3f47ae14    # 0.78f

    .line 292
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    .line 293
    :goto_2
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 294
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 296
    :cond_3
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 297
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->limitRise(I)I

    move-result v0

    .line 298
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->soundHz()I

    move-result v1

    .line 300
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v2, :cond_5

    if-lez v1, :cond_4

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-ne v1, v2, :cond_5

    :cond_4
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v2, :cond_0

    .line 303
    :cond_5
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    goto :goto_0

    .line 285
    :cond_6
    if-le p0, v0, :cond_2

    move p0, v0

    .line 286
    goto :goto_1

    :cond_7
    move v0, v1

    .line 292
    goto :goto_2
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0

    .prologue
    .line 271
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 272
    return-void
.end method

.method private static releasePlayer()V
    .locals 2

    .prologue
    .line 455
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 456
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 457
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 460
    :cond_0
    return-void
.end method

.method private static rememberProgramHz()V
    .locals 1

    .prologue
    .line 376
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    if-lez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTargetHz()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 380
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTargetPulseWidth()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    goto :goto_0
.end method

.method private static resetAudioLevels()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 251
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 252
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 253
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 254
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 255
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 256
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 257
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 258
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 259
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 260
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 261
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    .line 262
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 263
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 264
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 265
    return-void
.end method

.method private static restoreProgramHz()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 385
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 386
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 387
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 388
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 389
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 390
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 391
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 392
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTargetHz(IIZ)V

    .line 394
    :cond_1
    return-void
.end method

.method private static resumeImpulseOutput()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 792
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 793
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 794
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 795
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 796
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 797
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 798
    return-void
.end method

.method public static saveSettings(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 587
    if-nez p0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 591
    :cond_0
    :try_start_0
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sensitivity"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 592
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rhythm_mix"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 593
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "floor"

    .line 594
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "smoothness"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 595
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hz_bass"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 596
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hz_treble"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 597
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 598
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    const-string v1, "music_settings_save"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static seekPlaybackTo(I)V
    .locals 2

    .prologue
    .line 816
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 817
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_0

    .line 818
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->seekTo(I)V

    .line 820
    :cond_0
    return-void
.end method

.method public static setFloorPercent(I)V
    .locals 1

    .prologue
    .line 549
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 550
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 552
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 554
    :cond_0
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 524
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 525
    return-void
.end method

.method public static setHzBass(I)V
    .locals 2

    .prologue
    .line 363
    if-gtz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 364
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-nez v0, :cond_2

    .line 365
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->restoreProgramHz()V

    .line 369
    :cond_0
    :goto_1
    return-void

    .line 363
    :cond_1
    const/4 v0, 0x5

    const/16 v1, 0x78

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 366
    :cond_2
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    goto :goto_1
.end method

.method public static setHzTreble(I)V
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x5

    const/16 v1, 0x78

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 373
    return-void
.end method

.method public static setRhythmMix(I)V
    .locals 1

    .prologue
    .line 540
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 541
    return-void
.end method

.method public static setSensitivity(I)V
    .locals 1

    .prologue
    .line 528
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 529
    return-void
.end method

.method public static setSmoothness(I)V
    .locals 1

    .prologue
    .line 561
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 562
    return-void
.end method

.method private static setSyncActive(Z)V
    .locals 0

    .prologue
    .line 512
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 513
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0

    .prologue
    .line 275
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 276
    return-void
.end method

.method private static soundHz()I
    .locals 9

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    .line 312
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-gtz v0, :cond_1

    .line 313
    :cond_0
    const/4 v0, -0x1

    .line 334
    :goto_0
    return v0

    .line 315
    :cond_1
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, v8

    .line 316
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    const v0, 0x3f7851ec    # 0.97f

    .line 317
    :goto_1
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 318
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 320
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    const-wide/16 v0, 0x10

    .line 321
    :goto_2
    sput-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    .line 322
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v3, v3, 0x258

    div-int/lit8 v3, v3, 0x64

    .line 323
    if-lez v3, :cond_5

    int-to-float v4, v2

    sget v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 324
    int-to-float v2, v2

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, v8

    int-to-float v1, v3

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 328
    :goto_3
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    .line 329
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    int-to-float v0, v0

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v8

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 331
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-lez v1, :cond_2

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 332
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 334
    :cond_2
    const/4 v1, 0x5

    const/16 v2, 0x78

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 316
    :cond_3
    const v0, 0x3f47ae14    # 0.78f

    goto :goto_1

    .line 320
    :cond_4
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    sub-long v0, v4, v0

    goto :goto_2

    .line 326
    :cond_5
    int-to-float v0, v2

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    goto :goto_3
.end method

.method private static soundPw()I
    .locals 4

    .prologue
    .line 339
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 340
    if-gtz v1, :cond_0

    .line 341
    const/4 v0, -0x1

    .line 348
    :goto_0
    return v0

    .line 343
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const v2, 0x3ecccccc    # 0.39999998f

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 344
    const/16 v2, 0x32

    int-to-float v3, v1

    mul-float/2addr v0, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 345
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    if-lez v2, :cond_1

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 346
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 348
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 609
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    if-nez v0, :cond_0

    .line 615
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 616
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 617
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 618
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 619
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 620
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 621
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 622
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 623
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    const-string v2, "music-player-prepare"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 739
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 740
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 741
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 742
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 743
    return-void
.end method

.method private static stopCaptureOnly()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 463
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 464
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 465
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 467
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    :cond_0
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v0, :cond_1

    .line 470
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

    .line 473
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePlayer()V

    .line 474
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 475
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 476
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->restoreProgramHz()V

    .line 477
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 478
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->releaseMaModeForActivePause()V

    .line 479
    return-void
.end method

.method private static submitApplied(I)V
    .locals 1

    .prologue
    .line 135
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    .line 136
    return-void
.end method

.method private static submitApplied(II)V
    .locals 2

    .prologue
    .line 140
    sput p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 141
    if-lez p1, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->soundPw()I

    move-result v0

    :goto_0
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 142
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    .line 150
    :goto_1
    return-void

    .line 141
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 148
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public static syncWithTrainingState(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 750
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-nez v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 754
    if-eqz v0, :cond_0

    .line 757
    if-nez p0, :cond_3

    .line 758
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 759
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 760
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 761
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 762
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 763
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 765
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 766
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_0

    .line 769
    :cond_3
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 770
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 772
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 773
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_0
.end method

.method public static togglePlaybackPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 823
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 824
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v1, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 829
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 830
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 836
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_0

    .line 832
    :cond_2
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 833
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resumeImpulseOutput()V

    .line 834
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    goto :goto_1
.end method
