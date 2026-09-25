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

.field private static lastUiMs:J

.field private static volatile latestTone:I

.field static volatile liveStrength:I

.field private static pausedByTraining:Z

.field private static volatile pendingApplied:I

.field private static volatile pendingHz:I

.field private static playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

.field private static playerMode:Z

.field private static volatile playerPreparing:Z

.field private static volatile playerSmoothedSound:F

.field private static volatile playerSmoothedTone:F

.field private static rhythmMix:I

.field static running:Z

.field private static savedProgramHz:I

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
    .locals 3

    .prologue
    const/16 v2, 0x32

    const/16 v0, 0x14

    const/4 v1, -0x1

    .line 58
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 60
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 62
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 66
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 67
    const/16 v0, 0x55

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 69
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    .line 71
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 72
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 74
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 75
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 77
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 89
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 91
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 95
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 102
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    .line 109
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
    .line 464
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 465
    :cond_0
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    .line 467
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 468
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 469
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 470
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 471
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 472
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 473
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static clampPercent(I)I
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 399
    if-gez p0, :cond_1

    .line 400
    const/4 p0, 0x0

    .line 405
    :cond_0
    :goto_0
    return p0

    .line 402
    :cond_1
    if-le p0, v0, :cond_0

    move p0, v0

    .line 403
    goto :goto_0
.end method

.method static ensureHandler()V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 234
    :cond_0
    return-void
.end method

.method private static finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .locals 4

    .prologue
    const v3, 0x7f0d0113

    const/4 v0, 0x0

    .line 593
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 594
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 595
    :cond_0
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 618
    :goto_0
    return-void

    .line 599
    :cond_1
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    .line 600
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 601
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 602
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 603
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 604
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 605
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-lez v0, :cond_2

    .line 606
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    .line 608
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 609
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 610
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 611
    const/4 v0, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 612
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackStarted()V

    .line 613
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

    .line 614
    :catch_0
    move-exception v0

    .line 615
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 616
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_0
.end method

.method private static flushPending()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 145
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v0, :cond_2

    .line 146
    :cond_0
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_3

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 153
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 155
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 160
    if-ltz v0, :cond_1

    .line 163
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 164
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 165
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 166
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v2, :cond_4

    if-lez v1, :cond_1

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-eq v1, v2, :cond_1

    .line 169
    :cond_4
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 170
    if-lez v1, :cond_5

    .line 171
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 173
    :cond_5
    invoke-static {v0, v5, v5, v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZI)V

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    .line 178
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    goto :goto_0
.end method

.method private static freezeImpulseOutput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 743
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 744
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 745
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 746
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 747
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 748
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 749
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 750
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 751
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->sendImpulseLevel(I)V

    .line 752
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 753
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 754
    return-void
.end method

.method public static getBleLatencyMs()I
    .locals 2

    .prologue
    .line 221
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getEffectiveStrength()I
    .locals 1

    .prologue
    .line 395
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getFloorPercent()I
    .locals 1

    .prologue
    .line 509
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getHzBass()I
    .locals 1

    .prologue
    .line 323
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    return v0
.end method

.method public static getHzTreble()I
    .locals 1

    .prologue
    .line 327
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    return v0
.end method

.method public static getLiveStrength()I
    .locals 1

    .prologue
    .line 481
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getPlaybackDurationMs()I
    .locals 1

    .prologue
    .line 771
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 772
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
    .line 766
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 767
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

    .line 226
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 227
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
    .line 501
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    return v0
.end method

.method public static getSensitivity()I
    .locals 1

    .prologue
    .line 497
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    return v0
.end method

