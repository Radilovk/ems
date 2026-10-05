.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchFailed;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchReady;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;
    }
.end annotation


# static fields
.field private static final AUTO_SLEW_MS:F = 2500.0f

.field private static final BLE_ACK_STUCK_MS:J = 0x5dcL

.field private static final BLE_LATENCY_EMA:D = 0.2

.field private static final BLE_LATENCY_INITIAL_MS:I = 0x32

.field private static final BLE_LATENCY_OUTLIER_MS:J = 0x3e8L

.field public static final DEFAULT_FLOOR:I = 0x14

.field public static final DEFAULT_HZ_BASS:I = 0x1e

.field public static final DEFAULT_HZ_TREBLE:I = 0x55

.field public static final DEFAULT_RHYTHM_MIX:I = 0x32

.field public static final DEFAULT_SENSITIVITY:I = 0x14

.field public static final DEFAULT_SMOOTHNESS:I = 0x14

.field static final ERROR_PLAYER:I = 0x7f0d0113

.field public static final HZ_MAX:I = 0x78

.field public static final HZ_MIN:I = 0x5

.field private static final KEY_AUTO:Ljava/lang/String; = "auto_tune"

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

.field private static autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

.field private static autoFloor:F

.field private static autoHzBass:F

.field private static autoHzTreble:F

.field private static autoLastPosMs:I

.field private static autoRhythm:F

.field private static autoSens:F

.field private static autoSlewLastMs:J

.field private static autoSmooth:F

.field private static autoTune:Z

.field private static awaitingAck:Z

.field private static volatile bleLatencyMs:D

.field private static bleLatencySamples:I

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static hzBass:I

.field private static hzTreble:I

.field private static lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

.field private static lastEnvelopeKey:Ljava/lang/String;

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

.field private static prefetchContext:Landroid/content/Context;

.field private static prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

.field private static prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

.field private static prefetchFailures:I

.field private static prefetchGen:I

.field private static prefetchInFlight:Z

.field private static prefetchKey:Ljava/lang/String;

.field private static prefetchPlayerPending:Z

.field private static prefetchPrepared:Z

.field private static prefetchPromote:Z

.field private static prefetchUri:Landroid/net/Uri;

.field private static prepareToken:I

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
    .registers 6

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x1

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v1, -0x1

    .line 61
    sput v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 63
    const/16 v0, 0x32

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 65
    sput v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 69
    const/16 v0, 0x1e

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 70
    const/16 v0, 0x55

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 72
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    .line 77
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 78
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 79
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 80
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 84
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 86
    const/16 v0, 0x32

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    .line 88
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 89
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 91
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 92
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 93
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 94
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 98
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 100
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    .line 102
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 127
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 129
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 131
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 135
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 142
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$2;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$2;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    return-void
.end method

.method static synthetic access$1000()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    .registers 1

    .prologue
    .line 20
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    return-object p0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1

    .prologue
    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    return p0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1

    .prologue
    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .registers 1

    .prologue
    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    return p0
.end method

.method static synthetic access$1400()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    return-object v0
.end method

.method static synthetic access$1700()V
    .registers 0

    .prologue
    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V
    .registers 5

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    return-void
.end method

.method static synthetic access$1902(I)I
    .registers 1

    .prologue
    .line 20
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    return p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method static synthetic access$2100()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method static synthetic access$2200()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    return v0
.end method

.method static synthetic access$2300(I)V
    .registers 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 20
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 3

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .prologue
    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return p0
.end method

.method static synthetic access$600()V
    .registers 0

    .prologue
    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    return-void
.end method

