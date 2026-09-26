.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchFailed;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchReady;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;,
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;
    }
.end annotation


# static fields
.field private static final AUTO_SLEW_MS:F = 2500.0f

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
    .registers 4

    .line 61
    const/16 v0, 0x14

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 63
    const/16 v1, 0x32

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 65
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 70
    const/16 v0, 0x55

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    .line 77
    const/high16 v2, 0x42480000    # 50.0f

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 78
    const/high16 v3, 0x41a00000    # 20.0f

    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 79
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 80
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 84
    const/4 v3, -0x1

    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 86
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    .line 88
    const/high16 v1, 0x3f000000    # 0.5f

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 89
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 91
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 92
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 93
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 94
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 98
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 100
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    .line 102
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 127
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 129
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 131
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    return-void
.end method

.method static synthetic access$1000()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    .registers 1

    .line 20
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    return-object p0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1

    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    return p0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1

    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .registers 1

    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    return p0
.end method

.method static synthetic access$1400()Landroid/app/Activity;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/net/Uri;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    return-object v0
.end method

.method static synthetic access$1700()V
    .registers 0

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V
    .registers 5

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    return-void
.end method

.method static synthetic access$1902(I)I
    .registers 1

    .line 20
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    return p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method static synthetic access$2100()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method static synthetic access$2200()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    return v0
.end method

.method static synthetic access$2300(I)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .line 20
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 3

    .line 20
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return p0
.end method

.method static synthetic access$600()V
    .registers 0

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    return-void
.end method

