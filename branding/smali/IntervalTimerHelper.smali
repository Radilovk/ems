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
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;,
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

.field static final BUTTON_ID:I = 0x7f090230

.field static final DIALOG_LAYOUT_ID:I = 0x7f0b0079

.field private static final ID_ACTIVATE:I = 0x7f090236

.field private static final ID_COUNTDOWN:I = 0x7f090239

.field private static final ID_LOOPS:I = 0x7f090233

.field private static final ID_LOOPS_MINUS:I = 0x7f090234

.field private static final ID_LOOPS_PLUS:I = 0x7f090235

.field private static final ID_LOOP_LABEL:I = 0x7f09023a

.field private static final ID_MINUTES:I = 0x7f090231

.field private static final ID_SECONDS:I = 0x7f090232

.field private static final ID_SOUND_BEEP:I = 0x7f09023f

.field private static final ID_SOUND_BELL:I = 0x7f090241

.field private static final ID_SOUND_CHIME:I = 0x7f090240

.field private static final ID_SOUND_CUSTOM:I = 0x7f090242

.field private static final ID_SOUND_FILE:I = 0x7f09023b

.field private static final ID_SOUND_OFF:I = 0x7f09023e

.field private static final ID_SOUND_PICK:I = 0x7f09023d

.field private static final ID_SOUND_PREVIEW:I = 0x7f09023c

.field private static final ID_STATUS:I = 0x7f090237

.field private static final OPAQUE_DIALOG_BG:I = 0x7f080069

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007a

.field static final PICK_SIGNAL:I = 0x4256

.field private static final SOUND_BEEP:I = 0x1

.field private static final SOUND_BELL:I = 0x3

.field private static final SOUND_CHIME:I = 0x2

.field private static final SOUND_CUSTOM:I = 0x4

.field private static final SOUND_OFF:I = 0x0

.field private static final STR_ERROR:I = 0x7f0d0128

.field private static final STR_INVALID_DURATION:I = 0x7f0d0127

.field private static final STR_SOUND_NO_FILE:I = 0x7f0d0133

.field private static final STR_STATUS_ARMED:I = 0x7f0d0121

.field private static final STR_STATUS_IDLE:I = 0x7f0d0120

.field private static final STR_STATUS_RUNNING:I = 0x7f0d0122

.field private static final TICK_MS:J = 0xfaL

.field private static allStopButton:Landroid/view/View;

.field private static armed:Z

.field private static chipBgRes:I

.field private static chipSelectedRes:I

.field private static configContent:Landroid/view/View;

.field private static configDialog:Landroid/support/v7/app/AlertDialog;

.field private static countdownRunning:Z

.field private static countdownView:Landroid/widget/TextView;

.field private static currentLoop:I

.field private static customSignalUri:Landroid/net/Uri;

.field private static final handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

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

.field private static secondsView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static selectedSound:I

.field private static signalPlayer:Landroid/media/MediaPlayer;

.field private static soundBeepBtn:Landroid/view/View;

.field private static soundBellBtn:Landroid/view/View;

.field private static soundChimeBtn:Landroid/view/View;

.field private static soundCustomBtn:Landroid/view/View;

.field private static soundFileView:Landroid/widget/TextView;

.field private static soundOffBtn:Landroid/view/View;

.field private static statusView:Landroid/widget/TextView;

.field private static final tickRunnable:Ljava/lang/Runnable;

.field private static trainingRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    .line 104
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 108
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method static synthetic access$002(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$1000()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    return-void
.end method

.method static synthetic access$1102(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/isaigu/gymapp/widget/AmountView;)Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/isaigu/gymapp/widget/AmountView;)Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    return-object p0
.end method