.method public static getSmoothness()I
    .locals 1

    .prologue
    .line 522
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method private static handleWriteComplete()V
    .locals 8

    .prologue
    .line 198
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_2

    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    .line 205
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 206
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-nez v2, :cond_3

    .line 207
    long-to-double v0, v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 211
    :goto_1
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    .line 214
    :cond_2
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    goto :goto_0

    .line 209
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
    .line 530
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
    .line 117
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
    .line 776
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 777
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
    .line 451
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static isPlayerPreparing()Z
    .locals 1

    .prologue
    .line 570
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return v0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 447
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 455
    if-nez p0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 458
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 459
    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isTargetSenderBusy()Z
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 122
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
    .line 99
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method private static limitRise(I)I
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 377
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    const-wide/16 v0, 0x10

    .line 378
    :goto_0
    sput-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 379
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v3, v3, 0x258

    div-int/lit8 v3, v3, 0x64

    .line 380
    if-lez v3, :cond_2

    int-to-float v4, p0

    sget v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 381
    const/high16 v4, 0x42c80000    # 100.0f

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, v4

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 382
    int-to-float v1, p0

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 386
    :goto_1
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 387
    if-lez p0, :cond_0

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 377
    :cond_1
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    sub-long v0, v4, v0

    goto :goto_0

    .line 384
    :cond_2
    int-to-float v0, p0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    goto :goto_1
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 535
    if-nez p0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 539
    :cond_0
    :try_start_0
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 540
    const-string v1, "sensitivity"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 541
    const-string v1, "rhythm_mix"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 542
    const-string v1, "floor"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 543
    const-string v1, "smoothness"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 544
    const-string v1, "hz_bass"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 545
    const-string v1, "hz_treble"

    const/16 v2, 0x55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    const-string v1, "music_settings_load"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static maybeUpdateUi()V
    .locals 6

    .prologue
    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 410
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 417
    :goto_0
    return-void

    .line 413
    :cond_0
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 414
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 415
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 416
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    goto :goto_0
.end method

.method public static mixLevels(II)I
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 366
    if-gtz p0, :cond_1

    .line 367
    const/4 v0, 0x0

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 370
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

    .line 371
    if-lt v1, v0, :cond_0

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    goto :goto_0
.end method

.method public static onBleWriteComplete()V
    .locals 2

    .prologue
    .line 186
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 194
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onPlayerPlaybackStarted()V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 622
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 623
    return-void
.end method

.method private static pushSoundLevel(I)V
    .locals 5

    .prologue
    const/16 v0, 0x64

    const/high16 v4, 0x42c80000    # 100.0f

    .line 263
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    if-gez p0, :cond_6

    .line 268
    const/4 p0, 0x0

    .line 272
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_3

    .line 273
    int-to-float v0, p0

    div-float v2, v0, v4

    .line 274
    const v0, 0x3f7851ec    # 0.97f

    .line 275
    const v1, 0x3f47ae14    # 0.78f

    .line 276
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    .line 277
    :goto_2
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 278
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 280
    :cond_3
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 281
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->limitRise(I)I

    move-result v0

    .line 282
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 283
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->soundHz()I

    move-result v1

    .line 284
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v2, :cond_5

    if-lez v1, :cond_4

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-ne v1, v2, :cond_5

    :cond_4
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v2, :cond_0

    .line 287
    :cond_5
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    goto :goto_0

    .line 269
    :cond_6
    if-le p0, v0, :cond_2

    move p0, v0

    .line 270
    goto :goto_1

    :cond_7
    move v0, v1

    .line 276
    goto :goto_2
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0

    .prologue
    .line 255
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 256
    return-void
.end method

.method private static releasePlayer()V
    .locals 2

    .prologue
    .line 420
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 421
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 425
    :cond_0
    return-void
.end method

.method private static rememberProgramHz()V
    .locals 1

    .prologue
    .line 345
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    if-lez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTargetHz()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    goto :goto_0
.end method

.method private static resetAudioLevels()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 237
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 238
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 239
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 240
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 241
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 242
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 243
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 244
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 245
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    .line 246
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 247
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 248
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 249
    return-void
.end method

.method private static restoreProgramHz()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 353
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 354
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 355
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 356
    if-lez v0, :cond_0

    .line 357
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTargetHz(IZ)V

    .line 359
    :cond_0
    return-void
.end method

.method private static resumeImpulseOutput()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 757
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 758
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 759
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 760
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 761
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 762
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 763
    return-void
.end method