.method static synthetic access$700(ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 2

    .line 20
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->onPrefetchEnvelope(ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    return-void
.end method

.method static synthetic access$800()I
    .registers 1

    .line 20
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    return v0
.end method

.method static synthetic access$900()V
    .registers 0

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handlePrefetchFailure()V

    return-void
.end method

.method public static adjustCeiling(I)Z
    .registers 2

    .line 531
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_22

    if-nez p0, :cond_7

    goto :goto_22

    .line 534
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 535
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 536
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 537
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 538
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 539
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 540
    const/4 p0, 0x1

    return p0

    .line 532
    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method private static applyAuto(IIIIII)Z
    .registers 8

    .line 732
    nop

    .line 733
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    const/4 v1, 0x1

    if-eq v0, p0, :cond_b

    .line 734
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 735
    const/4 p0, 0x1

    goto :goto_c

    .line 733
    :cond_b
    const/4 p0, 0x0

    .line 737
    :goto_c
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    if-eq v0, p1, :cond_14

    .line 738
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 739
    const/4 p0, 0x1

    .line 741
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result p1

    if-eq p1, p2, :cond_1e

    .line 742
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    .line 743
    const/4 p0, 0x1

    .line 745
    :cond_1e
    sget p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    if-eq p1, p3, :cond_26

    .line 746
    invoke-static {p3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 747
    const/4 p0, 0x1

    .line 749
    :cond_26
    sget p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-eq p1, p4, :cond_2e

    .line 750
    invoke-static {p4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzBass(I)V

    .line 751
    const/4 p0, 0x1

    .line 753
    :cond_2e
    sget p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    if-eq p1, p5, :cond_36

    .line 754
    invoke-static {p5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V

    .line 755
    goto :goto_37

    .line 753
    :cond_36
    move v1, p0

    .line 757
    :goto_37
    return v1
.end method

.method private static armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V
    .registers 11

    .line 680
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-eqz v0, :cond_129

    if-eqz p0, :cond_129

    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-gtz v0, :cond_c

    goto/16 :goto_129

    .line 683
    :cond_c
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 684
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->loudRms:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->rhythm:[F

    iget-object v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->tone:[F

    iget v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    iget-wide v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->toneSpanDb:D

    iget-wide v7, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->toneMedianDb:D

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->analyze([F[F[FIDD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    .line 686
    nop

    .line 687
    nop

    .line 688
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 689
    const/4 v0, 0x0

    if-nez p1, :cond_44

    if-eqz p0, :cond_44

    .line 690
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result v2

    add-int/2addr v1, v2

    .line 691
    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v2, :cond_42

    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v2, :cond_42

    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x1

    goto :goto_46

    :cond_42
    const/4 p0, 0x0

    goto :goto_46

    .line 693
    :cond_44
    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_46
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->at(I)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v0

    .line 694
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 695
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    .line 696
    if-nez p1, :cond_a0

    if-nez p0, :cond_5c

    goto :goto_a0

    .line 706
    :cond_5c
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 707
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 708
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 709
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 710
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-gtz p0, :cond_78

    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    :cond_78
    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 711
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 712
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-gtz p0, :cond_cd

    .line 713
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    iget v5, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    iget v6, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    .line 715
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 716
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    goto :goto_cd

    .line 697
    :cond_a0
    :goto_a0
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 698
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 699
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 700
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 701
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 702
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 703
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    iget v4, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    iget v5, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    iget v6, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    .line 719
    :cond_cd
    :goto_cd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "rhythm="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " floor="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " soft="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sens="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " hz="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sections="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    .line 725
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 719
    const-string p1, "auto-tune"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 727
    return-void

    .line 681
    :cond_129
    :goto_129
    return-void
.end method

.method private static beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V
    .registers 9

    .line 934
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 935
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 936
    const v1, 0x7f0d0113

    if-eqz p0, :cond_7d

    if-eqz p1, :cond_7d

    if-eqz p2, :cond_7d

    if-nez p3, :cond_11

    goto :goto_7d

    .line 944
    :cond_11
    :try_start_11
    sput-object p2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 945
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelopeKey:Ljava/lang/String;

    .line 946
    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    .line 947
    invoke-static {p2, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V

    .line 949
    :cond_21
    if-eqz p4, :cond_2f

    .line 950
    new-instance p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {p3, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->setListener(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 951
    invoke-virtual {p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPrepared()V

    goto :goto_37

    .line 953
    :cond_2f
    new-instance p4, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {p4}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {p3, p0, p1, p2, p4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 955
    :goto_37
    sput-object p3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 956
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 957
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 958
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 959
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-lez p0, :cond_47

    .line 960
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    .line 962
    :cond_47
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 963
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 964
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 965
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result p0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 966
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackStarted()V

    .line 967
    const-string p0, "ble-pacing"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "player start leadMs="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_11 .. :try_end_71} :catchall_72

    .line 972
    goto :goto_7c

    .line 968
    :catchall_72
    move-exception p0

    .line 969
    invoke-virtual {p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 970
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 971
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 973
    :goto_7c
    return-void

    .line 937
    :cond_7d
    :goto_7d
    if-eqz p3, :cond_82

    .line 938
    invoke-virtual {p3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 940
    :cond_82
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 941
    return-void
.end method

.method private static beginPrefetchPrepare()V
    .registers 7

    .line 981
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_45

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    if-eqz v0, :cond_45

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    if-nez v0, :cond_d

    goto :goto_45

    .line 984
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    if-eqz v0, :cond_12

    .line 985
    return-void

    .line 987
    :cond_12
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    .line 989
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_19
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    .line 990
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    .line 991
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    sget-object v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    sget-object v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    new-instance v5, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;

    sget v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;-><init>(I)V

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->preparePlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;)V

    .line 993
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 994
    const-string v1, "prefetch"

    const-string v3, "prepare"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_37

    .line 1000
    goto :goto_44

    .line 995
    :catchall_37
    move-exception v1

    .line 996
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    .line 997
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    .line 998
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 999
    const-string v0, "prefetch_prepare"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1001
    :goto_44
    return-void

    .line 982
    :cond_45
    :goto_45
    return-void
.end method

.method private static clampPercent(I)I
    .registers 2

    .line 466
    if-gez p0, :cond_4

    .line 467
    const/4 p0, 0x0

    return p0

    .line 469
    :cond_4
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 470
    return v0

    .line 472
    :cond_9
    return p0
.end method

.method private static clearPrefetch()V
    .registers 2

    .line 1004
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    .line 1005
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 1006
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1007
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    .line 1008
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    .line 1009
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    .line 1010
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    .line 1011
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 1012
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 1013
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 1014
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1015
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1016
    if-eqz v1, :cond_23

    .line 1017
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 1019
    :cond_23
    return-void
.end method

.method private static detachPrefetchOwned()V
    .registers 1

    .line 1023
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    .line 1024
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 1025
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1026
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    .line 1027
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z

    .line 1028
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    .line 1029
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 1030
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 1031
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 1032
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1033
    return-void
.end method

.method static ensureHandler()V
    .registers 2

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

    .line 186
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_66

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v0, :cond_a

    goto :goto_66

    .line 190
    :cond_a
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_1f

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-gez v0, :cond_1c

    .line 192
    return-void

    .line 194
    :cond_1c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 196
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 198
    return-void

    .line 200
    :cond_26
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 201
    if-gez v0, :cond_2b

    .line 202
    return-void

    .line 204
    :cond_2b
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 205
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 206
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 207
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 208
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 209
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v1, :cond_46

    if-lez v2, :cond_3f

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-ne v2, v1, :cond_46

    :cond_3f
    if-lez v3, :cond_45

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    if-ne v3, v1, :cond_46

    .line 210
    :cond_45
    return-void

    .line 212
    :cond_46
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 213
    if-lez v2, :cond_4c

    .line 214
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 216
    :cond_4c
    if-lez v3, :cond_50

    .line 217
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 219
    :cond_50
    const/4 v1, 0x1

    invoke-static {v0, v1, v1, v2, v3}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZII)V

    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 221
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    .line 224
    :cond_62
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 225
    return-void

    .line 187
    :cond_66
    :goto_66
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 188
    return-void
.end method

.method public static followAutoTune(I)V
    .registers 10

    .line 629
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-eqz v0, :cond_f4

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    if-nez v0, :cond_a

    goto/16 :goto_f4

    .line 632
    :cond_a
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->at(I)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v0

    .line 633
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    if-ltz v1, :cond_58

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_58

    .line 634
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 635
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 636
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 637
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 638
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 639
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 640
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    .line 642
    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    iget v4, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    iget v5, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    iget v6, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    iget v7, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    iget v8, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 644
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 646
    :cond_57
    return-void

    .line 648
    :cond_58
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 650
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_69

    const-wide/16 v3, 0x10

    goto :goto_6b

    :cond_69
    sub-long v3, v1, v3

    .line 651
    :goto_6b
    sput-wide v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    .line 652
    const-wide/16 v1, 0x3e8

    const-wide/16 v5, 0x1

    cmp-long p0, v3, v5

    if-gez p0, :cond_77

    .line 653
    move-wide v3, v5

    goto :goto_7c

    .line 654
    :cond_77
    cmp-long p0, v3, v1

    if-lez p0, :cond_7c

    .line 655
    move-wide v3, v1

    .line 657
    :cond_7c
    :goto_7c
    const/high16 p0, 0x42c80000    # 100.0f

    long-to-float v1, v3

    mul-float p0, p0, v1

    const v2, 0x451c4000    # 2500.0f

    div-float/2addr p0, v2

    .line 658
    const/high16 v3, 0x42400000    # 48.0f

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    .line 659
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v2

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 660
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v2

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 661
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v2

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 662
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 663
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 664
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 665
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 666
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v4

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 665
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    move-result p0

    if-eqz p0, :cond_f3

    .line 667
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 669
    :cond_f3
    return-void

    .line 630
    :cond_f4
    :goto_f4
    return-void
.end method

.method private static freezeImpulseOutput()V
    .registers 3

    .line 1371
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 1372
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 1373
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 1374
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 1375
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 1376
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 1377
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 1378
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1379
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->sendImpulseLevel(I)V

    .line 1380
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 1381
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 1382
    return-void
.end method

.method public static getBleLatencyMs()I
    .registers 2

    .line 267
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .line 462
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getFloorPercent()I
    .registers 1

    .line 576
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 552
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getHzBass()I
    .registers 1

    .line 386
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    return v0
.end method

.method public static getHzTreble()I
    .registers 1

    .line 390
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    return v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 548
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getPlaybackDurationMs()I
    .registers 1

    .line 1399
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1400
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

    .line 1394
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1395
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static getPlayerLeadMs()I
    .registers 2

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 273
    const/16 v1, 0x190

    if-le v0, v1, :cond_c

    const/16 v0, 0x190

    :cond_c
    return v0
.end method

.method public static getRhythmMix()I
    .registers 1

    .line 568
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    return v0
.end method

.method public static getSensitivity()I
    .registers 1

    .line 564
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    return v0
.end method

.method public static getSmoothness()I
    .registers 1

    .line 589
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .line 458
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method private static glide(FIF)F
    .registers 4

    .line 672
    int-to-float p1, p1

    .line 673
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_c

    .line 674
    return p1

    .line 676
    :cond_c
    cmpl-float p1, p1, p0

    if-lez p1, :cond_12

    add-float/2addr p0, p2

    goto :goto_13

    :cond_12
    sub-float/2addr p0, p2

    :goto_13
    return p0
.end method

.method private static handlePrefetchFailure()V
    .registers 5

    .line 1046
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 1047
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    if-eqz v1, :cond_18

    .line 1048
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1049
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 1050
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    .line 1051
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 1052
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1053
    return-void

    .line 1055
    :cond_18
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 1056
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 1057
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_44

    sget-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v4, :cond_44

    sget-boolean v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v4, :cond_44

    if-eqz v0, :cond_44

    if-eqz v1, :cond_44

    .line 1058
    add-int/2addr v2, v3

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

    .line 1061
    return-void

    .line 1063
    :cond_44
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    .line 1064
    return-void
.end method

.method private static handleWriteComplete()V
    .registers 8

    .line 244
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_3f

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 247
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

    cmp-long v4, v0, v2

    if-lez v4, :cond_3f

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_3f

    .line 252
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-nez v2, :cond_29

    .line 253
    long-to-double v0, v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    goto :goto_39

    .line 255
    :cond_29
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    long-to-double v0, v0

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    sub-double/2addr v0, v6

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 257
    :goto_39
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    .line 260
    :cond_3f
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v0, :cond_46

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    .line 263
    :cond_46
    return-void
.end method

.method public static hasBleLatencySample()Z
    .registers 1

    .line 761
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isAutoTune()Z
    .registers 1

    .line 597
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    return v0
.end method

.method public static isAwaitingPrefetchedTrack()Z
    .registers 1

    .line 812
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    return v0
.end method

.method private static isMainThread()Z
    .registers 2

    .line 157
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isPlaybackPaused()Z
    .registers 2

    .line 1404
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1405
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

    .line 518
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static isPlayerPreparing()Z
    .registers 1

    .line 807
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 514
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .line 522
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 523
    return v0

    .line 525
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 526
    if-ne v1, p0, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method private static isTargetSenderBusy()Z
    .registers 1

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isTrainingGateOpen()Z
    .registers 1

    .line 139
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method private static limitRise(I)I
    .registers 8

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 444
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_f

    const-wide/16 v2, 0x10

    goto :goto_11

    :cond_f
    sub-long v2, v0, v2

    .line 445
    :goto_11
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 446
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v0, v0, 0x258

    div-int/lit8 v0, v0, 0x64

    .line 447
    if-lez v0, :cond_39

    int-to-float v1, p0

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_39

    .line 448
    const/high16 v4, 0x42c80000    # 100.0f

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v2, v2, v4

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 449
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 450
    goto :goto_3c

    .line 451
    :cond_39
    int-to-float v0, p0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 453
    :goto_3c
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 454
    const/4 v1, 0x1

    if-lez p0, :cond_48

    if-ge v0, v1, :cond_48

    const/4 v0, 0x1

    :cond_48
    return v0
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .registers 5

    .line 766
    if-nez p0, :cond_3

    .line 767
    return-void

    .line 770
    :cond_3
    :try_start_3
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 771
    const-string v0, "sensitivity"

    const/16 v2, 0x14

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 772
    const-string v0, "rhythm_mix"

    const/16 v3, 0x32

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 773
    const-string v0, "floor"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 774
    const-string v0, "smoothness"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 775
    const-string v0, "hz_bass"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 776
    const-string v0, "hz_treble"

    const/16 v1, 0x55

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V

    .line 777
    const-string v0, "auto_tune"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4f

    .line 780
    goto :goto_55

    .line 778
    :catchall_4f
    move-exception p0

    .line 779
    const-string v0, "music_settings_load"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 781
    :goto_55
    return-void
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 476
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 477
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 478
    return-void

    .line 480
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 481
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 482
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 483
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 484
    return-void
.end method

.method public static mixLevels(II)I
    .registers 8

    .line 433
    if-gtz p0, :cond_4

    .line 434
    const/4 p0, 0x0

    return p0

    .line 436
    :cond_4
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 437
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    int-to-double v4, p0

    mul-double v2, v2, v4

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    int-to-double p0, p0

    mul-double v0, v0, p0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    .line 438
    const/4 p0, 0x1

    if-ge p1, p0, :cond_21

    goto :goto_25

    :cond_21
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    :goto_25
    return p0
.end method

.method public static onBleWriteComplete()V
    .registers 2

    .line 232
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 233
    return-void

    .line 235
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 236
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    .line 237
    return-void

    .line 239
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 240
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method public static onPlayerPlaybackStarted()V
    .registers 1

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
    .registers 5

    .line 1067
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    if-eq p0, v0, :cond_5

    .line 1068
    return-void

    .line 1070
    :cond_5
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 1071
    if-eqz p1, :cond_48

    iget v0, p1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-nez v0, :cond_f

    goto :goto_48

    .line 1075
    :cond_f
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    .line 1076
    sput-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 1077
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    if-eqz v0, :cond_3c

    .line 1078
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isCurrentTrack(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_34

    .line 1084
    :cond_24
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 1085
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 1086
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V

    .line 1087
    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    invoke-static {v0, v1, p1, v2, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    .line 1088
    return-void

    .line 1079
    :cond_34
    :goto_34
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1080
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 1081
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 1082
    return-void

    .line 1090
    :cond_3c
    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz p0, :cond_47

    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz p0, :cond_47

    .line 1091
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPrefetchPrepare()V

    .line 1093
    :cond_47
    return-void

    .line 1072
    :cond_48
    :goto_48
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handlePrefetchFailure()V

    .line 1073
    return-void
.end method

.method public static prefetchNext(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5

    .line 820
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_14

    .line 821
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 822
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchRequest;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 823
    return-void

    .line 825
    :cond_14
    if-eqz p0, :cond_8f

    if-nez p1, :cond_1a

    goto/16 :goto_8f

    .line 829
    :cond_1a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 831
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 832
    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    if-nez p0, :cond_41

    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    if-eqz p0, :cond_31

    goto :goto_41

    .line 835
    :cond_31
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz p0, :cond_40

    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz p0, :cond_40

    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz p0, :cond_40

    .line 836
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPrefetchPrepare()V

    .line 838
    :cond_40
    return-void

    .line 833
    :cond_41
    :goto_41
    return-void

    .line 840
    :cond_42
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    .line 841
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    .line 842
    sput-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;

    .line 843
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchContext:Landroid/content/Context;

    .line 844
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchFailures:I

    .line 845
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelopeKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "prefetch"

    if-eqz v0, :cond_75

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_75

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-lez v0, :cond_75

    .line 846
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 847
    const-string p0, "reuse envelope"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz p0, :cond_74

    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz p0, :cond_74

    .line 849
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPrefetchPrepare()V

    .line 851
    :cond_74
    return-void

    .line 853
    :cond_75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    .line 854
    const-string v0, "decode"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I

    invoke-direct {v1, p0, p1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    const-string p0, "music-prefetch"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 856
    return-void

    .line 826
    :cond_8f
    :goto_8f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    .line 827
    return-void
.end method

.method private static pushSoundLevel(I)V
    .registers 5

    .line 311
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v0, :cond_9

    .line 312
    return-void

    .line 314
    :cond_9
    nop

    .line 315
    const/16 v0, 0x64

    if-gez p0, :cond_10

    .line 316
    const/4 p0, 0x0

    goto :goto_14

    .line 317
    :cond_10
    if-le p0, v0, :cond_14

    .line 318
    const/16 p0, 0x64

    .line 320
    :cond_14
    :goto_14
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_3e

    .line 321
    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 322
    const v1, 0x3f7851ec    # 0.97f

    .line 323
    const v2, 0x3f47ae14    # 0.78f

    .line 324
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    cmpl-float v3, p0, v3

    if-lez v3, :cond_29

    goto :goto_2c

    :cond_29
    const v1, 0x3f47ae14    # 0.78f

    .line 325
    :goto_2c
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sub-float/2addr p0, v3

    mul-float p0, p0, v1

    add-float/2addr v2, p0

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 326
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 328
    :cond_3e
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 329
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->limitRise(I)I

    move-result p0

    .line 330
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->soundHz()I

    move-result v0

    .line 332
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne p0, v1, :cond_5b

    if-lez v0, :cond_56

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-ne v0, v1, :cond_5b

    :cond_56
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-gez v1, :cond_5b

    .line 333
    return-void

    .line 335
    :cond_5b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    .line 336
    return-void
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 303
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 304
    return-void
.end method

.method private static releaseCurrentPlayback()V
    .registers 1

    .line 924
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 925
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 926
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 927
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 928
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 929
    return-void
.end method

.method private static releasePlayer()V
    .registers 2

    .line 487
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 488
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 489
    if-eqz v0, :cond_a

    .line 490
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 492
    :cond_a
    return-void
.end method

.method private static releasePrefetchPlayer()V
    .registers 2

    .line 1036
    const/4 v0, 0x0

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

    .line 408
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    if-lez v0, :cond_5

    .line 409
    return-void

    .line 411
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTargetHz()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 412
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTargetPulseWidth()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 413
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 3

    .line 283
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 284
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 285
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 286
    const/4 v2, -0x1

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 287
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 288
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 289
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 290
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 291
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 292
    const/high16 v2, 0x42480000    # 50.0f

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 293
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

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

    .line 417
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 418
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 419
    const/4 v2, -0x1

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 420
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 421
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 422
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 423
    if-gtz v0, :cond_11

    if-lez v1, :cond_15

    .line 424
    :cond_11
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTargetHz(IIZ)V

    .line 426
    :cond_15
    return-void
.end method

.method private static resumeImpulseOutput()V
    .registers 1

    .line 1385
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 1386
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 1387
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 1388
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 1389
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1390
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 1391
    return-void
.end method

.method public static saveSettings(Landroid/content/Context;)V
    .registers 4

    .line 784
    if-nez p0, :cond_3

    .line 785
    return-void

    .line 788
    :cond_3
    :try_start_3
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    .line 789
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "auto_tune"

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    .line 790
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 792
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-nez v0, :cond_4b

    .line 793
    const-string v0, "sensitivity"

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rhythm_mix"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 794
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "floor"

    .line 795
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "smoothness"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 796
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hz_bass"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 797
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hz_treble"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 798
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 800
    :cond_4b
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4f

    .line 803
    goto :goto_55

    .line 801
    :catchall_4f
    move-exception p0

    .line 802
    const-string v0, "music_settings_save"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    :goto_55
    return-void
.end method

.method public static seekPlaybackTo(I)V
    .registers 3

    .line 1409
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1410
    if-eqz v0, :cond_b

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_b

    .line 1411
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->seekTo(I)V

    .line 1413
    :cond_b
    return-void
.end method

.method public static setAutoTune(Z)V
    .registers 3

    .line 606
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    const/4 v1, 0x0

    if-ne v0, p0, :cond_d

    .line 607
    if-eqz p0, :cond_c

    .line 608
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V

    .line 610
    :cond_c
    return-void

    .line 612
    :cond_d
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    .line 613
    if-nez p0, :cond_18

    .line 614
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    .line 615
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 616
    return-void

    .line 618
    :cond_18
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V

    .line 619
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-nez p0, :cond_24

    .line 620
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 622
    :cond_24
    return-void
.end method

.method public static setFloorPercent(I)V
    .registers 1

    .line 581
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 582
    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz p0, :cond_17

    .line 583
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 584
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 586
    :cond_17
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 556
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 557
    return-void
.end method

.method public static setHzBass(I)V
    .registers 3

    .line 395
    if-gtz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_f

    :cond_4
    const/4 v0, 0x5

    const/16 v1, 0x78

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_f
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 396
    if-nez p0, :cond_17

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->restoreProgramHz()V

    goto :goto_1e

    .line 398
    :cond_17
    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz p0, :cond_1e

    .line 399
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    .line 401
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static setHzTreble(I)V
    .registers 2

    .line 404
    const/16 v0, 0x78

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 405
    return-void
.end method

.method public static setRhythmMix(I)V
    .registers 1

    .line 572
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 573
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 1

    .line 560
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 561
    return-void
.end method

.method public static setSmoothness(I)V
    .registers 1

    .line 593
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 594
    return-void
.end method

.method private static setSyncActive(Z)V
    .registers 1

    .line 544
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 545
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 307
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 308
    return-void
.end method

.method private static soundHz()I
    .registers 9

    .line 344
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_99

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-gtz v0, :cond_a

    goto/16 :goto_99

    .line 347
    :cond_a
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 348
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1e

    const v2, 0x3f7851ec    # 0.97f

    goto :goto_21

    :cond_1e
    const v2, 0x3f47ae14    # 0.78f

    .line 349
    :goto_21
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sub-float/2addr v0, v4

    mul-float v0, v0, v2

    add-float/2addr v3, v0

    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 350
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 352
    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_42

    const-wide/16 v4, 0x10

    goto :goto_44

    :cond_42
    sub-long v4, v2, v4

    .line 353
    :goto_44
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    .line 354
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v2, v2, 0x258

    div-int/lit8 v2, v2, 0x64

    .line 355
    if-lez v2, :cond_68

    int-to-float v3, v0

    sget v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    cmpl-float v7, v3, v6

    if-lez v7, :cond_68

    .line 356
    const-wide/16 v7, 0x1

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v0, v4

    mul-float v0, v0, v1

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr v6, v0

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    goto :goto_6b

    .line 358
    :cond_68
    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 360
    :goto_6b
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    .line 361
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    int-to-float v3, v2

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float v2, v2, v0

    div-float/2addr v2, v1

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 363
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-lez v1, :cond_8d

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8d

    .line 364
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 366
    :cond_8d
    const/4 v1, 0x5

    const/16 v2, 0x78

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 345
    :cond_99
    :goto_99
    const/4 v0, -0x1

    return v0
.end method

.method private static soundPw()I
    .registers 4

    .line 371
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 372
    if-gtz v0, :cond_6

    .line 373
    const/4 v0, -0x1

    return v0

    .line 375
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccc    # 0.39999998f

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    mul-float v3, v3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 376
    const/16 v2, 0x32

    int-to-float v3, v0

    mul-float v3, v3, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v3, 0xa

    mul-int/lit8 v1, v1, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 377
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    if-lez v2, :cond_35

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_35

    .line 378
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 380
    :cond_35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 7

    .line 859
    if-eqz p0, :cond_ad

    if-nez p1, :cond_6

    goto/16 :goto_ad

    .line 862
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 864
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    if-eqz v1, :cond_26

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_26

    .line 867
    :cond_1e
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 868
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 869
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clearPrefetch()V

    goto :goto_27

    .line 865
    :cond_26
    :goto_26
    return-void

    .line 871
    :cond_27
    :goto_27
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 872
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchKey:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v1, :cond_8e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 873
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z

    if-eqz v0, :cond_53

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    if-eqz v0, :cond_53

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v1, :cond_53

    .line 874
    nop

    .line 875
    nop

    .line 876
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V

    .line 877
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 878
    const-string v2, "prefetch"

    const-string v4, "handoff prepared"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-static {p0, p1, v1, v0, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    .line 880
    return-void

    .line 882
    :cond_53
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    if-eqz v0, :cond_62

    .line 883
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 884
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 885
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 886
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 887
    return-void

    .line 889
    :cond_62
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-eqz v0, :cond_7f

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    if-nez v1, :cond_7f

    .line 890
    nop

    .line 891
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V

    .line 892
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 893
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 894
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 895
    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    .line 896
    return-void

    .line 898
    :cond_7f
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchInFlight:Z

    if-eqz v0, :cond_8e

    .line 899
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 900
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 901
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 902
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 903
    return-void

    .line 906
    :cond_8e
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releaseCurrentPlayback()V

    .line 907
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 908
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    add-int/2addr v0, v3

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    .line 909
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 910
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    invoke-direct {v1, p0, p1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;I)V

    const-string p0, "music-player-prepare"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 911
    return-void

    .line 860
    :cond_ad
    :goto_ad
    return-void
.end method

.method public static stop()V
    .registers 3

    .line 1329
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 1330
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 1331
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    .line 1332
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePrefetchPlayer()V

    .line 1333
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1334
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 1335
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 1336
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 3

    .line 495
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 496
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 497
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_15

    .line 498
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 499
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    :cond_15
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v1, :cond_3d

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latencyMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " samples="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble-pacing"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_3d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePlayer()V

    .line 506
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 507
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 508
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->restoreProgramHz()V

    .line 509
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 510
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->releaseMaModeForActivePause()V

    .line 511
    return-void
.end method

.method public static stopKeepingNext()V
    .registers 3

    .line 915
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 916
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z

    .line 917
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->prepareToken:I

    .line 918
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 919
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 920
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 921
    return-void
.end method

.method private static submitApplied(I)V
    .registers 2

    .line 167
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    .line 168
    return-void
.end method

.method private static submitApplied(II)V
    .registers 2

    .line 172
    sput p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 173
    if-lez p1, :cond_9

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->soundPw()I

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, -0x1

    :goto_a
    sput p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 174
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 175
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    .line 177
    return-void

    .line 179
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 180
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public static syncWithTrainingState(Z)V
    .registers 4

    .line 1343
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_45

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-nez v0, :cond_9

    goto :goto_45

    .line 1346
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1347
    if-nez v0, :cond_e

    .line 1348
    return-void

    .line 1350
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_30

    .line 1351
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 1352
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 1353
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1354
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 1355
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1356
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 1358
    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 1359
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 1360
    return-void

    .line 1362
    :cond_30
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 1363
    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    if-eqz p0, :cond_44

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_44

    .line 1364
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1365
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 1366
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 1368
    :cond_44
    return-void

    .line 1344
    :cond_45
    :goto_45
    return-void
.end method

.method public static togglePlaybackPause()V
    .registers 3

    .line 1416
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1417
    if-eqz v0, :cond_29

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_29

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v1, :cond_d

    goto :goto_29

    .line 1420
    :cond_d
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 1421
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1422
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 1423
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    goto :goto_25

    .line 1425
    :cond_1d
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1426
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resumeImpulseOutput()V

    .line 1427
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 1429
    :goto_25
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 1430
    return-void

    .line 1418
    :cond_29
    :goto_29
    return-void
.end method
