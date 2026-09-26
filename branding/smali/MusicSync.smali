.class public Lcom/isaigu/gymapp/train/utils/MusicSync;
.super Ljava/lang/Object;
.source "MusicSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;,
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

    .line 75
    const/high16 v2, 0x42480000    # 50.0f

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 76
    const/high16 v3, 0x41a00000    # 20.0f

    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 77
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 78
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 82
    const/4 v3, -0x1

    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 84
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    .line 86
    const/high16 v1, 0x3f000000    # 0.5f

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 87
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 89
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 90
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 91
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 92
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 96
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 98
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    .line 100
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 110
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 112
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 114
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 118
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 125
    new-instance v0, Lcom/isaigu/gymapp/train/utils/MusicSync$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    .line 132
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

.method static synthetic access$1000(I)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 20
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 3

    .line 20
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .line 20
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return p0
.end method

.method static synthetic access$500()V
    .registers 0

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    return-void
.end method

.method static synthetic access$602(I)I
    .registers 1

    .line 20
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    return p0
.end method

.method static synthetic access$700()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    return v0
.end method

.method public static adjustCeiling(I)Z
    .registers 2

    .line 514
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_22

    if-nez p0, :cond_7

    goto :goto_22

    .line 517
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 518
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 519
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 520
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 521
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    .line 522
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 523
    const/4 p0, 0x1

    return p0

    .line 515
    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method private static applyAuto(IIIIII)Z
    .registers 8

    .line 715
    nop

    .line 716
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    const/4 v1, 0x1

    if-eq v0, p0, :cond_b

    .line 717
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 718
    const/4 p0, 0x1

    goto :goto_c

    .line 716
    :cond_b
    const/4 p0, 0x0

    .line 720
    :goto_c
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    if-eq v0, p1, :cond_14

    .line 721
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 722
    const/4 p0, 0x1

    .line 724
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result p1

    if-eq p1, p2, :cond_1e

    .line 725
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    .line 726
    const/4 p0, 0x1

    .line 728
    :cond_1e
    sget p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    if-eq p1, p3, :cond_26

    .line 729
    invoke-static {p3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 730
    const/4 p0, 0x1

    .line 732
    :cond_26
    sget p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-eq p1, p4, :cond_2e

    .line 733
    invoke-static {p4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzBass(I)V

    .line 734
    const/4 p0, 0x1

    .line 736
    :cond_2e
    sget p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    if-eq p1, p5, :cond_36

    .line 737
    invoke-static {p5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V

    .line 738
    goto :goto_37

    .line 736
    :cond_36
    move v1, p0

    .line 740
    :goto_37
    return v1
.end method

.method private static armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V
    .registers 11

    .line 663
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-eqz v0, :cond_129

    if-eqz p0, :cond_129

    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    if-gtz v0, :cond_c

    goto/16 :goto_129

    .line 666
    :cond_c
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 667
    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->loudRms:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->rhythm:[F

    iget-object v3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->tone:[F

    iget v4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    iget-wide v5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->toneSpanDb:D

    iget-wide v7, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->toneMedianDb:D

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->analyze([F[F[FIDD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    .line 669
    nop

    .line 670
    nop

    .line 671
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 672
    const/4 v0, 0x0

    if-nez p1, :cond_44

    if-eqz p0, :cond_44

    .line 673
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resolvePlaybackPositionMs()I

    move-result v1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlayerLeadMs()I

    move-result v2

    add-int/2addr v1, v2

    .line 674
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

    .line 676
    :cond_44
    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_46
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->at(I)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v0

    .line 677
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 678
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    .line 679
    if-nez p1, :cond_a0

    if-nez p0, :cond_5c

    goto :goto_a0

    .line 689
    :cond_5c
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 690
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 691
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 692
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 693
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-gtz p0, :cond_78

    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    :cond_78
    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 694
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 695
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-gtz p0, :cond_cd

    .line 696
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    iget v5, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    iget v6, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    .line 698
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 699
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    goto :goto_cd

    .line 680
    :cond_a0
    :goto_a0
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 681
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 682
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 683
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 684
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 685
    iget p0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    int-to-float p0, p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 686
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    iget v4, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    iget v5, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    iget v6, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    .line 702
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

    .line 708
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 702
    const-string p1, "auto-tune"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 710
    return-void

    .line 664
    :cond_129
    :goto_129
    return-void
.end method

.method private static clampPercent(I)I
    .registers 2

    .line 449
    if-gez p0, :cond_4

    .line 450
    const/4 p0, 0x0

    return p0

    .line 452
    :cond_4
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 453
    return v0

    .line 455
    :cond_9
    return p0
.end method

.method static ensureHandler()V
    .registers 2

    .line 260
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 261
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    .line 263
    :cond_f
    return-void
.end method

.method private static finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 8

    .line 813
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 814
    const v1, 0x7f0d0113

    if-eqz p0, :cond_65

    if-nez p1, :cond_b

    goto :goto_65

    .line 819
    :cond_b
    :try_start_b
    sput-object p2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 820
    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_15

    .line 821
    invoke-static {p2, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V

    .line 823
    :cond_15
    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    .line 824
    new-instance v4, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;-><init>()V

    invoke-virtual {v2, p0, p1, p2, v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->startPlayback(Landroid/content/Context;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;)V

    .line 825
    sput-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 826
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 827
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 828
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 829
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-lez p0, :cond_32

    .line 830
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    .line 832
    :cond_32
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 833
    sput-boolean v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 834
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 835
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result p0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 836
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackStarted()V

    .line 837
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
    :try_end_5c
    .catchall {:try_start_b .. :try_end_5c} :catchall_5d

    .line 841
    goto :goto_64

    .line 838
    :catchall_5d
    move-exception p0

    .line 839
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 840
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 842
    :goto_64
    return-void

    .line 815
    :cond_65
    :goto_65
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 816
    return-void
.end method

.method private static flushPending()V
    .registers 6

    .line 169
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_66

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v0, :cond_a

    goto :goto_66

    .line 173
    :cond_a
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_1f

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-gez v0, :cond_1c

    .line 175
    return-void

    .line 177
    :cond_1c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 179
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 181
    return-void

    .line 183
    :cond_26
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 184
    if-gez v0, :cond_2b

    .line 185
    return-void

    .line 187
    :cond_2b
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 188
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 189
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 190
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 191
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 192
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne v0, v1, :cond_46

    if-lez v2, :cond_3f

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-ne v2, v1, :cond_46

    :cond_3f
    if-lez v3, :cond_45

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    if-ne v3, v1, :cond_46

    .line 193
    :cond_45
    return-void

    .line 195
    :cond_46
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 196
    if-lez v2, :cond_4c

    .line 197
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 199
    :cond_4c
    if-lez v3, :cond_50

    .line 200
    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 202
    :cond_50
    const/4 v1, 0x1

    invoke-static {v0, v1, v1, v2, v3}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZII)V

    .line 203
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 204
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    .line 207
    :cond_62
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 208
    return-void

    .line 170
    :cond_66
    :goto_66
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 171
    return-void
.end method

.method public static followAutoTune(I)V
    .registers 10

    .line 612
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-eqz v0, :cond_f4

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    if-nez v0, :cond_a

    goto/16 :goto_f4

    .line 615
    :cond_a
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->at(I)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object v0

    .line 616
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    if-ltz v1, :cond_58

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x7d0

    if-le v1, v2, :cond_58

    .line 617
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 618
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 619
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 620
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 621
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 622
    iget v1, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    int-to-float v1, v1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 623
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    .line 625
    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    iget v4, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    iget v5, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    iget v6, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    iget v7, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    iget v8, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 627
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 629
    :cond_57
    return-void

    .line 631
    :cond_58
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoLastPosMs:I

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 633
    sget-wide v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_69

    const-wide/16 v3, 0x10

    goto :goto_6b

    :cond_69
    sub-long v3, v1, v3

    .line 634
    :goto_6b
    sput-wide v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSlewLastMs:J

    .line 635
    const-wide/16 v1, 0x3e8

    const-wide/16 v5, 0x1

    cmp-long p0, v3, v5

    if-gez p0, :cond_77

    .line 636
    move-wide v3, v5

    goto :goto_7c

    .line 637
    :cond_77
    cmp-long p0, v3, v1

    if-lez p0, :cond_7c

    .line 638
    move-wide v3, v1

    .line 640
    :cond_7c
    :goto_7c
    const/high16 p0, 0x42c80000    # 100.0f

    long-to-float v1, v3

    mul-float p0, p0, v1

    const v2, 0x451c4000    # 2500.0f

    div-float/2addr p0, v2

    .line 641
    const/high16 v3, 0x42400000    # 48.0f

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    .line 642
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v2

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSens:F

    .line 643
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v2

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoRhythm:F

    .line 644
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result v2

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoFloor:F

    .line 645
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    iget v3, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    invoke-static {v2, v3, p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoSmooth:F

    .line 646
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    iget v2, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    .line 647
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    iget v0, v0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->glide(FIF)F

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    .line 648
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

    .line 649
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzBass:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v4

    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoHzTreble:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 648
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/MusicSync;->applyAuto(IIIIII)Z

    move-result p0

    if-eqz p0, :cond_f3

    .line 650
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 652
    :cond_f3
    return-void

    .line 613
    :cond_f4
    :goto_f4
    return-void
.end method

.method private static freezeImpulseOutput()V
    .registers 3

    .line 967
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 968
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 969
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 970
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 971
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 972
    sput v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 973
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 974
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 975
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->sendImpulseLevel(I)V

    .line 976
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 977
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V

    .line 978
    return-void
.end method

.method public static getBleLatencyMs()I
    .registers 2

    .line 250
    sget-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static getEffectiveStrength()I
    .registers 1

    .line 445
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v0

    return v0
.end method

.method public static getFloorPercent()I
    .registers 1

    .line 559
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v0

    return v0
.end method

.method public static getHostActivity()Landroid/app/Activity;
    .registers 1

    .line 535
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getHzBass()I
    .registers 1

    .line 369
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    return v0
.end method

.method public static getHzTreble()I
    .registers 1

    .line 373
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    return v0
.end method

.method public static getLiveStrength()I
    .registers 1

    .line 531
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    return v0
.end method

.method public static getPlaybackDurationMs()I
    .registers 1

    .line 995
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 996
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

    .line 990
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 991
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

    .line 255
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getBleLatencyMs()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 256
    const/16 v1, 0x190

    if-le v0, v1, :cond_c

    const/16 v0, 0x190

    :cond_c
    return v0
.end method

.method public static getRhythmMix()I
    .registers 1

    .line 551
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    return v0
.end method

.method public static getSensitivity()I
    .registers 1

    .line 547
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    return v0
.end method

.method public static getSmoothness()I
    .registers 1

    .line 572
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    return v0
.end method

.method public static getStrengthCeiling()I
    .registers 1

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v0

    return v0
.end method

.method private static glide(FIF)F
    .registers 4

    .line 655
    int-to-float p1, p1

    .line 656
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_c

    .line 657
    return p1

    .line 659
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

.method private static handleWriteComplete()V
    .registers 8

    .line 227
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    if-eqz v0, :cond_3f

    .line 228
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTargetSenderBusy()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 230
    return-void

    .line 232
    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->sendStartMs:J

    sub-long/2addr v0, v2

    .line 234
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3f

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_3f

    .line 235
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-nez v2, :cond_29

    .line 236
    long-to-double v0, v0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    goto :goto_39

    .line 238
    :cond_29
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    long-to-double v0, v0

    sget-wide v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    sub-double/2addr v0, v6

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencyMs:D

    .line 240
    :goto_39
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    .line 243
    :cond_3f
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-ltz v0, :cond_46

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    .line 246
    :cond_46
    return-void
.end method

.method public static hasBleLatencySample()Z
    .registers 1

    .line 744
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

    .line 580
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    return v0
.end method

.method private static isMainThread()Z
    .registers 2

    .line 140
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

    .line 1000
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1001
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

    .line 501
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    return v0
.end method

.method public static isPlayerPreparing()Z
    .registers 1

    .line 790
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    return v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 497
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    return v0
.end method

.method public static isTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .line 505
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 506
    return v0

    .line 508
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 509
    if-ne v1, p0, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method private static isTargetSenderBusy()Z
    .registers 1

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 145
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

    .line 122
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    return v0
.end method

.method private static limitRise(I)I
    .registers 8

    .line 426
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 427
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_f

    const-wide/16 v2, 0x10

    goto :goto_11

    :cond_f
    sub-long v2, v0, v2

    .line 428
    :goto_11
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 429
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v0, v0, 0x258

    div-int/lit8 v0, v0, 0x64

    .line 430
    if-lez v0, :cond_39

    int-to-float v1, p0

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_39

    .line 431
    const/high16 v4, 0x42c80000    # 100.0f

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v2, v2, v4

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 432
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 433
    goto :goto_3c

    .line 434
    :cond_39
    int-to-float v0, p0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 436
    :goto_3c
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 437
    const/4 v1, 0x1

    if-lez p0, :cond_48

    if-ge v0, v1, :cond_48

    const/4 v0, 0x1

    :cond_48
    return v0
.end method

.method public static loadSettings(Landroid/content/Context;)V
    .registers 5

    .line 749
    if-nez p0, :cond_3

    .line 750
    return-void

    .line 753
    :cond_3
    :try_start_3
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 754
    const-string v0, "sensitivity"

    const/16 v2, 0x14

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 755
    const-string v0, "rhythm_mix"

    const/16 v3, 0x32

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 756
    const-string v0, "floor"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 757
    const-string v0, "smoothness"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 758
    const-string v0, "hz_bass"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 759
    const-string v0, "hz_treble"

    const/16 v1, 0x55

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V

    .line 760
    const-string v0, "auto_tune"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4f

    .line 763
    goto :goto_55

    .line 761
    :catchall_4f
    move-exception p0

    .line 762
    const-string v0, "music_settings_load"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    :goto_55
    return-void
.end method

.method private static maybeUpdateUi()V
    .registers 7

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 460
    sget-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x50

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 461
    return-void

    .line 463
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 464
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getEffectiveStrength()I

    move-result v0

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getStrengthCeiling()I

    move-result v1

    .line 466
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showActive(II)V

    .line 467
    return-void
.end method

.method public static mixLevels(II)I
    .registers 8

    .line 416
    if-gtz p0, :cond_4

    .line 417
    const/4 p0, 0x0

    return p0

    .line 419
    :cond_4
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 420
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

    .line 421
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

    .line 215
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 216
    return-void

    .line 218
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 219
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->handleWriteComplete()V

    .line 220
    return-void

    .line 222
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 223
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method public static onPlayerPlaybackStarted()V
    .registers 1

    .line 845
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 846
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 847
    return-void
.end method

.method private static pushSoundLevel(I)V
    .registers 5

    .line 294
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    if-nez v0, :cond_9

    .line 295
    return-void

    .line 297
    :cond_9
    nop

    .line 298
    const/16 v0, 0x64

    if-gez p0, :cond_10

    .line 299
    const/4 p0, 0x0

    goto :goto_14

    .line 300
    :cond_10
    if-le p0, v0, :cond_14

    .line 301
    const/16 p0, 0x64

    .line 303
    :cond_14
    :goto_14
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_3e

    .line 304
    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 305
    const v1, 0x3f7851ec    # 0.97f

    .line 306
    const v2, 0x3f47ae14    # 0.78f

    .line 307
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    cmpl-float v3, p0, v3

    if-lez v3, :cond_29

    goto :goto_2c

    :cond_29
    const v1, 0x3f47ae14    # 0.78f

    .line 308
    :goto_2c
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    sub-float/2addr p0, v3

    mul-float p0, p0, v1

    add-float/2addr v2, p0

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 309
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 311
    :cond_3e
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 312
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->limitRise(I)I

    move-result p0

    .line 313
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    .line 314
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->soundHz()I

    move-result v0

    .line 315
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    if-ne p0, v1, :cond_5b

    if-lez v0, :cond_56

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-ne v0, v1, :cond_5b

    :cond_56
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    if-gez v1, :cond_5b

    .line 316
    return-void

    .line 318
    :cond_5b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    .line 319
    return-void
.end method

.method public static registerUi(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 286
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 287
    return-void
.end method

.method private static releasePlayer()V
    .registers 2

    .line 470
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 471
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 472
    if-eqz v0, :cond_a

    .line 473
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 475
    :cond_a
    return-void
.end method

.method private static rememberProgramHz()V
    .registers 1

    .line 391
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    if-lez v0, :cond_5

    .line 392
    return-void

    .line 394
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTargetHz()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 395
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getTargetPulseWidth()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 396
    return-void
.end method

.method private static resetAudioLevels()V
    .registers 3

    .line 266
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    .line 267
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLastMs:J

    .line 268
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastUiMs:J

    .line 269
    const/4 v2, -0x1

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 270
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 271
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 272
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 273
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 274
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 275
    const/high16 v2, 0x42480000    # 50.0f

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 276
    sput-wide v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    .line 277
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 278
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->awaitingAck:Z

    .line 279
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 280
    return-void
.end method

.method private static restoreProgramHz()V
    .registers 3

    .line 400
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 401
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 402
    const/4 v2, -0x1

    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramHz:I

    .line 403
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 404
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 405
    sput v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 406
    if-gtz v0, :cond_11

    if-lez v1, :cond_15

    .line 407
    :cond_11
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTargetHz(IIZ)V

    .line 409
    :cond_15
    return-void
.end method

.method private static resumeImpulseOutput()V
    .registers 1

    .line 981
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 982
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 983
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 984
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 985
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 986
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->resetApplied()V

    .line 987
    return-void
.end method

.method public static saveSettings(Landroid/content/Context;)V
    .registers 4

    .line 767
    if-nez p0, :cond_3

    .line 768
    return-void

    .line 771
    :cond_3
    :try_start_3
    const-string v0, "music_sync_settings"

    const/4 v1, 0x0

    .line 772
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "auto_tune"

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    .line 773
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 775
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    if-nez v0, :cond_4b

    .line 776
    const-string v0, "sensitivity"

    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rhythm_mix"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 777
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "floor"

    .line 778
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorPercent()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "smoothness"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 779
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hz_bass"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    .line 780
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hz_treble"

    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 781
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 783
    :cond_4b
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4f

    .line 786
    goto :goto_55

    .line 784
    :catchall_4f
    move-exception p0

    .line 785
    const-string v0, "music_settings_save"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 787
    :goto_55
    return-void
.end method

.method public static seekPlaybackTo(I)V
    .registers 3

    .line 1005
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1006
    if-eqz v0, :cond_b

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_b

    .line 1007
    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->seekTo(I)V

    .line 1009
    :cond_b
    return-void
.end method

.method public static setAutoTune(Z)V
    .registers 3

    .line 589
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    const/4 v1, 0x0

    if-ne v0, p0, :cond_d

    .line 590
    if-eqz p0, :cond_c

    .line 591
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V

    .line 593
    :cond_c
    return-void

    .line 595
    :cond_d
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoTune:Z

    .line 596
    if-nez p0, :cond_18

    .line 597
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->autoCurve:Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;

    .line 598
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 599
    return-void

    .line 601
    :cond_18
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->armAutoTune(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Z)V

    .line 602
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    if-nez p0, :cond_24

    .line 603
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onAutoTuneApplied()V

    .line 605
    :cond_24
    return-void
.end method

.method public static setFloorPercent(I)V
    .registers 1

    .line 564
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setFloorPercent(I)V

    .line 565
    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz p0, :cond_17

    .line 566
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I

    .line 567
    sget p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->slewLevel:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->scaleFromSound(I)I

    move-result p0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(I)V

    .line 569
    :cond_17
    return-void
.end method

.method public static setHostActivity(Landroid/app/Activity;)V
    .registers 1

    .line 539
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 540
    return-void
.end method

.method public static setHzBass(I)V
    .registers 3

    .line 378
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

    .line 379
    if-nez p0, :cond_17

    .line 380
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->restoreProgramHz()V

    goto :goto_1e

    .line 381
    :cond_17
    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz p0, :cond_1e

    .line 382
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->rememberProgramHz()V

    .line 384
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static setHzTreble(I)V
    .registers 2

    .line 387
    const/16 v0, 0x78

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzTreble:I

    .line 388
    return-void
.end method

.method public static setRhythmMix(I)V
    .registers 1

    .line 555
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->rhythmMix:I

    .line 556
    return-void
.end method

.method public static setSensitivity(I)V
    .registers 1

    .line 543
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->sensitivity:I

    .line 544
    return-void
.end method

.method public static setSmoothness(I)V
    .registers 1

    .line 576
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    .line 577
    return-void
.end method

.method private static setSyncActive(Z)V
    .registers 1

    .line 527
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setSyncActive(Z)V

    .line 528
    return-void
.end method

.method public static setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 290
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 291
    return-void
.end method

.method private static soundHz()I
    .registers 9

    .line 327
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v0, :cond_99

    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hzBass:I

    if-gtz v0, :cond_a

    goto/16 :goto_99

    .line 330
    :cond_a
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->clampPercent(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 331
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1e

    const v2, 0x3f7851ec    # 0.97f

    goto :goto_21

    :cond_1e
    const v2, 0x3f47ae14    # 0.78f

    .line 332
    :goto_21
    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sget v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    sub-float/2addr v0, v4

    mul-float v0, v0, v2

    add-float/2addr v3, v0

    sput v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    .line 333
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedTone:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 335
    sget-wide v4, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_42

    const-wide/16 v4, 0x10

    goto :goto_44

    :cond_42
    sub-long v4, v2, v4

    .line 336
    :goto_44
    sput-wide v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlewLastMs:J

    .line 337
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->smoothness:I

    mul-int/lit16 v2, v2, 0x258

    div-int/lit8 v2, v2, 0x64

    .line 338
    if-lez v2, :cond_68

    int-to-float v3, v0

    sget v6, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    cmpl-float v7, v3, v6

    if-lez v7, :cond_68

    .line 339
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

    .line 341
    :cond_68
    int-to-float v0, v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    .line 343
    :goto_6b
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->toneSlew:F

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    .line 344
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

    .line 346
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    if-lez v1, :cond_8d

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8d

    .line 347
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedHz:I

    .line 349
    :cond_8d
    const/4 v1, 0x5

    const/16 v2, 0x78

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 328
    :cond_99
    :goto_99
    const/4 v0, -0x1

    return v0
.end method

.method private static soundPw()I
    .registers 4

    .line 354
    sget v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->savedProgramPw:I

    .line 355
    if-gtz v0, :cond_6

    .line 356
    const/4 v0, -0x1

    return v0

    .line 358
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccc    # 0.39999998f

    sget v3, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastTone:F

    mul-float v3, v3, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 359
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

    .line 360
    sget v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    if-lez v2, :cond_35

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_35

    .line 361
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedPw:I

    .line 363
    :cond_35
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 4

    .line 794
    if-eqz p0, :cond_31

    if-nez p1, :cond_5

    goto :goto_31

    .line 797
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    if-eqz v0, :cond_a

    .line 798
    return-void

    .line 800
    :cond_a
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;

    .line 801
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 802
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 803
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode()V

    .line 804
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 805
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerSmoothedSound:F

    .line 806
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 807
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showPreparing()V

    .line 808
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    const-string p0, "music-player-prepare"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 809
    return-void

    .line 795
    :cond_31
    :goto_31
    return-void
.end method

.method public static stop()V
    .registers 1

    .line 928
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z

    .line 929
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 930
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 931
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V

    .line 932
    return-void
.end method

.method private static stopCaptureOnly()V
    .registers 3

    .line 478
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    .line 479
    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    .line 480
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_15

    .line 481
    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 482
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->writeCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    :cond_15
    sget v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->bleLatencySamples:I

    if-lez v1, :cond_3d

    .line 485
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

    .line 488
    :cond_3d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->releasePlayer()V

    .line 489
    sput v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->liveStrength:I

    .line 490
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resetAudioLevels()V

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->restoreProgramHz()V

    .line 492
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSyncActive(Z)V

    .line 493
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->releaseMaModeForActivePause()V

    .line 494
    return-void
.end method

.method private static submitApplied(I)V
    .registers 2

    .line 150
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->submitApplied(II)V

    .line 151
    return-void
.end method

.method private static submitApplied(II)V
    .registers 2

    .line 155
    sput p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingHz:I

    .line 156
    if-lez p1, :cond_9

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->soundPw()I

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, -0x1

    :goto_a
    sput p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingPw:I

    .line 157
    sput p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I

    .line 158
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isMainThread()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 159
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushPending()V

    .line 160
    return-void

    .line 162
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 163
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object p1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public static syncWithTrainingState(Z)V
    .registers 4

    .line 939
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_45

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-nez v0, :cond_9

    goto :goto_45

    .line 942
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 943
    if-nez v0, :cond_e

    .line 944
    return-void

    .line 946
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_30

    .line 947
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 948
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 949
    sget-object p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->flushRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 950
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 951
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 952
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 954
    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    .line 955
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 956
    return-void

    .line 958
    :cond_30
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z

    .line 959
    sget-boolean p0, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    if-eqz p0, :cond_44

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_44

    .line 960
    sput-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 961
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 962
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 964
    :cond_44
    return-void

    .line 940
    :cond_45
    :goto_45
    return-void
.end method

.method public static togglePlaybackPause()V
    .registers 3

    .line 1012
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1013
    if-eqz v0, :cond_29

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z

    if-eqz v1, :cond_29

    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v1, :cond_d

    goto :goto_29

    .line 1016
    :cond_d
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->isPlaying()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 1017
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1018
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->pausePlayback()V

    .line 1019
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->freezeImpulseOutput()V

    goto :goto_25

    .line 1021
    :cond_1d
    sput-boolean v2, Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z

    .line 1022
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->resumeImpulseOutput()V

    .line 1023
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->resumePlayback()V

    .line 1025
    :goto_25
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 1026
    return-void

    .line 1014
    :cond_29
    :goto_29
    return-void
.end method