.method public static saveSettings(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 552
    if-nez p0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 556
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

    .line 557
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rhythm_mix"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 558
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "floor"

    .line 559
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "smoothness"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 560
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hz_bass"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 561
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hz_treble"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 562
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 563
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    const-string v1, "music_settings_save"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static seekPlaybackTo(I)V
    .locals 2

    .prologue
    .line 781
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 782
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->seekTo(I)V

    .line 785
    :cond_0
    return-void
.end method

.method public static setFloorPercent(I)V
    .locals 1

    .prologue
    .line 514
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 515
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 517
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 519
    :cond_0
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 489
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 490
    return-void
.end method

.method public static setHzBass(I)V
    .locals 2

    .prologue
    .line 332
    if-gtz p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 333
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-nez v0, :cond_2

    .line 334
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->restoreProgramHz()V

    .line 338
    :cond_0
    :goto_1
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x5

    const/16 v1, 0x78

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 335
    :cond_2
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    goto :goto_1
.end method

.method public static setHzTreble(I)V
    .locals 2

    .prologue
    .line 341
    const/4 v0, 0x5

    const/16 v1, 0x78

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 342
    return-void
.end method

.method public static setRhythmMix(I)V
    .locals 1

    .prologue
    .line 505
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 506
    return-void
.end method

.method public static setSensitivity(I)V
    .locals 1

    .prologue
    .line 493
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 494
    return-void
.end method

.method public static setSmoothness(I)V
    .locals 1

    .prologue
    .line 526
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 527
    return-void
.end method

.method private static setSyncActive(Z)V
    .locals 0

    .prologue
    .line 477
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 478
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0

    .prologue
    .line 259
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 260
    return-void
.end method

.method private static soundHz()I
    .locals 9

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    .line 296
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-gtz v0, :cond_1

    .line 297
    :cond_0
    const/4 v0, -0x1

    .line 317
    :goto_0
    return v0

    .line 299
    :cond_1
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, v8

    .line 300
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    const v0, 0x3f7851ec    # 0.97f

    .line 301
    :goto_1
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 302
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 304
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    const-wide/16 v0, 0x10

    .line 305
    :goto_2
    sput-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    .line 306
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v3, v3, 0x258

    div-int/lit8 v3, v3, 0x64

    .line 307
    if-lez v3, :cond_5

    int-to-float v4, v2

    sget v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 308
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

    .line 312
    :goto_3
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

    .line 314
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-lez v1, :cond_2

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 315
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 317
    :cond_2
    const/4 v1, 0x5

    const/16 v2, 0x78

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 300
    :cond_3
    const v0, 0x3f47ae14    # 0.78f

    goto :goto_1

    .line 304
    :cond_4
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    sub-long v0, v4, v0

    goto :goto_2

    .line 310
    :cond_5
    int-to-float v0, v2

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    goto :goto_3
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 574
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    if-nez v0, :cond_0

    .line 580
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 581
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 582
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 583
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 584
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 585
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 586
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 587
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 588
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

    .line 704
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 705
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 706
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 707
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 708
    return-void
.end method

.method private static stopCaptureOnly()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 429
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 430
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    :cond_0
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v0, :cond_1

    .line 435
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

    .line 438
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePlayer()V

    .line 439
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 440
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->restoreProgramHz()V

    .line 442
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 443
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->releaseMaModeForActivePause()V

    .line 444
    return-void
.end method

.method private static submitApplied(I)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    .line 128
    return-void
.end method

.method private static submitApplied(II)V
    .locals 2

    .prologue
    .line 132
    sput p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 133
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 134
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 139
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static syncWithTrainingState(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 715
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-nez v0, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 719
    if-eqz v0, :cond_0

    .line 722
    if-nez p0, :cond_3

    .line 723
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 724
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 725
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 728
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 730
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 731
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_0

    .line 734
    :cond_3
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 735
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 737
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 738
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_0
.end method

.method public static togglePlaybackPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 788
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 789
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 794
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 795
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 801
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_0

    .line 797
    :cond_2
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 798
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resumeImpulseOutput()V

    .line 799
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    goto :goto_1
.end method
