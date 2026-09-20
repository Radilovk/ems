.class public final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundClearListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;
    }
.end annotation


# static fields
.field static final ALL_STOP_ID:I = 0x7f09003c

.field private static final AUDIO_STREAM:I = 0x3

.field static final BUTTON_ID:I = 0x7f090230

.field private static final COUNTDOWN_TEXT_SP:F = 42.0f

.field static final DIALOG_LAYOUT_ID:I = 0x7f0b0079

.field private static final ID_ACTIVATE:I = 0x7f090236

.field private static final ID_COUNTDOWN:I = 0x7f090239

.field private static final ID_LOOPS:I = 0x7f090233

.field private static final ID_LOOPS_MINUS:I = 0x7f090234

.field private static final ID_LOOPS_PLUS:I = 0x7f090235

.field private static final ID_LOOP_LABEL:I = 0x7f09023a

.field private static final ID_MINUTES:I = 0x7f090231

.field private static final ID_RING:I = 0x7f090243

.field private static final ID_SECONDS:I = 0x7f090232

.field private static final ID_SOUND_CLEAR:I = 0x7f090244

.field private static final ID_SOUND_FILE:I = 0x7f09023b

.field private static final ID_SOUND_FILE_ROW:I = 0x7f090245

.field private static final ID_SOUND_PICK:I = 0x7f09023d

.field private static final ID_SOUND_PREVIEW:I = 0x7f09023c

.field private static final ID_SOUND_SPINNER:I = 0x7f09023e

.field private static final ID_STATUS:I = 0x7f090237

.field private static final OPAQUE_DIALOG_BG:I = 0x7f080069

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007a

.field private static final OVERLAY_SIZE_DP:I = 0x40

.field static final PICK_SIGNAL:I = 0x4256

.field private static final RING_MAX:I = 0x64

.field private static final SOUND_BEEP:I = 0x1

.field private static final SOUND_BELL:I = 0x3

.field private static final SOUND_CHIME:I = 0x2

.field private static final SOUND_CUSTOM:I = 0x4

.field private static final SOUND_OFF:I = 0x0

.field static final SPINNER_ITEM_LAYOUT_ID:I = 0x7f0b007b

.field private static final STR_ERROR:I = 0x7f0d0128

.field private static final STR_INVALID_DURATION:I = 0x7f0d0127

.field private static final STR_SOUND_BEEP:I = 0x7f0d012d

.field private static final STR_SOUND_BELL:I = 0x7f0d012f

.field private static final STR_SOUND_CHIME:I = 0x7f0d012e

.field private static final STR_SOUND_CUSTOM:I = 0x7f0d0130

.field private static final STR_SOUND_NO_FILE:I = 0x7f0d0133

.field private static final STR_SOUND_OFF:I = 0x7f0d012c

.field private static final STR_STATUS_ARMED:I = 0x7f0d0121

.field private static final STR_STATUS_IDLE:I = 0x7f0d0120

.field private static final STR_STATUS_RUNNING:I = 0x7f0d0122

.field private static final TICK_MS:J = 0xfaL

.field private static allStopButton:Landroid/view/View;

.field private static armed:Z

.field private static configContent:Landroid/view/View;

.field private static configDialog:Landroid/support/v7/app/AlertDialog;

.field private static countdownRunning:Z

.field private static countdownView:Landroid/widget/TextView;

.field private static currentLoop:I

.field private static customSignalUri:Landroid/net/Uri;

.field private static final handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static ignoreSpinnerCallback:Z

.field private static intervalMs:J

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastTickRealtime:J

.field private static loopLabelView:Landroid/widget/TextView;

.field private static loopsInput:Landroid/widget/EditText;

.field private static maxLoops:I

.field private static minutesView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static overlayContent:Landroid/view/View;

.field private static overlayDialog:Landroid/support/v7/app/AlertDialog;

.field private static overlayTouchDx:F

.field private static overlayTouchDy:F

.field private static overlayVisible:Z

.field private static panelRoot:Landroid/view/View;

.field private static pickingSignal:Z

.field private static remainingMs:J

.field private static ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

.field private static secondsView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static selectedSound:I

.field private static signalPlayer:Landroid/media/MediaPlayer;

.field private static soundBeforePick:I

.field private static soundClearBtn:Landroid/view/View;

.field private static soundFileRow:Landroid/view/View;

.field private static soundFileView:Landroid/widget/TextView;

.field private static soundPickBtn:Landroid/view/View;

.field private static soundSpinner:Landroid/widget/Spinner;