.method static synthetic access$700(ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 2

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->onPrefetchEnvelope(ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    return-void
.end method

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 20
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    return v0
.end method

.method static synthetic access$900()V
    .registers 0

    .prologue
    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handlePrefetchFailure()V

    return-void
.end method

.method public static adjustCeiling(I)Z
    .registers 3

    .prologue
    .line 529
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_6

    if-nez p0, :cond_8

    .line 530
    :cond_6
    const/4 v0, 0x0

    .line 538
    :goto_7
    return v0

    .line 532
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 533
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 534
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 535
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 536
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 537
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 538
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static applyAuto(IIIIII)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 724
    const/4 v0, 0x0

    .line 725
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    if-eq v2, p0, :cond_a

    .line 726
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    move v0, v1

    .line 729
    :cond_a
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    if-eq v2, p1, :cond_12

    .line 730
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    move v0, v1

    .line 733
    :cond_12
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v2

    if-eq v2, p2, :cond_1c

    .line 734
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    move v0, v1

    .line 737
    :cond_1c
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    if-eq v2, p3, :cond_24

    .line 738
    invoke-static {p3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    move v0, v1

    .line 741
    :cond_24
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-eq v2, p4, :cond_2c

    .line 742
    invoke-static {p4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzBass(I)V

    move v0, v1

    .line 745
    :cond_2c
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    if-eq v2, p5, :cond_34

    .line 746
    invoke-static {p5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V

    .line 749
    :goto_33
    return v1

    :cond_34
    move v1, v0

    goto :goto_33
.end method

.method private static armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 678
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-eqz v0, :cond_b

    if-eqz p0, :cond_b

    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-gtz v0, :cond_c

    .line 719
    :cond_b
    :goto_b
    return-void

    .line 681
    :cond_c
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 682
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->loudRms:[F

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->rhythm:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->tone:[F

    iget v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    iget-wide v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->toneSpanDb:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->toneMedianDb:D

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->analyze([F[F[FIDD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    .line 686
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 687
    if-nez p1, :cond_110

    if-eqz v0, :cond_110

    .line 688
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result v2

    add-int/2addr v1, v2

    .line 689
    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v2, :cond_eb

    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v2, :cond_eb

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_eb

    const/4 v0, 0x1

    .line 691
    :goto_3e
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->at(I)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v6

    .line 692
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 693
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    .line 694
    if-nez p1, :cond_53

    if-nez v0, :cond_ee

    .line 695
    :cond_53
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 696
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 697
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 698
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 699
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 700
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 701
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    iget v1, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    iget v3, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    iget v4, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    iget v5, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    .line 711
    :goto_80
    const-string v0, "auto-tune"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rhythm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " floor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " soft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    .line 717
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    goto/16 :goto_b

    :cond_eb
    move v0, v8

    .line 689
    goto/16 :goto_3e

    .line 704
    :cond_ee
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 705
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 706
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 707
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 708
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 709
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    goto/16 :goto_80

    :cond_110
    move v0, v8

    move v1, v8

    goto/16 :goto_3e
.end method

.method private static beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V
    .registers 9

    .prologue
    const v3, 0x7f0d0113

    const/4 v0, 0x0

    .line 936
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 937
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 938
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_19

    .line 939
    :cond_10
    if-eqz p3, :cond_15

    .line 940
    invoke-virtual {p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 942
    :cond_15
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 973
    :goto_18
    return-void

    .line 946
    :cond_19
    :try_start_19
    sput-object p2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 947
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelopeKey:Ljava/lang/String;

    .line 948
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-eqz v0, :cond_29

    .line 949
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V

    .line 951
    :cond_29
    if-eqz p4, :cond_81

    .line 952
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {p3, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->setListener(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 953
    invoke-virtual {p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPrepared()V

    .line 957
    :goto_36
    sput-object p3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 958
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 959
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 960
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 961
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    .line 962
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 963
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 964
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 965
    const/4 v0, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 966
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackStarted()V

    .line 967
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
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_75} :catch_76

    goto :goto_18

    .line 968
    :catch_76
    move-exception v0

    .line 969
    invoke-virtual {p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 970
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 971
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_18

    .line 955
    :cond_81
    :try_start_81
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {p3, p0, p1, p2, v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_89} :catch_76

    goto :goto_36
.end method

.method private static beginPrefetchPrepare()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 981
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 1001
    :cond_d
    :goto_d
    return-void

    .line 984
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    if-nez v0, :cond_d

    .line 987
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    .line 989
    const/4 v0, 0x1

    :try_start_18
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    .line 990
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    .line 991
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    new-instance v4, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;

    sget v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->preparePlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;)V

    .line 993
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 994
    const-string v0, "prefetch"

    const-string v2, "prepare"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_36} :catch_37

    goto :goto_d

    .line 995
    :catch_37
    move-exception v0

    .line 996
    sput-boolean v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    .line 997
    sput-boolean v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    .line 998
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 999
    const-string v1, "prefetch_prepare"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method private static clampPercent(I)I
    .registers 2

    .prologue
    const/16 v0, 0x64

    .line 464
    if-gez p0, :cond_6

    .line 465
    const/4 p0, 0x0

    .line 470
    :cond_5
    :goto_5
    return p0

    .line 467
    :cond_6
    if-le p0, v0, :cond_5

    move p0, v0

    .line 468
    goto :goto_5
.end method

.method private static clearPrefetch()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1004
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    .line 1005
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 1006
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1007
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    .line 1008
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    .line 1009
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    .line 1010
    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    .line 1011
    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 1012
    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 1013
    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 1014
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1015
    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1016
    if-eqz v0, :cond_23

    .line 1017
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 1019
    :cond_23
    return-void
.end method

.method private static detachPrefetchOwned()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1023
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    .line 1024
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 1025
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1026
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    .line 1027
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    .line 1028
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    .line 1029
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 1030
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 1031
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 1032
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1033
    return-void
.end method

.method static ensureHandler()V
    .registers 2

    .prologue
    .line 277
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 280
    :cond_f
    return-void
.end method

.method private static finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 5

    .prologue
    .line 977
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    .line 978
    return-void
.end method

.method private static flushPending()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 186
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v0, :cond_d

    .line 187
    :cond_a
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 225
    :cond_c
    :goto_c
    return-void

    .line 190
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_21

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    .line 194
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 196
    :cond_21
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-nez v0, :cond_c

    .line 200
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 201
    if-ltz v0, :cond_c

    .line 204
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 205
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 206
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 207
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 208
    sput v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 209
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v3, :cond_45

    if-lez v1, :cond_3f

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-ne v1, v3, :cond_45

    :cond_3f
    if-lez v2, :cond_c

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    if-eq v2, v3, :cond_c

    .line 212
    :cond_45
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 213
    if-lez v1, :cond_4b

    .line 214
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 216
    :cond_4b
    if-lez v2, :cond_4f

    .line 217
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 219
    :cond_4f
    invoke-static {v0, v5, v5, v1, v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZII)V

    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 221
    sput-boolean v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    .line 224
    :cond_60
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    goto :goto_c
.end method

.method public static followAutoTune(I)V
    .registers 14

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x1

    const v12, 0x451c4000    # 2500.0f

    .line 627
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    if-nez v0, :cond_10

    .line 667
    :cond_f
    :goto_f
    return-void

    .line 630
    :cond_10
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->at(I)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v6

    .line 631
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    if-ltz v0, :cond_62

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    sub-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_62

    .line 632
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 633
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 634
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 635
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 636
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 637
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 638
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    .line 640
    iget v0, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    iget v1, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    iget v3, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    iget v4, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    iget v5, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 642
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    goto :goto_f

    .line 646
    :cond_62
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 647
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 648
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-nez v0, :cond_ee

    const-wide/16 v0, 0x10

    .line 649
    :goto_72
    sput-wide v8, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    .line 650
    cmp-long v7, v0, v2

    if-gez v7, :cond_f3

    move-wide v0, v2

    .line 655
    :cond_79
    :goto_79
    const/high16 v2, 0x42c80000    # 100.0f

    long-to-float v3, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v12

    .line 656
    const/high16 v3, 0x42400000    # 48.0f

    long-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v12

    .line 657
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    iget v3, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    invoke-static {v1, v3, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 658
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    iget v3, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    invoke-static {v1, v3, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 659
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    iget v3, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    invoke-static {v1, v3, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 660
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    iget v3, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    invoke-static {v1, v3, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 661
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 662
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    iget v2, v6, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 663
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 664
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sget v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 663
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 665
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    goto/16 :goto_f

    .line 648
    :cond_ee
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    sub-long v0, v8, v0

    goto :goto_72

    .line 652
    :cond_f3
    cmp-long v2, v0, v4

    if-lez v2, :cond_79

    move-wide v0, v4

    .line 653
    goto :goto_79
.end method

.method private static freezeImpulseOutput()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 1373
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 1374
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 1375
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 1376
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 1377
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 1378
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 1379
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 1380
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1381
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->sendImpulseLevel(I)V

    .line 1382
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 1383
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 1384
    return-void
.end method

.method public static getBleLatencyMs()I
    .registers 2

    .prologue
    .line 267
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .prologue
    .line 460
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getFloorPercent()I
    .registers 1

    .prologue
    .line 574
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 550
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getHzBass()I
    .registers 1

    .prologue
    .line 386
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    return v0
.end method

.method public static getHzTreble()I
    .registers 1

    .prologue
    .line 390
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    return v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .prologue
    .line 546
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getPlaybackDurationMs()I
    .registers 1

    .prologue
    .line 1401
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1402
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
    .line 1396
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1397
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

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 273
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
    .line 566
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    return v0
.end method

.method public static getSensitivity()I
    .registers 1

    .prologue
    .line 562
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    return v0
.end method

.method public static getSmoothness()I
    .registers 1

    .prologue
    .line 587
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .prologue
    .line 456
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method private static glide(FIF)F
    .registers 5

    .prologue
    .line 670
    int-to-float v0, p1

    .line 671
    sub-float v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_c

    .line 674
    :goto_b
    return v0

    :cond_c
    cmpl-float v0, v0, p0

    if-lez v0, :cond_13

    add-float v0, p0, p2

    goto :goto_b

    :cond_13
    sub-float v0, p0, p2

    goto :goto_b
.end method

.method private static handlePrefetchFailure()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1046
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 1047
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    if-eqz v0, :cond_19

    .line 1048
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1049
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 1050
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    .line 1051
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 1052
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1064
    :goto_18
    return-void

    .line 1055
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 1056
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 1057
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    if-ge v2, v3, :cond_47

    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v2, :cond_47

    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v2, :cond_47

    if-eqz v0, :cond_47

    if-eqz v1, :cond_47

    .line 1058
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    .line 1059
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 1060
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    invoke-direct {v3, v0, v1, v4}, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    const-string v0, "music-prefetch"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_18

    .line 1063
    :cond_47
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    goto :goto_18
.end method

.method private static handleWriteComplete()V
    .registers 8

    .prologue
    .line 244
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_2e

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 263
    :cond_a
    :goto_a
    return-void

    .line 249
    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    .line 251
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_2e

    .line 252
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-nez v2, :cond_36

    .line 253
    long-to-double v0, v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 257
    :goto_28
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    .line 260
    :cond_2e
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v0, :cond_a

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    goto :goto_a

    .line 255
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
    .line 753
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isAutoTune()Z
    .registers 1

    .prologue
    .line 595
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    return v0
.end method

.method public static isAwaitingPrefetchedTrack()Z
    .registers 1

    .prologue
    .line 805
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    return v0
.end method

.method private static isMainThread()Z
    .registers 2

    .prologue
    .line 157
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
    .line 1406
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1407
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
    .line 516
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static isPlayerPreparing()Z
    .registers 1

    .prologue
    .line 800
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .prologue
    .line 512
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 520
    if-nez p0, :cond_4

    .line 524
    :cond_3
    :goto_3
    return v0

    .line 523
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 524
    if-ne v1, p0, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static isTargetSenderBusy()Z
    .registers 1

    .prologue
    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 162
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
    .line 139
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method private static limitRise(I)I
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 442
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_42

    const-wide/16 v0, 0x10

    .line 443
    :goto_f
    sput-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 444
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v3, v3, 0x258

    div-int/lit8 v3, v3, 0x64

    .line 445
    if-lez v3, :cond_47

    int-to-float v4, p0

    sget v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_47

    .line 446
    const/high16 v4, 0x42c80000    # 100.0f

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, v4

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 447
    int-to-float v1, p0

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 451
    :goto_36
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 452
    if-lez p0, :cond_41

    if-ge v0, v2, :cond_41

    move v0, v2

    :cond_41
    return v0

    .line 442
    :cond_42
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    sub-long v0, v4, v0

    goto :goto_f

    .line 449
    :cond_47
    int-to-float v0, p0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    goto :goto_36
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 758
    if-nez p0, :cond_3

    .line 774
    :goto_2
    return-void

    .line 762
    :cond_3
    :try_start_3
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 763
    const-string v1, "sensitivity"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 764
    const-string v1, "rhythm_mix"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 765
    const-string v1, "floor"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 766
    const-string v1, "smoothness"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 768
    const-string v1, "hz_bass"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzBass(I)V

    .line 769
    const-string v1, "hz_treble"

    const/16 v2, 0x55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V

    .line 770
    const-string v1, "auto_tune"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_55} :catch_56

    goto :goto_2

    .line 771
    :catch_56
    move-exception v0

    .line 772
    const-string v1, "music_settings_load"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static maybeUpdateUi()V
    .registers 6

    .prologue
    .line 474
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 475
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v2, v2, v4

    if-gez v2, :cond_f

    .line 482
    :goto_e
    return-void

    .line 478
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 479
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 480
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 481
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    goto :goto_e
.end method

.method public static mixLevels(II)I
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 431
    if-gtz p0, :cond_5

    .line 432
    const/4 v0, 0x0

    .line 436
    :cond_4
    :goto_4
    return v0

    .line 434
    :cond_5
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 435
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

    .line 436
    if-lt v1, v0, :cond_4

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    goto :goto_4
.end method

.method public static onBleWriteComplete()V
    .registers 2

    .prologue
    .line 232
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 241
    :goto_4
    return-void

    .line 235
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 236
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    goto :goto_4

    .line 239
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 240
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public static onPlayerPlaybackStarted()V
    .registers 1

    .prologue
    .line 1096
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 1097
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1098
    return-void
.end method

.method private static onPrefetchEnvelope(ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1067
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    if-eq p0, v0, :cond_6

    .line 1093
    :cond_5
    :goto_5
    return-void

    .line 1070
    :cond_6
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 1071
    if-eqz p1, :cond_e

    iget v0, p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-nez v0, :cond_12

    .line 1072
    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handlePrefetchFailure()V

    goto :goto_5

    .line 1075
    :cond_12
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    .line 1076
    sput-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 1077
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    if-eqz v0, :cond_3e

    .line 1078
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isCurrentTrack(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1079
    :cond_26
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1080
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 1081
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    goto :goto_5

    .line 1084
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 1085
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 1086
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V

    .line 1087
    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    invoke-static {v0, v1, p1, v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    goto :goto_5

    .line 1090
    :cond_3e
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_5

    .line 1091
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPrefetchPrepare()V

    goto :goto_5
.end method

.method public static prefetchNext(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 813
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_14

    .line 814
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 815
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 849
    :cond_13
    :goto_13
    return-void

    .line 818
    :cond_14
    if-eqz p0, :cond_18

    if-nez p1, :cond_1c

    .line 819
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    goto :goto_13

    .line 822
    :cond_1c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 824
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 825
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    if-nez v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    if-nez v0, :cond_13

    .line 828
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_13

    .line 829
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPrefetchPrepare()V

    goto :goto_13

    .line 833
    :cond_42
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    .line 834
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    .line 835
    sput-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 836
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 837
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    .line 838
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelopeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_77

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lez v0, :cond_77

    .line 839
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 840
    const-string v0, "prefetch"

    const-string v1, "reuse envelope"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_13

    .line 842
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPrefetchPrepare()V

    goto :goto_13

    .line 846
    :cond_77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 847
    const-string v0, "prefetch"

    const-string v1, "decode"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    invoke-direct {v1, p0, p1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    const-string v2, "music-prefetch"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_13
.end method

.method private static pushSoundLevel(I)V
    .registers 6

    .prologue
    const/16 v0, 0x64

    const/high16 v4, 0x42c80000    # 100.0f

    .line 311
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v1, :cond_d

    .line 336
    :cond_c
    :goto_c
    return-void

    .line 315
    :cond_d
    if-gez p0, :cond_53

    .line 316
    const/4 p0, 0x0

    .line 320
    :cond_10
    :goto_10
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_33

    .line 321
    int-to-float v0, p0

    div-float v2, v0, v4

    .line 322
    const v0, 0x3f7851ec    # 0.97f

    .line 323
    const v1, 0x3f47ae14    # 0.78f

    .line 324
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_57

    .line 325
    :goto_23
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 326
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 328
    :cond_33
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 329
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->limitRise(I)I

    move-result v0

    .line 330
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->soundHz()I

    move-result v1

    .line 332
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v2, :cond_4f

    if-lez v1, :cond_4b

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-ne v1, v2, :cond_4f

    :cond_4b
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v2, :cond_c

    .line 335
    :cond_4f
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    goto :goto_c

    .line 317
    :cond_53
    if-le p0, v0, :cond_10

    move p0, v0

    .line 318
    goto :goto_10

    :cond_57
    move v0, v1

    .line 324
    goto :goto_23
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 303
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 304
    return-void
.end method

.method private static releaseCurrentPlayback()V
    .registers 1

    .prologue
    .line 926
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 927
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 928
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 929
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 930
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 931
    return-void
.end method

.method private static releasePlayer()V
    .registers 2

    .prologue
    .line 485
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 486
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 487
    if-eqz v0, :cond_a

    .line 488
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 490
    :cond_a
    return-void
.end method

.method private static releasePrefetchPlayer()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1036
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    .line 1037
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    .line 1038
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1039
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1040
    if-eqz v0, :cond_f

    .line 1041
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 1043
    :cond_f
    return-void
.end method

.method private static rememberProgramHz()V
    .registers 1

    .prologue
    .line 406
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    if-lez v0, :cond_5

    .line 411
    :goto_4
    return-void

    .line 409
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTargetHz()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTargetPulseWidth()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    goto :goto_4
.end method

.method private static resetAudioLevels()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 283
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 284
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 285
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 286
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 287
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 288
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 289
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 290
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 291
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 292
    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 293
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    .line 294
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 295
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 297
    return-void
.end method

.method private static restoreProgramHz()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 415
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 416
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 417
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 418
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 419
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 420
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 421
    if-gtz v0, :cond_11

    if-lez v1, :cond_15

    .line 422
    :cond_11
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTargetHz(IIZ)V

    .line 424
    :cond_15
    return-void
.end method

.method private static resumeImpulseOutput()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 1387
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 1388
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 1389
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 1390
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 1391
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1392
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 1393
    return-void
.end method

.method public static saveSettings(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 777
    if-nez p0, :cond_3

    .line 797
    :goto_2
    return-void

    .line 781
    :cond_3
    :try_start_3
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    .line 782
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_tune"

    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    .line 783
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 785
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-nez v1, :cond_4b

    .line 786
    const-string v1, "sensitivity"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rhythm_mix"

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 787
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "floor"

    .line 788
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "smoothness"

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 789
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hz_bass"

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 790
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hz_treble"

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 791
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 793
    :cond_4b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_4e} :catch_4f

    goto :goto_2

    .line 794
    :catch_4f
    move-exception v0

    .line 795
    const-string v1, "music_settings_save"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static seekPlaybackTo(I)V
    .registers 3

    .prologue
    .line 1411
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1412
    if-eqz v0, :cond_b

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_b

    .line 1413
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->seekTo(I)V

    .line 1415
    :cond_b
    return-void
.end method

.method public static setAutoTune(Z)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 604
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-ne v0, p0, :cond_d

    .line 605
    if-eqz p0, :cond_c

    .line 606
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V

    .line 620
    :cond_c
    :goto_c
    return-void

    .line 610
    :cond_d
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    .line 611
    if-nez p0, :cond_18

    .line 612
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    .line 613
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    goto :goto_c

    .line 616
    :cond_18
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V

    .line 617
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-nez v0, :cond_c

    .line 618
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    goto :goto_c
.end method

.method public static setFloorPercent(I)V
    .registers 2

    .prologue
    .line 579
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 580
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_17

    .line 581
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 582
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 584
    :cond_17
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 554
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 555
    return-void
.end method

.method public static setHzBass(I)V
    .registers 3

    .prologue
    .line 395
    if-gtz p0, :cond_e

    const/16 v0, 0x1e

    :goto_4
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 396
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_d

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    .line 399
    :cond_d
    return-void

    .line 395
    :cond_e
    const/4 v0, 0x5

    const/16 v1, 0x78

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4
.end method

.method public static setHzTreble(I)V
    .registers 3

    .prologue
    .line 402
    const/4 v0, 0x5

    const/16 v1, 0x78

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 403
    return-void
.end method

.method public static setRhythmMix(I)V
    .registers 2

    .prologue
    .line 570
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 571
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 2

    .prologue
    .line 558
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 559
    return-void
.end method

.method public static setSmoothness(I)V
    .registers 2

    .prologue
    .line 591
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 592
    return-void
.end method

.method private static setSyncActive(Z)V
    .registers 1

    .prologue
    .line 542
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 543
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .prologue
    .line 307
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 308
    return-void
.end method

.method private static soundHz()I
    .registers 9

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    .line 344
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_a

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-gtz v0, :cond_c

    .line 345
    :cond_a
    const/4 v0, -0x1

    .line 366
    :goto_b
    return v0

    .line 347
    :cond_c
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, v8

    .line 348
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_95

    const v0, 0x3f7851ec    # 0.97f

    .line 349
    :goto_1e
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 350
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 352
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_99

    const-wide/16 v0, 0x10

    .line 353
    :goto_3c
    sput-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    .line 354
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v3, v3, 0x258

    div-int/lit8 v3, v3, 0x64

    .line 355
    if-lez v3, :cond_9e

    int-to-float v4, v2

    sget v5, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9e

    .line 356
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

    .line 360
    :goto_61
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    .line 361
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

    .line 363
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-lez v1, :cond_88

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_88

    .line 364
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 366
    :cond_88
    const/4 v1, 0x5

    const/16 v2, 0x78

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_b

    .line 348
    :cond_95
    const v0, 0x3f47ae14    # 0.78f

    goto :goto_1e

    .line 352
    :cond_99
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    sub-long v0, v4, v0

    goto :goto_3c

    .line 358
    :cond_9e
    int-to-float v0, v2

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    goto :goto_61
.end method

.method private static soundPw()I
    .registers 4

    .prologue
    .line 371
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 372
    if-gtz v1, :cond_6

    .line 373
    const/4 v0, -0x1

    .line 380
    :goto_5
    return v0

    .line 375
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    const v2, 0x3ecccccc    # 0.39999998f

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 376
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

    .line 377
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    if-lez v2, :cond_35

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_35

    .line 378
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 380
    :cond_35
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 852
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 913
    :cond_6
    :goto_6
    return-void

    .line 856
    :cond_7
    const-string v0, "music"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/OutputOwner;->conflict(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 857
    if-eqz v0, :cond_1a

    .line 859
    const/4 v1, 0x1

    :try_start_10
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_18

    goto :goto_6

    .line 860
    :catch_18
    move-exception v0

    goto :goto_6

    .line 864
    :cond_1a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 865
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    if-eqz v1, :cond_39

    .line 866
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 869
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 870
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 871
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    .line 873
    :cond_39
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 874
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    if-eqz v1, :cond_a6

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 875
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    if-eqz v0, :cond_68

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    if-eqz v0, :cond_68

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_68

    .line 876
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 877
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 878
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V

    .line 879
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 880
    const-string v2, "prefetch"

    const-string v3, "handoff prepared"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-static {p0, p1, v1, v0, v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    goto :goto_6

    .line 884
    :cond_68
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    if-eqz v0, :cond_77

    .line 885
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 886
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 887
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 888
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    goto :goto_6

    .line 891
    :cond_77
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_96

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    if-nez v0, :cond_96

    .line 892
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 893
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V

    .line 894
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 895
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 896
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 897
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    goto/16 :goto_6

    .line 900
    :cond_96
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    if-eqz v0, :cond_a6

    .line 901
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 902
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 903
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 904
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    goto/16 :goto_6

    .line 908
    :cond_a6
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 909
    sput-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 910
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    .line 911
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 912
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    invoke-direct {v1, p0, p1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;I)V

    const-string v2, "music-player-prepare"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_6
.end method

.method public static stop()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1331
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 1332
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1333
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    .line 1334
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePrefetchPlayer()V

    .line 1335
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1336
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 1337
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 1338
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 493
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 494
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 495
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    .line 496
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 499
    :cond_17
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v0, :cond_43

    .line 500
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

    .line 503
    :cond_43
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePlayer()V

    .line 504
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 505
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 506
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->restoreProgramHz()V

    .line 507
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 508
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->releaseMaModeForActivePause()V

    .line 509
    return-void
.end method

.method public static stopKeepingNext()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 917
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 918
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 919
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    .line 920
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 921
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 922
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 923
    return-void
.end method

.method private static submitApplied(I)V
    .registers 2

    .prologue
    .line 167
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    .line 168
    return-void
.end method

.method private static submitApplied(II)V
    .registers 4

    .prologue
    .line 172
    sput p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 173
    if-lez p1, :cond_16

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->soundPw()I

    move-result v0

    :goto_8
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 174
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 175
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    .line 182
    :goto_15
    return-void

    .line 173
    :cond_16
    const/4 v0, -0x1

    goto :goto_8

    .line 179
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 180
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15
.end method

.method public static syncWithTrainingState(Z)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1345
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-nez v0, :cond_b

    .line 1370
    :cond_a
    :goto_a
    return-void

    .line 1348
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1349
    if-eqz v0, :cond_a

    .line 1352
    if-nez p0, :cond_2f

    .line 1353
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 1354
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 1355
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1356
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1357
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1358
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 1360
    :cond_28
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 1361
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_a

    .line 1364
    :cond_2f
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 1365
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1366
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1367
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 1368
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_a
.end method

.method public static togglePlaybackPause()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 1418
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1419
    if-eqz v0, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v1, :cond_e

    .line 1432
    :cond_d
    :goto_d
    return-void

    .line 1422
    :cond_e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1423
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1424
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 1425
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 1431
    :goto_1c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    goto :goto_d

    .line 1427
    :cond_20
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1428
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resumeImpulseOutput()V

    .line 1429
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    goto :goto_1c
.end method