.method static synthetic access$1402(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1502(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1602(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1702(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundOffBtn:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1802(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeepBtn:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1902(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundChimeBtn:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$2002(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBellBtn:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2102(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundCustomBtn:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2300()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$2302(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$2400()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$2402(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$2500(II)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$2600()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->finishArm()V

    return-void
.end method

.method static synthetic access$2700()Landroid/view/View;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    return-void
.end method

.method static synthetic access$2900()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    return-void
.end method

.method static synthetic access$300(I)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->adjustLoops(I)V

    return-void
.end method

.method static synthetic access$3000()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    return v0
.end method

.method static synthetic access$3100()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    return v0
.end method

.method static synthetic access$3200()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    return v0
.end method

.method static synthetic access$3300()J
    .registers 2

    .line 32
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide v0
.end method

.method static synthetic access$3302(J)J
    .registers 2

    .line 32
    sput-wide p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide p0
.end method

.method static synthetic access$3400()J
    .registers 2

    .line 32
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$3422(J)J
    .registers 4

    .line 32
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    sub-long/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$3500()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V

    return-void
.end method

.method static synthetic access$3600()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    return-void
.end method

.method static synthetic access$3700()Ljava/lang/Runnable;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800()Landroid/os/Handler;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(I)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    return-void
.end method

.method static synthetic access$600(I)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectSound(I)V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    return-void
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    return p0
.end method

.method static synthetic access$900()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method private static adjustLoops(I)V
    .registers 2

    .line 707
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result v0

    add-int/2addr v0, p0

    .line 708
    if-gez v0, :cond_8

    .line 709
    const/4 v0, 0x0

    .line 711
    :cond_8
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    if-eqz p0, :cond_13

    .line 712
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :cond_13
    return-void
.end method

.method private static applyChipStyle(Landroid/view/View;Z)V
    .registers 3

    .line 562
    if-eqz p0, :cond_12

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipBgRes:I

    if-nez v0, :cond_7

    goto :goto_12

    .line 566
    :cond_7
    if-eqz p1, :cond_e

    :try_start_9
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipSelectedRes:I

    goto :goto_e

    .line 567
    :catchall_c
    move-exception p0

    goto :goto_11

    .line 566
    :cond_e
    :goto_e
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_c

    .line 569
    :goto_11
    return-void

    .line 563
    :cond_12
    :goto_12
    return-void
.end method

.method private static applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V
    .registers 2

    .line 466
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 470
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 472
    goto :goto_15

    .line 471
    :catchall_14
    move-exception p0

    .line 473
    :goto_15
    return-void

    .line 467
    :cond_16
    :goto_16
    return-void
.end method

.method private static armFromConfig()V
    .registers 7

    .line 219
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I

    move-result v0

    .line 220
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {v3, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I

    move-result v2

    .line 221
    if-nez v0, :cond_1a

    if-nez v2, :cond_1a

    .line 222
    const v0, 0x7f0d0127

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 223
    return-void

    .line 225
    :cond_1a
    sget v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2a

    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v3, :cond_2a

    .line 226
    const v0, 0x7f0d0133

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 227
    return-void

    .line 229
    :cond_2a
    int-to-long v3, v0

    const-wide/16 v5, 0x3c

    mul-long v3, v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    sput-wide v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 230
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 231
    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 232
    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 233
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 234
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 235
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 236
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 237
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 238
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 124
    if-eqz p0, :cond_2f

    if-nez p1, :cond_5

    goto :goto_2f

    .line 127
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    .line 128
    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 129
    const p1, 0x7f09003c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    .line 130
    const p1, 0x7f090230

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 131
    if-nez p0, :cond_1c

    .line 132
    return-void

    .line 134
    :cond_1c
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 137
    new-instance p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;

    invoke-direct {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void

    .line 125
    :cond_2f
    :goto_2f
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 750
    if-nez p0, :cond_3

    .line 751
    return-void

    .line 753
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 754
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 755
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    return-void
.end method

.method private static configureDurationPicker(Lcom/isaigu/gymapp/widget/AmountView;IIII)V
    .registers 5

    .line 736
    if-nez p0, :cond_3

    .line 737
    return-void

    .line 740
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 741
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 742
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 743
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0, p4}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    .line 746
    goto :goto_16

    .line 745
    :catchall_15
    move-exception p0

    .line 747
    :goto_16
    return-void
.end method

.method private static dismissConfigDialog(Z)V
    .registers 2

    .line 438
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 440
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 442
    goto :goto_9

    .line 441
    :catchall_8
    move-exception v0

    .line 443
    :goto_9
    if-nez p0, :cond_10

    .line 444
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 445
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 448
    :cond_10
    return-void
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 2

    .line 451
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_14

    .line 453
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 455
    goto :goto_9

    .line 454
    :catchall_8
    move-exception v0

    .line 456
    :goto_9
    if-nez p0, :cond_14

    .line 457
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 458
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 459
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 460
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 463
    :cond_14
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 759
    if-nez p0, :cond_3

    .line 760
    return p1

    .line 762
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 763
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static finishArm()V
    .registers 4

    .line 242
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 243
    return-void

    .line 245
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showOverlayDialog()Z

    move-result v0

    const-string v1, "interval_timer"

    if-nez v0, :cond_1e

    .line 246
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 247
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 248
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 249
    const-string v0, "overlay dialog failed"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 252
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 253
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 254
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

    .line 257
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_56

    .line 258
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    .line 260
    :cond_56
    return-void
.end method

.method private static formatRemaining(J)Ljava/lang/String;
    .registers 6

    .line 682
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 683
    move-wide p0, v0

    .line 685
    :cond_7
    const-wide/16 v0, 0x3e7

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    .line 686
    const-wide/16 v0, 0x3c

    div-long v2, p0, v0

    .line 687
    rem-long/2addr p0, v0

    .line 688
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

    .line 493
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 494
    return-void

    .line 496
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 497
    if-nez v0, :cond_c

    .line 498
    return-void

    .line 501
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 502
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 503
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 504
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    .line 507
    goto :goto_1e

    .line 505
    :catchall_18
    move-exception p0

    .line 506
    const-string p1, "interval_timer_overlay_move"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    :goto_1e
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 142
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    .line 143
    const/16 v0, 0x4256

    if-ne p0, v0, :cond_4b

    const/4 p0, -0x1

    if-ne p1, p0, :cond_4b

    if-nez p2, :cond_10

    goto :goto_4b

    .line 146
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 147
    if-nez p0, :cond_17

    .line 148
    return-void

    .line 150
    :cond_17
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 151
    const/4 p1, 0x4

    sput p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 153
    const/4 p1, 0x0

    :try_start_1d
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p1

    .line 154
    if-eqz p1, :cond_39

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_3a

    and-int/lit8 p2, p2, 0x3

    .line 158
    if-eqz p2, :cond_39

    .line 160
    :try_start_2b
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_33

    .line 163
    goto :goto_39

    .line 161
    :catchall_33
    move-exception p0

    .line 162
    :try_start_34
    const-string p1, "interval_timer_uri_persist"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3a

    .line 168
    :cond_39
    :goto_39
    goto :goto_40

    .line 166
    :catchall_3a
    move-exception p0

    .line 167
    const-string p1, "interval_timer_uri_grant"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    :goto_40
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 170
    const-string p0, "interval_timer"

    const-string p1, "custom signal uri set"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 144
    :cond_4b
    :goto_4b
    return-void
.end method

.method private static onIntervalFinished()V
    .registers 2

    .line 594
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-lez v0, :cond_c

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lt v1, v0, :cond_c

    .line 595
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 596
    return-void

    .line 598
    :cond_c
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 599
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 600
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 601
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 602
    return-void
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 4

    .line 174
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 175
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_a

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 177
    return-void

    .line 179
    :cond_a
    if-eqz p0, :cond_35

    .line 180
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez p0, :cond_43

    .line 181
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    const/4 v0, 0x1

    if-gtz p0, :cond_1e

    .line 182
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 183
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 184
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 186
    :cond_1e
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 188
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43

    .line 191
    :cond_35
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz p0, :cond_43

    .line 192
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 193
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    :cond_43
    :goto_43
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 197
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 198
    return-void
.end method

.method public static onTrainingStop()V
    .registers 0

    .line 201
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    .line 202
    return-void
.end method

.method private static playBuiltInTone(I)V
    .registers 5

    .line 621
    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_a

    .line 632
    return-void

    .line 629
    :cond_a
    const/16 p0, 0x5d

    .line 630
    goto :goto_13

    .line 626
    :cond_d
    const/16 p0, 0x19

    .line 627
    goto :goto_13

    .line 623
    :cond_10
    const/16 p0, 0x18

    .line 624
    nop

    .line 635
    :goto_13
    :try_start_13
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 636
    const/16 v1, 0x15e

    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 637
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    .line 640
    goto :goto_33

    .line 638
    :catchall_2d
    move-exception p0

    .line 639
    const-string v0, "interval_timer_tone"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    :goto_33
    return-void
.end method

.method private static playCustomSignal()V
    .registers 3

    .line 644
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 645
    return-void

    .line 647
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 648
    if-nez v0, :cond_d

    .line 649
    return-void

    .line 651
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 653
    :try_start_10
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 654
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 655
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 656
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 657
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 658
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 659
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_41

    .line 663
    goto :goto_4a

    .line 660
    :catchall_41
    move-exception v0

    .line 661
    const-string v1, "interval_timer_custom_signal"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 664
    :goto_4a
    return-void
.end method

.method private static playSignal()V
    .registers 2

    .line 609
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-nez v0, :cond_5

    .line 610
    return-void

    .line 612
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 613
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playCustomSignal()V

    .line 614
    return-void

    .line 616
    :cond_c
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBuiltInTone(I)V

    .line 617
    return-void
.end method

.method private static readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I
    .registers 3

    .line 717
    if-nez p0, :cond_3

    .line 718
    return p1

    .line 721
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 722
    if-ge p0, p1, :cond_a

    .line 723
    return p1

    .line 725
    :cond_a
    if-le p0, p2, :cond_d

    .line 726
    return p2

    .line 728
    :cond_d
    return p0

    .line 729
    :catchall_e
    move-exception p0

    .line 730
    return p1
.end method

.method private static readLoopsInput()I
    .registers 3

    .line 692
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    if-nez v0, :cond_7

    .line 693
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    return v0

    .line 696
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1b

    .line 698
    return v1

    .line 700
    :cond_1b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_24

    return v0

    .line 701
    :catchall_24
    move-exception v0

    .line 702
    return v1
.end method

.method private static refreshOverlayText()V
    .registers 6

    .line 511
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 512
    return-void

    .line 514
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

    .line 515
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_69

    .line 516
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_25

    .line 517
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69

    .line 518
    :cond_25
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    const-string v1, "#"

    const/4 v2, 0x1

    if-gtz v0, :cond_46

    .line 519
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_31

    move v2, v0

    .line 520
    :cond_31
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    goto :goto_69

    .line 522
    :cond_46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_4b

    move v2, v0

    .line 523
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

    .line 526
    :cond_69
    :goto_69
    return-void
.end method

.method private static refreshSoundUi()V
    .registers 5

    .line 542
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundOffBtn:Landroid/view/View;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyChipStyle(Landroid/view/View;Z)V

    .line 543
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeepBtn:Landroid/view/View;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v1, v3, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyChipStyle(Landroid/view/View;Z)V

    .line 544
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundChimeBtn:Landroid/view/View;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyChipStyle(Landroid/view/View;Z)V

    .line 545
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBellBtn:Landroid/view/View;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyChipStyle(Landroid/view/View;Z)V

    .line 546
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundCustomBtn:Landroid/view/View;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_3c

    const/4 v2, 0x1

    :cond_3c
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyChipStyle(Landroid/view/View;Z)V

    .line 547
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    if-eqz v0, :cond_6c

    .line 548
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v1, :cond_4e

    .line 549
    const v1, 0x7f0d0133

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6c

    .line 551
    :cond_4e
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_61

    .line 555
    :cond_5b
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    .line 553
    :cond_61
    :goto_61
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_6c
    :goto_6c
    return-void
.end method

.method private static refreshStatusText()V
    .registers 2

    .line 529
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 530
    return-void

    .line 532
    :cond_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_10

    .line 533
    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 534
    :cond_10
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v1, :cond_1b

    .line 535
    const v1, 0x7f0d0122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 537
    :cond_1b
    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 539
    :goto_21
    return-void
.end method

.method private static releaseSignalPlayer()V
    .registers 1

    .line 667
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 668
    return-void

    .line 671
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 673
    goto :goto_a

    .line 672
    :catchall_9
    move-exception v0

    .line 675
    :goto_a
    :try_start_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 677
    goto :goto_11

    .line 676
    :catchall_10
    move-exception v0

    .line 678
    :goto_11
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 679
    return-void
.end method

.method private static resetAll()V
    .registers 3

    .line 205
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 206
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 207
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 208
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 209
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 210
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 211
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 213
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 214
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 216
    return-void
.end method

.method private static resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 279
    if-eqz p0, :cond_3

    .line 280
    return-object p0

    .line 282
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_10

    .line 283
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0

    .line 285
    :cond_10
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_21

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 287
    if-eqz p0, :cond_21

    .line 288
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 289
    return-object p0

    .line 292
    :cond_21
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_32

    .line 293
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 294
    if-eqz p0, :cond_32

    .line 295
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 296
    return-object p0

    .line 299
    :cond_32
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz p0, :cond_3f

    .line 300
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 301
    if-eqz p0, :cond_3f

    .line 302
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 303
    return-object p0

    .line 306
    :cond_3f
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private static resolveChipDrawableIds(Landroid/app/Activity;)V
    .registers 5

    .line 572
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipBgRes:I

    if-eqz v0, :cond_9

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipSelectedRes:I

    if-eqz v0, :cond_9

    .line 573
    return-void

    .line 575
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "interval_timer_sound_chip"

    const-string v3, "drawable"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipBgRes:I

    .line 578
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "light_green_button_drawable_r30"

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipSelectedRes:I

    .line 580
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipBgRes:I

    if-nez p0, :cond_30

    .line 581
    const p0, 0x7f080069

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipBgRes:I

    .line 583
    :cond_30
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipSelectedRes:I

    if-nez p0, :cond_38

    .line 584
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipBgRes:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->chipSelectedRes:I

    .line 586
    :cond_38
    return-void
.end method

.method private static restoreConfigDialogAfterPick()V
    .registers 2

    .line 424
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 425
    if-nez v0, :cond_5

    .line 426
    return-void

    .line 429
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_e

    .line 430
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 434
    :cond_e
    goto :goto_15

    .line 432
    :catchall_f
    move-exception v0

    .line 433
    const-string v1, "interval_timer_dialog_restore"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    :goto_15
    return-void
.end method

.method private static selectSound(I)V
    .registers 1

    .line 589
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 590
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 591
    return-void
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 8

    .line 310
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 311
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 312
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveChipDrawableIds(Landroid/app/Activity;)V

    .line 315
    :try_start_9
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_160

    .line 320
    nop

    .line 321
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 322
    const v2, 0x7f090231

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 323
    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 324
    const v2, 0x7f090233

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    .line 325
    const v2, 0x7f090237

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    .line 326
    const v2, 0x7f09023b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    .line 327
    const v2, 0x7f09023e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundOffBtn:Landroid/view/View;

    .line 328
    const v2, 0x7f09023f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeepBtn:Landroid/view/View;

    .line 329
    const v2, 0x7f090240

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundChimeBtn:Landroid/view/View;

    .line 330
    const v2, 0x7f090241

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBellBtn:Landroid/view/View;

    .line 331
    const v2, 0x7f090242

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundCustomBtn:Landroid/view/View;

    .line 332
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configureDurationPicker(Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 333
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v5, 0x5

    invoke-static {v2, v0, v3, v5, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configureDurationPicker(Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 334
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    const/4 v3, 0x2

    if-eqz v2, :cond_9d

    .line 335
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 336
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    sget v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_9d
    const v2, 0x7f090234

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;-><init>(I)V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 339
    const v2, 0x7f090235

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;

    invoke-direct {v5, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;-><init>(I)V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 340
    const v2, 0x7f090236

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;-><init>()V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 341
    const v2, 0x7f09023c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;-><init>()V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 342
    const v2, 0x7f09023d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;-><init>()V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 343
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundOffBtn:Landroid/view/View;

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;

    invoke-direct {v5, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;-><init>(I)V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 344
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeepBtn:Landroid/view/View;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;-><init>(I)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 345
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundChimeBtn:Landroid/view/View;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;-><init>(I)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 346
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBellBtn:Landroid/view/View;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;-><init>(I)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 347
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundCustomBtn:Landroid/view/View;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSelectListener;-><init>(I)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 349
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 350
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 353
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 355
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 356
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 357
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 359
    :try_start_146
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_158

    .line 361
    const/16 v1, 0x154

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->setLayout(II)V
    :try_end_158
    .catchall {:try_start_146 .. :try_end_158} :catchall_159

    .line 364
    :cond_158
    goto :goto_15a

    .line 363
    :catchall_159
    move-exception p0

    .line 365
    :goto_15a
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 366
    return-void

    .line 316
    :catchall_160
    move-exception p0

    .line 317
    const-string v0, "interval_timer_config"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    const p0, 0x7f0d0128

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 319
    return-void
.end method

.method private static showOverlayDialog()Z
    .registers 7

    .line 369
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    .line 370
    const/4 v2, 0x0

    if-eqz v1, :cond_b2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_b2

    .line 373
    :cond_10
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 374
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 377
    :try_start_15
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007a

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_ab

    .line 381
    nop

    .line 382
    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 383
    const v4, 0x7f090239

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 384
    const v4, 0x7f09023a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 385
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 386
    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 387
    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 389
    :try_start_48
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    invoke-virtual {v5, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 392
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 393
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 394
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 395
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 396
    if-nez v3, :cond_67

    .line 397
    return v2

    .line 399
    :cond_67
    const v5, 0x106000d

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 400
    const v5, 0x800033

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    .line 401
    const/4 v5, -0x2

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 404
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 405
    const/16 v6, 0x14

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 406
    const/16 v6, 0x58

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 407
    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x20

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 410
    invoke-virtual {v3, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 411
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_9b
    .catchall {:try_start_48 .. :try_end_9b} :catchall_9c

    .line 412
    return v4

    .line 413
    :catchall_9c
    move-exception v1

    .line 414
    const-string v3, "interval_timer_overlay_show"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 416
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 417
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 418
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 419
    return v2

    .line 378
    :catchall_ab
    move-exception v0

    .line 379
    const-string v1, "interval_timer_overlay_inflate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    return v2

    .line 371
    :cond_b2
    :goto_b2
    return v2
.end method

.method private static toast(I)V
    .registers 3

    .line 767
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 768
    if-nez v0, :cond_8

    .line 769
    return-void

    .line 772
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    .line 774
    goto :goto_12

    .line 773
    :catchall_11
    move-exception p0

    .line 775
    :goto_12
    return-void
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 264
    if-nez v0, :cond_15

    .line 265
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 266
    const-string v0, "interval_timer"

    const-string v1, "toggle: no activity"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void

    .line 269
    :cond_15
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 270
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_1f

    .line 271
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 272
    return-void

    .line 274
    :cond_1f
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 275
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 276
    return-void
.end method

.method private static triggerAllStop()V
    .registers 2

    .line 605
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .line 476
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 477
    return-void

    .line 480
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v1, :cond_19

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    if-eqz v1, :cond_19

    .line 481
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 482
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_26

    .line 484
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 485
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    .line 489
    :cond_26
    :goto_26
    goto :goto_2d

    .line 487
    :catchall_27
    move-exception v0

    .line 488
    const-string v1, "interval_timer_overlay_visibility"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    :goto_2d
    return-void
.end method