.field private static statusView:Landroid/widget/TextView;

.field private static final tickRunnable:Ljava/lang/Runnable;

.field private static trainingRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    .line 119
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 120
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 124
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method static synthetic access$002(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 36
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$1000()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    return-void
.end method

.method static synthetic access$1100()Landroid/widget/Spinner;
    .registers 1

    .line 36
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/view/View;)V
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 36
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1502(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 36
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clearConfigRefs()V

    return-void
.end method

.method static synthetic access$1700()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 36
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1800()F
    .registers 1

    .line 36
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$1802(F)F
    .registers 1

    .line 36
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$1900()F
    .registers 1

    .line 36
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$1902(F)F
    .registers 1

    .line 36
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$2000(II)V
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$2100()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->finishArm()V

    return-void
.end method

.method static synthetic access$2200()Landroid/view/View;
    .registers 1

    .line 36
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    return-void
.end method

.method static synthetic access$2400()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    return-void
.end method

.method static synthetic access$2500()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    return v0
.end method

.method static synthetic access$2600()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    return v0
.end method

.method static synthetic access$2700()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    return v0
.end method

.method static synthetic access$2800()J
    .registers 2

    .line 36
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide v0
.end method

.method static synthetic access$2802(J)J
    .registers 2

    .line 36
    sput-wide p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide p0
.end method

.method static synthetic access$2900()J
    .registers 2

    .line 36
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$2922(J)J
    .registers 4

    .line 36
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    sub-long/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$300(I)V
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->adjustLoops(I)V

    return-void
.end method

.method static synthetic access$3000()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V

    return-void
.end method

.method static synthetic access$3100()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    return-void
.end method

.method static synthetic access$3200()Ljava/lang/Runnable;
    .registers 1

    .line 36
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/os/Handler;
    .registers 1

    .line 36
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .line 36
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    return p0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 36
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1

    .line 36
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return p0
.end method

.method static synthetic access$600()V
    .registers 0

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .line 36
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .registers 1

    .line 36
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(I)V
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    return-void
.end method

.method private static adjustLoops(I)V
    .registers 2

    .line 813
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result v0

    add-int/2addr v0, p0

    .line 814
    if-gez v0, :cond_8

    .line 815
    const/4 v0, 0x0

    .line 817
    :cond_8
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    if-eqz p0, :cond_13

    .line 818
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 820
    :cond_13
    return-void
.end method

.method private static applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V
    .registers 2

    .line 537
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 541
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 543
    goto :goto_15

    .line 542
    :catchall_14
    move-exception p0

    .line 544
    :goto_15
    return-void

    .line 538
    :cond_16
    :goto_16
    return-void
.end method

.method private static armFromConfig()V
    .registers 7

    .line 239
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I

    move-result v0

    .line 240
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {v3, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I

    move-result v2

    .line 241
    if-nez v0, :cond_1a

    if-nez v2, :cond_1a

    .line 242
    const v0, 0x7f0d0127

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 243
    return-void

    .line 245
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v3

    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 246
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2e

    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v3, :cond_2e

    .line 247
    const v0, 0x7f0d0133

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 248
    return-void

    .line 250
    :cond_2e
    int-to-long v3, v0

    const-wide/16 v5, 0x3c

    mul-long v3, v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    sput-wide v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 251
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 252
    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 253
    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 254
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 255
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 256
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 257
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 258
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 259
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 137
    if-eqz p0, :cond_2f

    if-nez p1, :cond_5

    goto :goto_2f

    .line 140
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    .line 141
    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 142
    const p1, 0x7f09003c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    .line 143
    const p1, 0x7f090230

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 144
    if-nez p0, :cond_1c

    .line 145
    return-void

    .line 147
    :cond_1c
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 148
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 150
    new-instance p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;

    invoke-direct {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void

    .line 138
    :cond_2f
    :goto_2f
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 856
    if-nez p0, :cond_3

    .line 857
    return-void

    .line 859
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 860
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 861
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    return-void
.end method

.method private static clearConfigRefs()V
    .registers 1

    .line 509
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 510
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 511
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    .line 512
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    .line 513
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    .line 514
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileRow:Landroid/view/View;

    .line 515
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    .line 516
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    .line 517
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    .line 518
    return-void
.end method

.method private static configureDurationPicker(Lcom/isaigu/gymapp/widget/AmountView;IIII)V
    .registers 5

    .line 842
    if-nez p0, :cond_3

    .line 843
    return-void

    .line 846
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 847
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 848
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 849
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0, p4}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    .line 852
    goto :goto_16

    .line 851
    :catchall_15
    move-exception p0

    .line 853
    :goto_16
    return-void
.end method

.method private static dismissConfigDialog(Z)V
    .registers 2

    .line 495
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 497
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 499
    goto :goto_9

    .line 498
    :catchall_8
    move-exception v0

    .line 500
    :goto_9
    if-nez p0, :cond_17

    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    if-nez p0, :cond_17

    .line 501
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 502
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 503
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clearConfigRefs()V

    .line 506
    :cond_17
    return-void
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 2

    .line 521
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 523
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 525
    goto :goto_9

    .line 524
    :catchall_8
    move-exception v0

    .line 526
    :goto_9
    if-nez p0, :cond_16

    .line 527
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 528
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 529
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 530
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 531
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 534
    :cond_16
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 865
    if-nez p0, :cond_3

    .line 866
    return p1

    .line 868
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 869
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static finishArm()V
    .registers 4

    .line 263
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 264
    return-void

    .line 266
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showOverlayDialog()Z

    move-result v0

    const-string v1, "interval_timer"

    if-nez v0, :cond_1e

    .line 267
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 268
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 269
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 270
    const-string v0, "overlay dialog failed"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 273
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 274
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "armed intervalMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " loops="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sound="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_56

    .line 279
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    .line 281
    :cond_56
    return-void
.end method

.method private static formatRemaining(J)Ljava/lang/String;
    .registers 6

    .line 788
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 789
    move-wide p0, v0

    .line 791
    :cond_7
    const-wide/16 v0, 0x3e7

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    .line 792
    const-wide/16 v0, 0x3c

    div-long v2, p0, v0

    .line 793
    rem-long/2addr p0, v0

    .line 794
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%02d:%02d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .line 564
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 565
    return-void

    .line 567
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 568
    if-nez v0, :cond_c

    .line 569
    return-void

    .line 572
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 573
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 574
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 575
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    .line 578
    goto :goto_1e

    .line 576
    :catchall_18
    move-exception p0

    .line 577
    const-string p1, "interval_timer_overlay_move"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    :goto_1e
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 155
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    .line 156
    const/16 v0, 0x4256

    if-eq p0, v0, :cond_b

    .line 157
    return-void

    .line 159
    :cond_b
    const/4 p0, -0x1

    if-ne p1, p0, :cond_55

    if-nez p2, :cond_11

    goto :goto_55

    .line 164
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 165
    if-nez p0, :cond_1f

    .line 166
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 168
    return-void

    .line 170
    :cond_1f
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 171
    const/4 p1, 0x4

    sput p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 173
    const/4 p1, 0x0

    :try_start_25
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 174
    if-eqz p1, :cond_43

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_44

    and-int/lit8 p2, p2, 0x3

    .line 178
    if-eqz p2, :cond_43

    .line 180
    :try_start_35
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    .line 183
    goto :goto_43

    .line 181
    :catchall_3d
    move-exception p0

    .line 182
    :try_start_3e
    const-string p1, "interval_timer_uri_persist"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_44

    .line 188
    :cond_43
    :goto_43
    goto :goto_4a

    .line 186
    :catchall_44
    move-exception p0

    .line 187
    const-string p1, "interval_timer_uri_grant"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    :goto_4a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 190
    const-string p0, "interval_timer"

    const-string p1, "custom signal uri set"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 160
    :cond_55
    :goto_55
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 162
    return-void
.end method

.method private static onIntervalFinished()V
    .registers 2

    .line 665
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-lez v0, :cond_c

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lt v1, v0, :cond_c

    .line 666
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 667
    return-void

    .line 669
    :cond_c
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 670
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 671
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 672
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 673
    return-void
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 4

    .line 194
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 195
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_a

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 197
    return-void

    .line 199
    :cond_a
    if-eqz p0, :cond_35

    .line 200
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez p0, :cond_43

    .line 201
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    const/4 v0, 0x1

    if-gtz p0, :cond_1e

    .line 202
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 203
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 204
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 206
    :cond_1e
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 208
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43

    .line 211
    :cond_35
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz p0, :cond_43

    .line 212
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 213
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_43
    :goto_43
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 217
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 218
    return-void
.end method

.method public static onTrainingStop()V
    .registers 0

    .line 221
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    .line 222
    return-void
.end method

.method private static playBuiltInTone(I)V
    .registers 5

    .line 692
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    if-eq p0, v1, :cond_a

    .line 703
    return-void

    .line 700
    :cond_a
    const/16 p0, 0x5d

    .line 701
    goto :goto_13

    .line 697
    :cond_d
    const/16 p0, 0x19

    .line 698
    goto :goto_13

    .line 694
    :cond_10
    const/16 p0, 0x18

    .line 695
    nop

    .line 706
    :goto_13
    :try_start_13
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 707
    const/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 708
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v2, 0x226

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_2c

    .line 711
    goto :goto_32

    .line 709
    :catchall_2c
    move-exception p0

    .line 710
    const-string v0, "interval_timer_tone"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    :goto_32
    return-void
.end method

.method private static playCustomSignal()V
    .registers 3

    .line 715
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 716
    return-void

    .line 718
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 719
    if-nez v0, :cond_d

    .line 720
    return-void

    .line 722
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 724
    :try_start_10
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 725
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 726
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 727
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 728
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 729
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 730
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 731
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_48

    .line 735
    goto :goto_51

    .line 732
    :catchall_48
    move-exception v0

    .line 733
    const-string v1, "interval_timer_custom_signal"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 734
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 736
    :goto_51
    return-void
.end method

.method private static playSignal()V
    .registers 2

    .line 680
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-nez v0, :cond_5

    .line 681
    return-void

    .line 683
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 684
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playCustomSignal()V

    .line 685
    return-void

    .line 687
    :cond_c
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBuiltInTone(I)V

    .line 688
    return-void
.end method

.method private static readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I
    .registers 3

    .line 823
    if-nez p0, :cond_3

    .line 824
    return p1

    .line 827
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 828
    if-ge p0, p1, :cond_a

    .line 829
    return p1

    .line 831
    :cond_a
    if-le p0, p2, :cond_d

    .line 832
    return p2

    .line 834
    :cond_d
    return p0

    .line 835
    :catchall_e
    move-exception p0

    .line 836
    return p1
.end method

.method private static readLoopsInput()I
    .registers 3

    .line 798
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    if-nez v0, :cond_7

    .line 799
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    return v0

    .line 802
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1b

    .line 804
    return v1

    .line 806
    :cond_1b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_24

    return v0

    .line 807
    :catchall_24
    move-exception v0

    .line 808
    return v1
.end method

.method private static readSoundSelection()I
    .registers 1

    .line 408
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    .line 409
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0

    .line 411
    :cond_9
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return v0
.end method

.method private static refreshOverlayRing()V
    .registers 7

    .line 601
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_2e

    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    goto :goto_2e

    .line 605
    :cond_d
    :try_start_d
    sget-wide v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_15

    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 606
    :cond_15
    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 607
    if-gez v1, :cond_20

    .line 608
    const/4 v1, 0x0

    .line 610
    :cond_20
    const/16 v0, 0x64

    if-le v1, v0, :cond_26

    .line 611
    const/16 v1, 0x64

    .line 613
    :cond_26
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setCurProcess(I)V
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_2c

    .line 615
    goto :goto_2d

    .line 614
    :catchall_2c
    move-exception v0

    .line 616
    :goto_2d
    return-void

    .line 602
    :cond_2e
    :goto_2e
    return-void
.end method

.method private static refreshOverlayText()V
    .registers 6

    .line 582
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 583
    return-void

    .line 585
    :cond_5
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_e

    goto :goto_10

    :cond_e
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    :goto_10
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatRemaining(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_69

    .line 587
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_25

    .line 588
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69

    .line 589
    :cond_25
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    const-string v1, "#"

    const/4 v2, 0x1

    if-gtz v0, :cond_46

    .line 590
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_31

    move v2, v0

    .line 591
    :cond_31
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    goto :goto_69

    .line 593
    :cond_46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_4b

    move v2, v0

    .line 594
    :cond_4b
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :cond_69
    :goto_69
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayRing()V

    .line 598
    return-void
.end method

.method private static refreshSoundUi()V
    .registers 6

    .line 632
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 633
    :goto_a
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    if-eqz v3, :cond_1e

    .line 634
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 635
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    if-eqz v0, :cond_18

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1b

    :cond_18
    const v4, 0x3ee66666    # 0.45f

    :goto_1b
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 637
    :cond_1e
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileRow:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_2d

    .line 638
    if-eqz v0, :cond_28

    const/4 v5, 0x0

    goto :goto_2a

    :cond_28
    const/16 v5, 0x8

    :goto_2a
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 640
    :cond_2d
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    if-eqz v3, :cond_5c

    if-eqz v0, :cond_5c

    .line 641
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v5, :cond_3e

    .line 642
    const v5, 0x7f0d0133

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5c

    .line 644
    :cond_3e
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 645
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4b

    goto :goto_51

    .line 648
    :cond_4b
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5c

    .line 646
    :cond_51
    :goto_51
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    :cond_5c
    :goto_5c
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    if-eqz v3, :cond_66

    .line 653
    if-eqz v0, :cond_63

    const/4 v4, 0x0

    :cond_63
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 655
    :cond_66
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_7f

    .line 656
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 657
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz v1, :cond_7d

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_7d

    .line 658
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 660
    :cond_7d
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 662
    :cond_7f
    return-void
.end method

.method private static refreshStatusText()V
    .registers 2

    .line 619
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 620
    return-void

    .line 622
    :cond_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_10

    .line 623
    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 624
    :cond_10
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v1, :cond_1b

    .line 625
    const v1, 0x7f0d0122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 627
    :cond_1b
    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 629
    :goto_21
    return-void
.end method

.method private static releaseSignalPlayer()V
    .registers 1

    .line 739
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 740
    return-void

    .line 743
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 745
    goto :goto_a

    .line 744
    :catchall_9
    move-exception v0

    .line 747
    :goto_a
    :try_start_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 749
    goto :goto_11

    .line 748
    :catchall_10
    move-exception v0

    .line 750
    :goto_11
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 751
    return-void
.end method

.method private static resetAll()V
    .registers 3

    .line 225
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 226
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 227
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 228
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 229
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 230
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 231
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 233
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 234
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 235
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 236
    return-void
.end method

.method private static resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 300
    if-eqz p0, :cond_3

    .line 301
    return-object p0

    .line 303
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_10

    .line 304
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0

    .line 306
    :cond_10
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_21

    .line 307
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 308
    if-eqz p0, :cond_21

    .line 309
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 310
    return-object p0

    .line 313
    :cond_21
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_32

    .line 314
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 315
    if-eqz p0, :cond_32

    .line 316
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 317
    return-object p0

    .line 320
    :cond_32
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz p0, :cond_3f

    .line 321
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 322
    if-eqz p0, :cond_3f

    .line 323
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 324
    return-object p0

    .line 327
    :cond_3f
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private static restoreConfigDialogAfterPick()V
    .registers 2

    .line 481
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 482
    if-nez v0, :cond_5

    .line 483
    return-void

    .line 486
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_e

    .line 487
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 491
    :cond_e
    goto :goto_15

    .line 489
    :catchall_f
    move-exception v0

    .line 490
    const-string v1, "interval_timer_dialog_restore"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    :goto_15
    return-void
.end method

.method private static setupSoundSpinner(Landroid/app/Activity;)V
    .registers 7

    .line 385
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_5

    .line 386
    return-void

    .line 388
    :cond_5
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f0d012c

    .line 389
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d012d

    .line 390
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const v5, 0x7f0d012e

    .line 391
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const v5, 0x7f0d012f

    .line 392
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const v5, 0x7f0d0130

    .line 393
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 395
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0b007b

    invoke-direct {v2, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 397
    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 398
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 399
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 400
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz p0, :cond_57

    if-ge p0, v0, :cond_57

    .line 401
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 403
    :cond_57
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 404
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 405
    return-void
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 7

    .line 331
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 332
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 335
    :try_start_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_12a

    .line 340
    nop

    .line 341
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 342
    const v2, 0x7f090231

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 343
    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 344
    const v2, 0x7f090233

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    .line 345
    const v2, 0x7f090237

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    .line 346
    const v2, 0x7f09023b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    .line 347
    const v2, 0x7f090245

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileRow:Landroid/view/View;

    .line 348
    const v2, 0x7f09023e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    .line 349
    const v2, 0x7f09023d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    .line 350
    const v2, 0x7f090244

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    .line 351
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configureDurationPicker(Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 352
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v5, 0x5

    invoke-static {v2, v0, v3, v5, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configureDurationPicker(Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 353
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    if-eqz v0, :cond_93

    .line 354
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 355
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_93
    const v0, 0x7f090234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;-><init>(I)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 358
    const v0, 0x7f090235

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;-><init>(I)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 359
    const v0, 0x7f090236

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 360
    const v0, 0x7f09023c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 361
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 362
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundClearListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundClearListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->setupSoundSpinner(Landroid/app/Activity;)V

    .line 364
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 365
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 366
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 368
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 369
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 371
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 372
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 373
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 375
    :try_start_110
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_122

    .line 377
    const/16 v1, 0x140

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->setLayout(II)V
    :try_end_122
    .catchall {:try_start_110 .. :try_end_122} :catchall_123

    .line 380
    :cond_122
    goto :goto_124

    .line 379
    :catchall_123
    move-exception p0

    .line 381
    :goto_124
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 382
    return-void

    .line 336
    :catchall_12a
    move-exception p0

    .line 337
    const-string v0, "interval_timer_config"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    const p0, 0x7f0d0128

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 339
    return-void
.end method

.method private static showOverlayDialog()Z
    .registers 7

    .line 415
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    .line 416
    const/4 v2, 0x0

    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_e0

    .line 419
    :cond_10
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 420
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 423
    :try_start_15
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007a

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_d9

    .line 427
    nop

    .line 428
    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 429
    const v4, 0x7f090243

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 430
    const v4, 0x7f090239

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 431
    const v4, 0x7f09023a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 433
    :try_start_44
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v4, :cond_4f

    .line 434
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxProcess(I)V

    .line 436
    :cond_4f
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v4, :cond_5b

    .line 437
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x42280000    # 42.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5c

    .line 440
    :cond_5b
    goto :goto_5d

    .line 439
    :catchall_5c
    move-exception v4

    .line 441
    :goto_5d
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 442
    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 443
    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 445
    :try_start_6c
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    invoke-virtual {v5, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 449
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 450
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 451
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 452
    if-nez v3, :cond_8b

    .line 453
    return v2

    .line 455
    :cond_8b
    const v5, 0x106000d

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 456
    const v5, 0x800033

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    .line 457
    const/16 v5, 0x40

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 458
    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 459
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 460
    const/16 v6, 0x14

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 461
    const/16 v6, 0x58

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 462
    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x20

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 465
    invoke-virtual {v3, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 466
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 467
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    :try_end_c7
    .catchall {:try_start_6c .. :try_end_c7} :catchall_c8

    .line 468
    return v4

    .line 469
    :catchall_c8
    move-exception v1

    .line 470
    const-string v3, "interval_timer_overlay_show"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 472
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 473
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 474
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 475
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 476
    return v2

    .line 424
    :catchall_d9
    move-exception v0

    .line 425
    const-string v1, "interval_timer_overlay_inflate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    return v2

    .line 417
    :cond_e0
    :goto_e0
    return v2
.end method

.method private static startSignalPick(Landroid/view/View;)V
    .registers 5

    .line 755
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 756
    const v0, 0x7f0d0128

    if-nez p0, :cond_d

    .line 757
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 758
    return-void

    .line 760
    :cond_d
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 761
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 762
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1b

    .line 763
    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 766
    :cond_1b
    :try_start_1b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 770
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 771
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 772
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_47

    if-eqz v2, :cond_41

    .line 774
    :try_start_3a
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_40

    .line 776
    goto :goto_41

    .line 775
    :catchall_40
    move-exception v2

    .line 778
    :cond_41
    :goto_41
    const/16 v2, 0x4256

    :try_start_43
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 784
    goto :goto_56

    .line 779
    :catchall_47
    move-exception p0

    .line 780
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 781
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    .line 782
    const-string v1, "interval_timer_pick"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 783
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 785
    :goto_56
    return-void
.end method

.method private static toast(I)V
    .registers 3

    .line 873
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 874
    if-nez v0, :cond_8

    .line 875
    return-void

    .line 878
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    .line 880
    goto :goto_12

    .line 879
    :catchall_11
    move-exception p0

    .line 881
    :goto_12
    return-void
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 285
    if-nez v0, :cond_15

    .line 286
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 287
    const-string v0, "interval_timer"

    const-string v1, "toggle: no activity"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void

    .line 290
    :cond_15
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 291
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_1f

    .line 292
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 293
    return-void

    .line 295
    :cond_1f
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 297
    return-void
.end method

.method private static triggerAllStop()V
    .registers 2

    .line 676
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 677
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .line 547
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 548
    return-void

    .line 551
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v1, :cond_19

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    if-eqz v1, :cond_19

    .line 552
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 553
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_26

    .line 555
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 556
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    .line 560
    :cond_26
    :goto_26
    goto :goto_2d

    .line 558
    :catchall_27
    move-exception v0

    .line 559
    const-string v1, "interval_timer_overlay_visibility"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    :goto_2d
    return-void
.end method
