.class public final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PauseOverlayListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BandTogglePause;
    }
.end annotation


# static fields
.field static final ALL_STOP_ID:I = 0x7f09003c

.field private static final AUDIO_STREAM:I = 0x3

.field private static final BTN_ANGLE_CLOSE:F = 45.0f

.field private static final BTN_ANGLE_PAUSE:F = 135.0f

.field private static final BTN_ANGLE_RESET:F = 90.0f

.field static final BUTTON_ID:I = 0x7f090230

.field private static final CONTENT_WIDTH_WEIGHT:F = 10.0f

.field private static final COUNTDOWN_TEXT_SP:F = 54.0f

.field private static final DURATION_MAX_SEC:I = 0x258

.field private static final DURATION_MIN_SEC:I = 0x5

.field private static final ID_CLOSE:I = 0x7f090293

.field private static final ID_COUNTDOWN:I = 0x7f090239

.field private static final ID_DIAL_HOST:I = 0x7f090294

.field private static final ID_LOOP_LABEL:I = 0x7f09023a

.field private static final ID_PAUSE:I = 0x7f090292

.field private static final ID_RESET:I = 0x7f090278

.field private static final ID_RING:I = 0x7f090243

.field private static final KEY_BLOCK_MODE:Ljava/lang/String; = "block_program_mode"

.field private static final KEY_BLOCK_REPEAT:Ljava/lang/String; = "block_program_repeat"

.field private static final KEY_CUSTOM_URI:Ljava/lang/String; = "custom_uri"

.field private static final KEY_LOOPS:Ljava/lang/String; = "loops"

.field private static final KEY_MINUTES:Ljava/lang/String; = "minutes"

.field private static final KEY_SECONDS:Ljava/lang/String; = "seconds"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_TRAIN_SEC:Ljava/lang/String; = "train_sec"

.field private static final LOOPS_MAX:I = 0x1e

.field private static final OVERLAY_BTN_OUTSIDE_GAP_DP:I = 0x5

.field private static final OVERLAY_CONTROL_BTN_DP:I = 0x2d

.field private static final OVERLAY_FRAME_DP:I = 0x124

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007a

.field private static final OVERLAY_ROW_Y_DP:I = 0x12c

.field private static final OVERLAY_SIDEBAR_GAP_DP:I = 0x28

.field private static final OVERLAY_SIZE_DP:I = 0xc0

.field private static final OVERLAY_TAP_SLOP_DP:F = 10.0f

.field static final PICK_RINGTONE:I = 0x4257

.field static final PICK_SIGNAL:I = 0x4256

.field private static final PREFS:Ljava/lang/String; = "interval_timer"

.field private static final QUICK_INTERVALS:[I

.field private static final QUICK_LOOPS:[I

.field static final RIGHT_LAYOUT_ID:I = 0x7f090155

.field private static final RING_MAX:I = 0x64

.field private static final SHEET_WIDTH_DP:I = 0x230

.field private static final SIDEBAR_WIDTH_WEIGHT:F = 0.7f

.field private static final SOUND_ALARM:I = 0x6

.field private static final SOUND_BEEP:I = 0x1

.field private static final SOUND_BELL:I = 0x3

.field private static final SOUND_CHIME:I = 0x2

.field private static final SOUND_CONFIRM:I = 0x5

.field private static final SOUND_CUSTOM:I = 0x8

.field private static final SOUND_DEVICE:I = 0x7

.field private static final SOUND_OFF:I = 0x0

.field private static final SOUND_PIP:I = 0x4

.field private static final STR_BLOCK_EMPTY:I = 0x7f0d0150

.field private static final STR_ERROR:I = 0x7f0d0128

.field private static final STR_INFO_BODY:I = 0x7f0d0176

.field private static final STR_INFO_TITLE:I = 0x7f0d0175

.field private static final STR_INVALID_DURATION:I = 0x7f0d0127

.field private static final STR_NO_TRAINING:I = 0x7f0d011a

.field private static final STR_SOUND_ALARM:I = 0x7f0d0154

.field private static final STR_SOUND_BEEP:I = 0x7f0d012d

.field private static final STR_SOUND_BELL:I = 0x7f0d012f

.field private static final STR_SOUND_CHIME:I = 0x7f0d012e

.field private static final STR_SOUND_CONFIRM:I = 0x7f0d0153

.field private static final STR_SOUND_CUSTOM:I = 0x7f0d0130

.field private static final STR_SOUND_DEVICE:I = 0x7f0d0155

.field private static final STR_SOUND_NO_FILE:I = 0x7f0d0133

.field private static final STR_SOUND_OFF:I = 0x7f0d012c

.field private static final STR_SOUND_PICK_DEVICE:I = 0x7f0d0156

.field private static final STR_SOUND_PIP:I = 0x7f0d0152

.field private static final STR_TAB_BLOCK:I = 0x7f0d0162

.field private static final STR_TAB_INTERVAL:I = 0x7f0d0161

.field private static final STR_TITLE:I = 0x7f0d0123

.field private static final SUB_PRESETS:I = 0x2

.field private static final SUB_SIGNAL:I = 0x1

.field private static final TICK_MS:J = 0x32L

.field private static final TRAIN_MAX_SEC:I = 0x1518

.field private static final TRAIN_MIN_SEC:I = 0x3c

.field private static allStopButton:Landroid/view/View;

.field private static armed:Z

.field private static blockProgramMode:Z

.field private static blockProgramRepeat:Z

.field private static blockSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;"
        }
    .end annotation
.end field

.field private static countdownRunning:Z

.field private static countdownView:Landroid/widget/TextView;

.field private static currentLoop:I

.field private static customSignalUri:Landroid/net/Uri;

.field private static final handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static intervalMs:J

.field private static intervalSec:I

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastDisplayedCountdownSec:I

.field private static lastTickRealtime:J

.field private static loopLabelView:Landroid/widget/TextView;

.field private static maxLoops:I

.field private static overlayContent:Landroid/view/View;

.field private static overlayDialog:Landroid/support/v7/app/AlertDialog;

.field private static overlayDownRawX:F

.field private static overlayDownRawY:F

.field private static overlayMoved:Z

.field private static overlayTouchDx:F

.field private static overlayTouchDy:F

.field private static overlayVisible:Z

.field private static panelRoot:Landroid/view/View;

.field private static pauseBtnView:Landroid/widget/TextView;

.field private static pickingSignal:Z

.field private static remainingMs:J

.field private static ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

.field private static selectedPresetId:Ljava/lang/String;

.field private static selectedSound:I

.field private static settingsLoaded:Z

.field private static sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static signalPlayer:Landroid/media/MediaPlayer;

.field private static soundBeforePick:I

.field private static subKind:I

.field private static subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static final tickRunnable:Ljava/lang/Runnable;

.field private static timerPausedByUser:Z

.field private static trainSec:I

.field private static trainingRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->QUICK_INTERVALS:[I

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->QUICK_LOOPS:[I

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    .line 160
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 161
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 166
    const/16 v0, 0x1e

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    .line 167
    const/16 v0, 0x4b0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    .line 172
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    .line 175
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 179
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    return-void

    nop

    :array_44
    .array-data 4
        0x14
        0x1e
        0x2d
        0x3c
        0x5a
        0x78
        0xb4
        0x12c
    .end array-data

    :array_58
    .array-data 4
        0x0
        0x4
        0x6
        0x8
        0xa
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleTimerPause()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000()I
    .registers 1

    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .registers 1

    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    return p0
.end method

.method static synthetic access$1100(I)Ljava/lang/String;
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(I)I
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->stepFor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(III)I
    .registers 3

    .line 46
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Landroid/app/Activity;I)V
    .registers 2

    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->openSub(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .line 46
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static synthetic access$1600()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->closeSub()V

    return-void
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .registers 1

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method static synthetic access$1902(Z)Z
    .registers 1

    .line 46
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    return p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    return v0
.end method

.method static synthetic access$2000()I
    .registers 1

    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .registers 1

    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    return p0
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toastText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSheets()V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V
    .registers 4

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->promptName(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 2

    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->presetMenu(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/view/View;)V
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startRingtonePick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/view/View;)V
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2702(I)I
    .registers 1

    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return p0
.end method

.method static synthetic access$2800()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    return-void
.end method

.method static synthetic access$2902(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 1

    .line 46
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;)V
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->saveSettings(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$3000()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->disarmTimerKeepSettings()V

    return-void
.end method

.method static synthetic access$3102(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 46
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$3200()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$3300()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetCurrentInterval()V

    return-void
.end method

.method static synthetic access$3400()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$3500()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3600()F
    .registers 1

    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$3602(F)F
    .registers 1

    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$3700()F
    .registers 1

    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$3702(F)F
    .registers 1

    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$3800()F
    .registers 1

    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$3802(F)F
    .registers 1

    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$3900()F
    .registers 1

    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$3902(F)F
    .registers 1

    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$400()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$4000()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$4002(Z)Z
    .registers 1

    .line 46
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .line 46
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/app/Activity;I)I
    .registers 2

    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4200(II)V
    .registers 2

    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$4300()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->openOverlaySettings()V

    return-void
.end method

.method static synthetic access$4400()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->finishArm()V

    return-void
.end method

.method static synthetic access$4500()Landroid/view/View;
    .registers 1

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4600()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    return-void
.end method

.method static synthetic access$4700()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    return-void
.end method

.method static synthetic access$4800()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    return v0
.end method

.method static synthetic access$4900()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    return v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    return v0
.end method

.method static synthetic access$5000()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .line 46
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    return p0
.end method

.method static synthetic access$5100()J
    .registers 2

    .line 46
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide v0
.end method

.method static synthetic access$5102(J)J
    .registers 2

    .line 46
    sput-wide p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide p0
.end method

.method static synthetic access$5200()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    return-void
.end method

.method static synthetic access$5300()Ljava/lang/Runnable;
    .registers 1

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5400()Landroid/os/Handler;
    .registers 1

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5500()J
    .registers 2

    .line 46
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$5522(J)J
    .registers 4

    .line 46
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    sub-long/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$5600()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 46
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V

    return-void
.end method

.method static synthetic access$800()I
    .registers 1

    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1

    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    return p0
.end method

.method static synthetic access$900(J)Ljava/lang/String;
    .registers 2

    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static applyPreset(Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 4

    .line 251
    if-nez p0, :cond_3

    .line 252
    return-void

    .line 254
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    const/16 v1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    iget v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    add-int/2addr v0, v2

    .line 255
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    if-eqz v2, :cond_1d

    .line 256
    const/16 v2, 0x1518

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    goto :goto_2a

    .line 257
    :cond_1d
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    if-nez v1, :cond_2a

    .line 258
    const/4 v1, 0x5

    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    .line 260
    :cond_2a
    :goto_2a
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 261
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 262
    if-ltz v0, :cond_3f

    const/16 v1, 0x8

    if-le v0, v1, :cond_42

    .line 263
    :cond_3f
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 265
    :cond_42
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_55

    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_56

    .line 267
    :cond_55
    const/4 v0, 0x0

    :goto_56
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 268
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 269
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_71

    :cond_6c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_71
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    .line 271
    return-void
.end method

.method private static armFromConfig()V
    .registers 9

    .line 560
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hasLoadedTraining()Z

    move-result v0

    if-nez v0, :cond_d

    .line 561
    const v0, 0x7f0d011a

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 562
    return-void

    .line 564
    :cond_d
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/16 v1, 0x8

    const/4 v2, 0x7

    if-eq v0, v1, :cond_16

    if-ne v0, v2, :cond_29

    :cond_16
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v0, :cond_29

    .line 565
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v0, v2, :cond_22

    const v0, 0x7f0d0156

    goto :goto_25

    :cond_22
    const v0, 0x7f0d0133

    :goto_25
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 566
    return-void

    .line 568
    :cond_29
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_67

    .line 569
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_60

    .line 573
    :cond_3c
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v0, :cond_43

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    goto :goto_47

    :cond_43
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sequenceSeconds()I

    move-result v0

    .line 574
    :goto_47
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    sget-object v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    sget-boolean v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->arm(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/util/ArrayList;ZI)V

    .line 575
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v5, v0

    mul-long v5, v5, v1

    sput-wide v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 576
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 577
    goto :goto_7c

    .line 570
    :cond_60
    :goto_60
    const v0, 0x7f0d0150

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 571
    return-void

    .line 578
    :cond_67
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    if-gtz v0, :cond_72

    .line 579
    const v0, 0x7f0d0127

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 580
    return-void

    .line 582
    :cond_72
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 583
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    int-to-long v5, v0

    mul-long v5, v5, v1

    sput-wide v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 585
    :goto_7c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->saveSettings(Landroid/app/Activity;)V

    .line 586
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 587
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 588
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 589
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 590
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 591
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 592
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 593
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissSheet()V

    .line 594
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 293
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 296
    goto :goto_a

    .line 294
    :catchall_4
    move-exception p0

    .line 295
    const-string p1, "IntervalTimerHelper.attachMasterPanel"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    :goto_a
    return-void
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 300
    if-eqz p0, :cond_2f

    if-nez p1, :cond_5

    goto :goto_2f

    .line 303
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    .line 304
    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 305
    const p1, 0x7f09003c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    .line 306
    const p1, 0x7f090230

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 307
    if-nez p0, :cond_1c

    .line 308
    return-void

    .line 310
    :cond_1c
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 311
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 312
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 313
    new-instance p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;

    invoke-direct {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-void

    .line 301
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static bandState()Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 204
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    const-string v2, "arm"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 206
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v1, :cond_1c

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    const-string v4, "run"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 207
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v1, :cond_2b

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    const-string v1, "pau"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 208
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    const-wide/16 v4, 0x1

    const-string v2, "int"

    const-string v6, "left"

    const-wide/16 v7, 0x3e8

    if-eqz v1, :cond_a1

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v1, :cond_a1

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 209
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockRemainingMs()J

    move-result-wide v9

    div-long/2addr v9, v7

    invoke-virtual {v0, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockTotalMs()J

    move-result-wide v9

    div-long/2addr v9, v7

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 C"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCyclesDone()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCurrentBlockCycles()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v2, "lbl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d0

    .line 216
    :cond_a1
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v1, :cond_ae

    sget-wide v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-lez v1, :cond_ae

    goto :goto_b0

    :cond_ae
    sget-wide v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    :goto_b0
    div-long/2addr v9, v7

    invoke-virtual {v0, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    sget-wide v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    div-long/2addr v9, v7

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 218
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "loop"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    const-string v2, "loops"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    :goto_d0
    return-object v0
.end method

.method public static bandTogglePause()V
    .registers 2

    .line 226
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BandTogglePause;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BandTogglePause;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1908
    if-nez p0, :cond_3

    .line 1909
    return-void

    .line 1911
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1912
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1913
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1914
    return-void
.end method

.method private static blockRow(Landroid/app/Activity;ILcom/isaigu/gymapp/dialog/ProgramSegment;[I)Landroid/view/View;
    .registers 13

    .line 1095
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1096
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1097
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1098
    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {p0, p1, v4, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 1099
    const/16 v3, 0x11

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1100
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1101
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 1103
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p1, v3, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " \u0446\u0438\u043a\u044a\u043b\u0430"

    const-string v6, " cycles"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  \u00b7  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    int-to-long v5, v5

    aget v7, p3, v1

    aget p3, p3, v2

    add-int/2addr v7, p3

    int-to-long v7, v7

    mul-long v5, v5, v7

    .line 1105
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1104
    invoke-static {p0, p3, v4, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1106
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%   \u00b7   "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Hz   \u00b7   "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u00b5s"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, p2, v2, p3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 1108
    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p2, v1, p0, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1109
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1110
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    return-object v0
.end method

.method private static buildBlockSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 12

    .line 1021
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1022
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 1023
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    .line 1025
    :cond_f
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0411\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v4, "Blocks"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1029
    const-string v2, "+ \u0421\u044a\u0437\u0434\u0430\u0439"

    const-string v3, "+ Create"

    goto :goto_56

    :cond_52
    const-string v2, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u0430\u0439"

    const-string v3, "Edit"

    :goto_56
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1028
    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 1030
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1031
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v2, v7, v9, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1032
    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1046
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1048
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_aa

    .line 1049
    const-string v1, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0431\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v5, "No blocks yet"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v5, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v5, v7, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1050
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    goto :goto_d3

    .line 1052
    :cond_aa
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveOnOffFromSeed()[I

    move-result-object v1

    .line 1053
    const/4 v5, 0x0

    :goto_af
    sget-object v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_d3

    .line 1054
    sget-object v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 1055
    invoke-static {p0, v5, v7, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRow(Landroid/app/Activity;ILcom/isaigu/gymapp/dialog/ProgramSegment;[I)Landroid/view/View;

    move-result-object v7

    if-nez v5, :cond_c7

    const/4 v8, 0x6

    goto :goto_c9

    :cond_c7
    const/16 v8, 0x8

    :goto_c9
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    add-int/lit8 v5, v5, 0x1

    goto :goto_af

    .line 1059
    :cond_d3
    :goto_d3
    const-string v1, "\u041f\u043e\u0432\u0442\u0430\u0440\u044f\u0439 \u0434\u043e \u043a\u0440\u0430\u044f \u043d\u0430 \u0432\u0440\u0435\u043c\u0435\u0442\u043e"

    const-string v5, "Repeat until time is up"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    new-instance v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$17;

    invoke-direct {v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$17;-><init>()V

    const/4 v8, 0x0

    invoke-static {p0, v1, v8, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1067
    const/16 v5, 0xe

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 1059
    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v1, :cond_137

    .line 1070
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v1, v8, v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    .line 1071
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$18;

    invoke-direct {v4, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$18;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)V

    const/4 v6, -0x1

    invoke-static {v2, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 1078
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)V

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 1085
    const-string v2, "\u0412\u0440\u0435\u043c\u0435"

    const-string v3, "Time"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->settingRow(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16d

    .line 1086
    :cond_137
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16d

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041e\u0431\u0449\u043e "

    const-string v7, "Total "

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sequenceSeconds()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v4, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1089
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16e

    .line 1086
    :cond_16d
    :goto_16d
    nop

    .line 1091
    :goto_16e
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    return-void
.end method

.method private static buildFooter(Landroid/app/Activity;)V
    .registers 7

    .line 1351
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    .line 1352
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1353
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_23

    .line 1354
    const-string v1, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0442\u0430\u0439\u043c\u0435\u0440\u0430"

    const-string v3, "Turn timer off"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 1355
    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$29;

    invoke-direct {v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$29;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1362
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1364
    :cond_23
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1365
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v1, :cond_33

    const-string v1, "\u041f\u0440\u0438\u043b\u043e\u0436\u0438"

    const-string v3, "Apply"

    goto :goto_37

    :cond_33
    const-string v1, "\u25b6  \u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0439"

    const-string v3, "\u25b6  Activate"

    :goto_37
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 1367
    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1368
    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v1, v3, v5, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1369
    new-instance p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$30;

    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$30;-><init>()V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1376
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1377
    return-void
.end method

.method private static buildIntervalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 12

    .line 758
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 759
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {p0, v1, v2, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    .line 760
    sget v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsText(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v2

    .line 761
    const-string v3, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b"

    const-string v4, "Interval"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->settingRow(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 762
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->divider(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    const-string v3, "\u041f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f"

    const-string v5, "Repeats"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-static {p0, v3, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->settingRow(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const-string v4, ""

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 765
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 766
    const/16 v4, 0xe

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;

    invoke-direct {v5, v1, v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;Lcom/isaigu/gymapp/widget/XemsUi$Stepper;Landroid/widget/TextView;)V

    .line 779
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$6;

    invoke-direct {v7, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$6;-><init>(Ljava/lang/Runnable;)V

    const/4 v8, -0x1

    invoke-static {v3, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 787
    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$7;

    invoke-direct {v7, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$7;-><init>(Ljava/lang/Runnable;)V

    const/4 v9, 0x1

    invoke-static {v1, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 796
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$8;

    invoke-direct {v6, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$8;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 804
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$9;

    invoke-direct {v2, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$9;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 812
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 813
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    return-void
.end method

.method private static buildMoreRows(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 8

    .line 835
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 836
    const-string v1, "\u0421\u0438\u0433\u043d\u0430\u043b"

    const-string v2, "Signal"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$10;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$10;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v1, v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->navRow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 842
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->divider(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->findById(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    .line 844
    :goto_38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->loadAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 845
    const-string v4, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v5, "Saved programs"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 846
    if-eqz v1, :cond_4d

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    goto :goto_56

    :cond_4d
    if-lez v3, :cond_54

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_56

    :cond_54
    const-string v1, ""

    :goto_56
    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$11;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$11;-><init>(Landroid/app/Activity;)V

    .line 845
    invoke-static {p0, v4, v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->navRow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    .line 851
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 845
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    return-void
.end method

.method private static buildPresetSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 11

    .line 1139
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/LinearLayout;

    .line 1140
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1141
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1142
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a

    const-string v3, "\u2713 \u041e\u0431\u043d\u043e\u0432\u0438"

    const-string v4, "\u2713 Update"

    goto :goto_1e

    :cond_1a
    const-string v3, "+ \u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v4, "+ Save"

    :goto_1e
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v3, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v3

    .line 1144
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1145
    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    invoke-static {p0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 1170
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->loadAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1171
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 1172
    iget-object v6, v5, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    if-eqz v6, :cond_5c

    iget-object v6, v5, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    sget-object v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    const/4 v6, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v6, 0x0

    .line 1173
    :goto_5d
    iget-boolean v7, v5, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    if-eqz v7, :cond_64

    const-string v7, "\u25a6 "

    goto :goto_66

    :cond_64
    const-string v7, "\u25f7 "

    .line 1174
    :goto_66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    if-eqz v7, :cond_75

    iget-object v7, v5, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    goto :goto_77

    :cond_75
    const-string v7, "?"

    :goto_77
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v7, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v6

    .line 1175
    new-instance v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$21;

    invoke-direct {v7, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$21;-><init>(Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    new-instance v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$22;

    invoke-direct {v7, p0, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$22;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1191
    invoke-static {p0, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 1192
    goto :goto_40

    .line 1193
    :cond_98
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1194
    const-string v0, "\u0417\u0430\u0434\u0440\u044a\u0436 \u0432\u044a\u0440\u0445\u0443 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u043f\u0440\u0435\u0438\u043c\u0435\u043d\u0443\u0432\u0430\u043d\u0435 \u0438\u043b\u0438 \u0438\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435."

    const-string v1, "Hold a saved program to rename or delete it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1196
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    :cond_b6
    return-void
.end method

.method private static buildSignalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 13

    .line 1281
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/LinearLayout;

    .line 1282
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1283
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1284
    const/16 v3, 0x9

    new-array v4, v3, [I

    fill-array-data v4, :array_10a

    .line 1286
    new-array v5, v3, [I

    fill-array-data v5, :array_120

    .line 1288
    const/4 v6, 0x0

    :goto_1a
    const/4 v7, 0x7

    const/16 v8, 0x8

    if-ge v6, v3, :cond_62

    .line 1289
    aget v9, v4, v6

    .line 1290
    if-nez v9, :cond_26

    const-string v7, "\ud83d\udd07 "

    goto :goto_32

    :cond_26
    if-ne v9, v7, :cond_2b

    const-string v7, "\ud83d\udcf1 "

    goto :goto_32

    :cond_2b
    if-ne v9, v8, :cond_30

    const-string v7, "\ud83d\udcc1 "

    goto :goto_32

    :cond_30
    const-string v7, "\u266a "

    .line 1291
    :goto_32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v5, v6

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v9, v8, :cond_4d

    const/4 v8, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v8, 0x0

    :goto_4e
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v7, v8, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v7

    .line 1292
    new-instance v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;

    invoke-direct {v8, v9}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1312
    invoke-static {p0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 1288
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1314
    :cond_62
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-eq v1, v8, :cond_68

    if-ne v1, v7, :cond_108

    :cond_68
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz v1, :cond_108

    .line 1315
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1316
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1317
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1318
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 1319
    if-eqz v3, :cond_87

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_87

    goto :goto_8d

    :cond_87
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8d
    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v3, v4, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1321
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1322
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1323
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1324
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/4 v2, -0x1

    const-string v3, "\u25b6"

    const/16 v4, 0x22

    invoke-static {p0, v3, v0, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1325
    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$27;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$27;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1331
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1332
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1333
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1334
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v5, "\u2715"

    invoke-static {p0, v5, v0, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1335
    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$28;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$28;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1344
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1345
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1346
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1348
    :cond_108
    return-void

    nop

    :array_10a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_120
    .array-data 4
        0x7f0d012c
        0x7f0d012d
        0x7f0d012e
        0x7f0d012f
        0x7f0d0152
        0x7f0d0153
        0x7f0d0154
        0x7f0d0155
        0x7f0d0130
    .end array-data
.end method

.method static captureCurrentPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 4

    .line 274
    new-instance v0, Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;-><init>()V

    .line 275
    if-eqz p0, :cond_8

    goto :goto_c

    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->newId()Ljava/lang/String;

    move-result-object p0

    :goto_c
    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 276
    const-string p0, ""

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move-object p1, p0

    :goto_14
    iput-object p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 277
    sget-boolean p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz p1, :cond_21

    sget-boolean p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz p1, :cond_21

    sget p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    goto :goto_23

    :cond_21
    sget p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    .line 278
    :goto_23
    div-int/lit8 v1, p1, 0x3c

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    .line 279
    rem-int/lit8 p1, p1, 0x3c

    iput p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    .line 280
    sget p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    iput p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    .line 281
    sget p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    iput p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    .line 282
    sget-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3b
    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    .line 283
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    iput-boolean p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    .line 284
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    iput-boolean p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    .line 285
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    if-eqz p0, :cond_51

    new-instance p0, Ljava/util/ArrayList;

    sget-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_56

    :cond_51
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_56
    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    .line 286
    return-object v0
.end method

.method private static clamp(III)I
    .registers 3

    .line 1540
    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method private static closeSub()V
    .registers 1

    .line 938
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_b

    .line 940
    :try_start_4
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_a

    .line 942
    goto :goto_b

    .line 941
    :catchall_a
    move-exception v0

    .line 944
    :cond_b
    :goto_b
    return-void
.end method

.method private static disarmTimerKeepSettings()V
    .registers 3

    .line 504
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 505
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 506
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 507
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 508
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 509
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 510
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 511
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 513
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 514
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 515
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 516
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 517
    return-void
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 2

    .line 1645
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_18

    .line 1647
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 1649
    goto :goto_9

    .line 1648
    :catchall_8
    move-exception v0

    .line 1650
    :goto_9
    if-nez p0, :cond_18

    .line 1651
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1652
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 1653
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 1654
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 1655
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 1656
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    .line 1659
    :cond_18
    return-void
.end method

.method private static dismissSheet()V
    .registers 1

    .line 1396
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_12

    .line 1398
    :try_start_4
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_a

    .line 1400
    goto :goto_b

    .line 1399
    :catchall_a
    move-exception v0

    .line 1401
    :goto_b
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    if-nez v0, :cond_12

    .line 1402
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 1405
    :cond_12
    return-void
.end method

.method private static divider(Landroid/app/Activity;)Landroid/view/View;
    .registers 3

    .line 827
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 828
    sget p0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v1, 0x14

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 829
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 830
    return-object v0
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 1932
    if-nez p0, :cond_3

    .line 1933
    return p1

    .line 1935
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 1936
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static fillQuickIntervals(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .registers 11

    .line 968
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 969
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->QUICK_INTERVALS:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_2c

    aget v4, v0, v3

    .line 970
    int-to-long v5, v4

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    if-ne v4, v6, :cond_17

    const/4 v6, 0x1

    goto :goto_18

    :cond_17
    const/4 v6, 0x0

    :goto_18
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v5

    .line 971
    new-instance v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$14;

    invoke-direct {v6, v4, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$14;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    invoke-static {p0, p1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 969
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 982
    :cond_2c
    return-void
.end method

.method private static fillQuickLoops(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .registers 11

    .line 985
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 986
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->QUICK_LOOPS:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_30

    aget v4, v0, v3

    .line 987
    if-nez v4, :cond_11

    const-string v5, "\u221e"

    goto :goto_15

    :cond_11
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_15
    sget v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-ne v4, v6, :cond_1b

    const/4 v6, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v6, 0x0

    :goto_1c
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v5

    .line 988
    new-instance v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$15;

    invoke-direct {v6, v4, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$15;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    invoke-static {p0, p1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 986
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 999
    :cond_30
    return-void
.end method

.method private static fillTimeline(Landroid/app/Activity;Landroid/widget/LinearLayout;I)V
    .registers 11

    .line 1003
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1004
    if-lez p2, :cond_7

    move v0, p2

    goto :goto_9

    :cond_7
    const/16 v0, 0xc

    .line 1005
    :goto_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_5f

    .line 1006
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1007
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v6, 0x1

    if-le v0, v6, :cond_1f

    int-to-float v6, v2

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    :goto_20
    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v4

    .line 1008
    if-gtz p2, :cond_36

    .line 1009
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v5, 0x22

    mul-int/lit8 v6, v2, 0x12

    rsub-int v6, v6, 0xff

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    .line 1011
    :cond_36
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1013
    if-lez v2, :cond_59

    .line 1014
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1016
    :cond_59
    invoke-virtual {p1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1018
    :cond_5f
    return-void
.end method

.method private static finishArm()V
    .registers 4

    .line 598
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 599
    return-void

    .line 601
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showOverlayDialog()Z

    move-result v0

    const-string v1, "interval_timer"

    if-nez v0, :cond_1e

    .line 602
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 603
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 604
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 605
    const-string v0, "overlay dialog failed"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void

    .line 608
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 609
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 610
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

    .line 612
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_56

    .line 613
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    .line 615
    :cond_56
    return-void
.end method

.method private static formatSeconds(J)Ljava/lang/String;
    .registers 6

    .line 1899
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 1900
    move-wide p0, v0

    .line 1902
    :cond_7
    const-wide/16 v0, 0x3c

    div-long v2, p0, v0

    .line 1903
    rem-long/2addr p0, v0

    .line 1904
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

.method private static handleRingtoneResult(ILandroid/content/Intent;)V
    .registers 3

    .line 358
    const/4 v0, -0x1

    if-ne p0, v0, :cond_e

    if-eqz p1, :cond_e

    .line 359
    const-string p0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 360
    :goto_f
    if-nez p0, :cond_16

    .line 361
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 362
    return-void

    .line 364
    :cond_16
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 365
    const/4 p0, 0x7

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 366
    const-string p0, "interval_timer"

    const-string p1, "device signal uri set"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 368
    return-void
.end method

.method private static handleSignalFileResult(ILandroid/content/Intent;)V
    .registers 4

    .line 336
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    goto :goto_c

    :cond_b
    move-object p0, v0

    .line 337
    :goto_c
    if-nez p0, :cond_13

    .line 338
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 339
    return-void

    .line 341
    :cond_13
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 342
    const/16 v1, 0x8

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 344
    :try_start_19
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    .line 347
    if-eqz v0, :cond_2e

    if-eqz p1, :cond_2e

    .line 348
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_2f

    .line 352
    :cond_2e
    goto :goto_35

    .line 350
    :catchall_2f
    move-exception p0

    .line 351
    const-string p1, "interval_timer_uri_persist"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    :goto_35
    const-string p0, "interval_timer"

    const-string p1, "custom signal uri set"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 355
    return-void
.end method

.method private static hasLoadedTraining()Z
    .registers 1

    .line 556
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isArmed()Z
    .registers 1

    .line 192
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    return v0
.end method

.method public static isCounting()Z
    .registers 1

    .line 197
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static launchPicker(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4

    .line 1529
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1530
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_e

    .line 1532
    :try_start_7
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    .line 1534
    goto :goto_e

    .line 1533
    :catchall_d
    move-exception v0

    .line 1536
    :cond_e
    :goto_e
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1537
    return-void
.end method

.method private static layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V
    .registers 12

    .line 1941
    if-eqz p0, :cond_59

    if-nez p1, :cond_5

    goto :goto_59

    .line 1944
    :cond_5
    const v0, 0x7f090293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1945
    const v0, 0x7f090278

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1946
    const v2, 0x7f090292

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1947
    const/16 v2, 0x124

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 1948
    const/16 v3, 0xc0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    .line 1949
    const/16 v4, 0x2d

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    .line 1950
    const/4 v4, 0x5

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    int-to-float p0, p0

    .line 1951
    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, p0

    int-to-float p0, v8

    div-float/2addr p0, v4

    add-float/2addr p0, v3

    .line 1952
    int-to-float v2, v2

    div-float v9, v2, v4

    .line 1953
    nop

    .line 1954
    const/high16 v2, 0x42340000    # 45.0f

    move v3, v9

    move v4, v9

    move v5, p0

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1955
    const/high16 v3, 0x42b40000    # 90.0f

    move-object v2, v0

    move v5, v9

    move v6, p0

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1956
    const/high16 v4, 0x43070000    # 135.0f

    move-object v3, p1

    move v6, v9

    move v7, p0

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1957
    return-void

    .line 1942
    :cond_59
    :goto_59
    return-void
.end method

.method private static loadSavedSettings(Landroid/app/Activity;)V
    .registers 9

    .line 1423
    if-nez p0, :cond_3

    .line 1424
    return-void

    .line 1427
    :cond_3
    :try_start_3
    const-string v0, "interval_timer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1428
    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->settingsLoaded:Z

    if-nez v2, :cond_84

    .line 1429
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->settingsLoaded:Z

    .line 1430
    const-string v3, "minutes"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    const-string v5, "seconds"

    const/16 v6, 0x1e

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x5

    const/16 v7, 0x258

    invoke-static {v3, v5, v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v3

    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    .line 1432
    const-string v3, "train_sec"

    const/16 v5, 0x4b0

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0x1518

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v3

    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    .line 1433
    const-string v3, "loops"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3, v1, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v3

    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 1434
    const-string v3, "sound"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 1435
    if-ltz v3, :cond_57

    const/16 v4, 0x8

    if-le v3, v4, :cond_59

    .line 1436
    :cond_57
    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 1438
    :cond_59
    const-string v2, "custom_uri"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1439
    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6c

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_6c
    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 1440
    const-string v2, "block_program_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 1441
    const-string v2, "block_program_repeat"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 1442
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->loadBlocks(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    .line 1444
    :cond_84
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8e

    .line 1447
    goto :goto_94

    .line 1445
    :catchall_8e
    move-exception p0

    .line 1446
    const-string v0, "interval_timer_prefs_load"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1448
    :goto_94
    return-void
.end method

.method private static loopsText(I)Ljava/lang/String;
    .registers 1

    .line 960
    if-gtz p0, :cond_5

    const-string p0, "\u221e"

    goto :goto_9

    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method private static loopsUnit(I)Ljava/lang/String;
    .registers 2

    .line 964
    if-gtz p0, :cond_7

    const-string p0, "\u0431\u0435\u0437 \u043a\u0440\u0430\u0439"

    const-string v0, "endless"

    goto :goto_b

    :cond_7
    const-string p0, "\u043f\u044a\u0442\u0438"

    const-string v0, "times"

    :goto_b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .line 1679
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 1680
    return-void

    .line 1682
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1683
    if-nez v0, :cond_c

    .line 1684
    return-void

    .line 1687
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1688
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1689
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1690
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    .line 1693
    goto :goto_1e

    .line 1691
    :catchall_18
    move-exception p0

    .line 1692
    const-string p1, "interval_timer_overlay_move"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1694
    :goto_1e
    return-void
.end method

.method private static navRow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 10

    .line 856
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 857
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 858
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 859
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, p1, v2, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_32

    goto :goto_34

    :cond_32
    const-string p2, ""

    :goto_34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   \u203a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p1, v2, p2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 862
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 863
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 864
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 865
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v1, 0x41200000    # 10.0f

    .line 866
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    .line 865
    invoke-static {p1, p2, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 867
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    return-object v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 3

    .line 318
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onActivityResultImpl(IILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 321
    goto :goto_a

    .line 319
    :catchall_4
    move-exception p0

    .line 320
    const-string p1, "IntervalTimerHelper.onActivityResult"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    :goto_a
    return-void
.end method

.method private static onActivityResultImpl(IILandroid/content/Intent;)V
    .registers 4

    .line 325
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 326
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreSheetAfterPick()V

    .line 327
    const/16 v0, 0x4256

    if-ne p0, v0, :cond_e

    .line 328
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handleSignalFileResult(ILandroid/content/Intent;)V

    goto :goto_15

    .line 329
    :cond_e
    const/16 v0, 0x4257

    if-ne p0, v0, :cond_15

    .line 330
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handleRingtoneResult(ILandroid/content/Intent;)V

    .line 332
    :cond_15
    :goto_15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V

    .line 333
    return-void
.end method

.method private static onIntervalFinished()V
    .registers 2

    .line 1805
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-lez v0, :cond_c

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lt v1, v0, :cond_c

    .line 1806
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 1807
    return-void

    .line 1809
    :cond_c
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 1810
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1811
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 1812
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 1813
    return-void
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 2

    .line 405
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChangedImpl(Z)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 408
    goto :goto_a

    .line 406
    :catchall_4
    move-exception p0

    .line 407
    const-string v0, "IntervalTimerHelper.onTrainingRunningChanged"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    :goto_a
    return-void
.end method

.method private static onTrainingRunningChangedImpl(Z)V
    .registers 4

    .line 412
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 413
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_a

    .line 414
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 415
    return-void

    .line 417
    :cond_a
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 418
    if-eqz p0, :cond_3d

    .line 419
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->onTrainingStart()V

    .line 420
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 421
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez p0, :cond_4a

    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-nez p0, :cond_4a

    .line 422
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 424
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a

    .line 427
    :cond_3d
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz p0, :cond_4a

    .line 428
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 429
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    :cond_4a
    :goto_4a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 432
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 433
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 434
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 435
    return-void

    .line 437
    :cond_57
    if-eqz p0, :cond_85

    .line 438
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez p0, :cond_92

    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-nez p0, :cond_92

    .line 439
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-gtz p0, :cond_6e

    .line 440
    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 441
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 442
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 444
    :cond_6e
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 446
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_92

    .line 449
    :cond_85
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz p0, :cond_92

    .line 450
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 451
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    :cond_92
    :goto_92
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 454
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 455
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 456
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 457
    return-void
.end method

.method public static onTrainingStop()V
    .registers 2

    .line 461
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingStopImpl()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 464
    goto :goto_a

    .line 462
    :catchall_4
    move-exception v0

    .line 463
    const-string v1, "IntervalTimerHelper.onTrainingStop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    :goto_a
    return-void
.end method

.method private static onTrainingStopImpl()V
    .registers 0

    .line 468
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 469
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    .line 470
    return-void
.end method

.method private static openOverlaySettings()V
    .registers 1

    .line 618
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 619
    if-nez v0, :cond_e

    .line 620
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 621
    return-void

    .line 623
    :cond_e
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 624
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showSheet(Landroid/app/Activity;)V

    .line 625
    return-void
.end method

.method private static openSub(Landroid/app/Activity;I)V
    .registers 4

    .line 894
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_5

    .line 895
    return-void

    .line 897
    :cond_5
    sput p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subKind:I

    .line 898
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    const-string p1, "\u0421\u0438\u0433\u043d\u0430\u043b"

    const-string v0, "Signal"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 899
    :cond_13
    const-string p1, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v0, "Saved programs"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1b
    const/16 v0, 0x208

    .line 898
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 900
    iget-object p1, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$12;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$12;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 907
    const-string p1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v0, "Done"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    .line 908
    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$13;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$13;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 915
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object p0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 916
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSub()V

    .line 918
    :try_start_58
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object p0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_60

    .line 921
    goto :goto_63

    .line 919
    :catchall_60
    move-exception p0

    .line 920
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 922
    :goto_63
    return-void
.end method

.method private static placeDialButton(Landroid/view/View;FFFFI)V
    .registers 10

    .line 1961
    if-nez p0, :cond_3

    .line 1962
    return-void

    .line 1964
    :cond_3
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1965
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float p1, p1, p4

    add-float/2addr p2, p1

    int-to-float p1, p5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 1966
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p4, p4, v0

    sub-float/2addr p3, p4

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1967
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1968
    const p4, 0x800033

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1969
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1970
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1971
    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1972
    const/high16 p1, 0x40800000    # 4.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 1973
    return-void
.end method

.method public static playBlockSignal()V
    .registers 0

    .line 478
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 479
    return-void
.end method

.method private static playBuiltInTone(I)V
    .registers 5

    .line 1828
    packed-switch p0, :pswitch_data_38

    .line 1848
    return-void

    .line 1845
    :pswitch_4
    const/16 p0, 0x56

    .line 1846
    goto :goto_16

    .line 1842
    :pswitch_7
    const/16 p0, 0x29

    .line 1843
    goto :goto_16

    .line 1839
    :pswitch_a
    const/16 p0, 0x1b

    .line 1840
    goto :goto_16

    .line 1836
    :pswitch_d
    const/16 p0, 0x5d

    .line 1837
    goto :goto_16

    .line 1833
    :pswitch_10
    const/16 p0, 0x19

    .line 1834
    goto :goto_16

    .line 1830
    :pswitch_13
    const/16 p0, 0x18

    .line 1831
    nop

    .line 1851
    :goto_16
    :try_start_16
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1852
    const/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1853
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v2, 0x226

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_30

    .line 1856
    goto :goto_36

    .line 1854
    :catchall_30
    move-exception p0

    .line 1855
    const-string v0, "interval_timer_tone"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1857
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method private static playCustomSignal()V
    .registers 3

    .line 1860
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 1861
    return-void

    .line 1863
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1864
    if-nez v0, :cond_d

    .line 1865
    return-void

    .line 1867
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 1869
    :try_start_10
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 1870
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1871
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1872
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1873
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1874
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1875
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1876
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_48

    .line 1880
    goto :goto_51

    .line 1877
    :catchall_48
    move-exception v0

    .line 1878
    const-string v1, "interval_timer_custom_signal"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1879
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 1881
    :goto_51
    return-void
.end method

.method private static playSignal()V
    .registers 2

    .line 1816
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-nez v0, :cond_5

    .line 1817
    return-void

    .line 1819
    :cond_5
    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    goto :goto_11

    .line 1823
    :cond_d
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBuiltInTone(I)V

    .line 1824
    return-void

    .line 1820
    :cond_11
    :goto_11
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playCustomSignal()V

    .line 1821
    return-void
.end method

.method private static presetMenu(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 9

    .line 1201
    iget-object v0, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "Saved program"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 1202
    const-string v1, "\u041f\u0440\u0435\u0438\u043c\u0435\u043d\u0443\u0432\u0430\u0439"

    const-string v2, "Rename"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 1203
    const-string v2, "\u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v3, "Delete"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 1204
    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;

    invoke-direct {v3, v0, p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1219
    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;

    invoke-direct {v3, v0, p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1232
    iget-object p1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/16 v1, 0xa

    invoke-static {v6, v1, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    iget-object p0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 1234
    return-void
.end method

.method private static promptName(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V
    .registers 9

    .line 1241
    const/4 v0, 0x0

    const/16 v1, 0x1cc

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object p1

    .line 1242
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1243
    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1244
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1245
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1246
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1247
    const-string v1, "\u043d\u0430\u043f\u0440. \u0421\u0438\u043b\u0430 30/30"

    const-string v2, "e.g. Strength 30/30"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1248
    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1249
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1250
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    if-eqz p2, :cond_6b

    .line 1252
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1255
    :cond_6b
    iget-object p2, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1256
    const-string p2, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v2, "Save"

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p0, p2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p2

    .line 1257
    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;

    invoke-direct {v2, v0, p1, p3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;-><init>(Landroid/widget/EditText;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1269
    iget-object p3, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1270
    iget-object p0, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1271
    iget-object p0, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 1273
    :try_start_9d
    iget-object p0, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_a7

    .line 1275
    goto :goto_a8

    .line 1274
    :catchall_a7
    move-exception p0

    .line 1276
    :goto_a8
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1277
    return-void
.end method

.method private static rebuildSheet()V
    .registers 6

    .line 716
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_5

    .line 717
    return-void

    .line 719
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 720
    if-nez v0, :cond_d

    .line 721
    return-void

    .line 723
    :cond_d
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 724
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 725
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 727
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const v5, 0x7f0d0161

    .line 728
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x7f0d0162

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 729
    sget-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$3;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$3;-><init>()V

    .line 727
    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 737
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v3, :cond_49

    .line 738
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildBlockSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    goto :goto_4c

    .line 740
    :cond_49
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildIntervalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 742
    :goto_4c
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildMoreRows(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 743
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildFooter(Landroid/app/Activity;)V

    .line 744
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 745
    nop

    .line 746
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$4;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$4;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 754
    return-void
.end method

.method public static refreshBlockOverlay()V
    .registers 1

    .line 473
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 474
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 475
    return-void
.end method

.method private static refreshBlockOverlayRing()V
    .registers 8

    .line 1728
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-nez v0, :cond_5

    .line 1729
    return-void

    .line 1732
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockTotalMs()J

    move-result-wide v0

    .line 1733
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockRemainingMs()J

    move-result-wide v2

    .line 1734
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v0, v4

    if-lez v7, :cond_18

    long-to-float v2, v2

    long-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 1735
    :goto_19
    cmpg-float v0, v2, v6

    if-gez v0, :cond_1e

    .line 1736
    goto :goto_1f

    .line 1735
    :cond_1e
    move v6, v2

    .line 1738
    :goto_1f
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, v6, v0

    if-lez v1, :cond_27

    .line 1739
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1741
    :cond_27
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    sub-float/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 1742
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    .line 1743
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    .line 1746
    :cond_3a
    goto :goto_3c

    .line 1745
    :catchall_3b
    move-exception v0

    .line 1747
    :goto_3c
    return-void
.end method

.method private static refreshOverlayRing()V
    .registers 7

    .line 1750
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_3e

    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    goto :goto_3e

    .line 1754
    :cond_d
    :try_start_d
    sget-wide v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_15

    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1755
    :cond_15
    long-to-float v0, v0

    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 1756
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_20

    .line 1757
    const/4 v0, 0x0

    .line 1759
    :cond_20
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_28

    .line 1760
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1762
    :cond_28
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 1763
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v1, :cond_3b

    .line 1764
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_3c

    .line 1767
    :cond_3b
    goto :goto_3d

    .line 1766
    :catchall_3c
    move-exception v0

    .line 1768
    :goto_3d
    return-void

    .line 1751
    :cond_3e
    :goto_3e
    return-void
.end method

.method private static refreshOverlayText()V
    .registers 8

    .line 1697
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1698
    return-void

    .line 1700
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    const-string v1, "/"

    const/4 v2, 0x1

    if-eqz v0, :cond_69

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_69

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1701
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockRemainingMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateCountdownDisplay(J)V

    .line 1702
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_65

    .line 1703
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockIndex()I

    move-result v0

    add-int/2addr v0, v2

    .line 1704
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1705
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCyclesDone()I

    move-result v4

    add-int/2addr v4, v2

    .line 1706
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCurrentBlockCycles()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1707
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 C"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1709
    :cond_65
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlayRing()V

    .line 1710
    return-void

    .line 1712
    :cond_69
    sget-wide v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_72

    goto :goto_74

    :cond_72
    sget-wide v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    :goto_74
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateCountdownDisplay(J)V

    .line 1713
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_c6

    .line 1714
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v3, :cond_85

    .line 1715
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c6

    .line 1716
    :cond_85
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    const-string v3, "#"

    if-gtz v0, :cond_a5

    .line 1717
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_90

    move v2, v0

    .line 1718
    :cond_90
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    goto :goto_c6

    .line 1720
    :cond_a5
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_aa

    move v2, v0

    .line 1721
    :cond_aa
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    :cond_c6
    :goto_c6
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayRing()V

    .line 1725
    return-void
.end method

.method private static refreshSheets()V
    .registers 1

    .line 948
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_8

    .line 949
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSub()V

    goto :goto_b

    .line 951
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V

    .line 953
    :goto_b
    return-void
.end method

.method private static refreshStatusText()V
    .registers 3

    .line 1380
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_5

    .line 1381
    return-void

    .line 1383
    :cond_5
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1384
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_21

    .line 1385
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const-string v1, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v2, "Off"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_5e

    .line 1386
    :cond_21
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_37

    .line 1387
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const-string v1, "\u25cf \u0420\u0430\u0431\u043e\u0442\u0438"

    const-string v2, "\u25cf Running"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_5e

    .line 1388
    :cond_37
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-eqz v0, :cond_4d

    .line 1389
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const-string v1, "\u041f\u0430\u0443\u0437\u0430"

    const-string v2, "Paused"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_5e

    .line 1391
    :cond_4d
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432 \u2014 \u0447\u0430\u043a\u0430 \u0441\u0442\u0430\u0440\u0442"

    const-string v2, "Armed \u2014 waits for start"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 1393
    :goto_5e
    return-void
.end method

.method private static refreshSub()V
    .registers 3

    .line 925
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 926
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v1, :cond_26

    if-nez v0, :cond_c

    goto :goto_26

    .line 929
    :cond_c
    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 930
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subKind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 931
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildSignalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    goto :goto_25

    .line 933
    :cond_1e
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->subSheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildPresetSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 935
    :goto_25
    return-void

    .line 927
    :cond_26
    :goto_26
    return-void
.end method

.method private static releaseSignalPlayer()V
    .registers 1

    .line 1884
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 1885
    return-void

    .line 1888
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 1890
    goto :goto_a

    .line 1889
    :catchall_9
    move-exception v0

    .line 1892
    :goto_a
    :try_start_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 1894
    goto :goto_11

    .line 1893
    :catchall_10
    move-exception v0

    .line 1895
    :goto_11
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 1896
    return-void
.end method

.method private static resetAll()V
    .registers 3

    .line 486
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 487
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 488
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 489
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 490
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 491
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 492
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 493
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 494
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 495
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 496
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 497
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissSheet()V

    .line 498
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 499
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 500
    return-void
.end method

.method private static resetCurrentInterval()V
    .registers 2

    .line 1782
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 1783
    return-void

    .line 1785
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1786
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resetCurrentBlockCountdown()V

    goto :goto_17

    .line 1788
    :cond_13
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1790
    :goto_17
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 1791
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 1792
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_38

    .line 1793
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 1794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 1795
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1796
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1798
    :cond_38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 1799
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 1800
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 1801
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 1802
    return-void
.end method

.method private static resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 647
    if-eqz p0, :cond_3

    .line 648
    return-object p0

    .line 650
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_10

    .line 651
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0

    .line 653
    :cond_10
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz p0, :cond_23

    .line 654
    iget-object p0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 655
    if-eqz p0, :cond_23

    .line 656
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 657
    return-object p0

    .line 660
    :cond_23
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_34

    .line 661
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 662
    if-eqz p0, :cond_34

    .line 663
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 664
    return-object p0

    .line 667
    :cond_34
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz p0, :cond_41

    .line 668
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 669
    if-eqz p0, :cond_41

    .line 670
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 671
    return-object p0

    .line 674
    :cond_41
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private static resolveOnOffFromSeed()[I
    .registers 4

    .line 1120
    nop

    .line 1121
    nop

    .line 1122
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1123
    const/4 v1, 0x4

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1124
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1125
    if-eqz v0, :cond_2f

    .line 1126
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v2, :cond_22

    .line 1127
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_23

    .line 1126
    :cond_22
    const/4 v2, 0x4

    .line 1129
    :goto_23
    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v3, :cond_2c

    .line 1130
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    move v0, v1

    move v1, v2

    goto :goto_30

    .line 1129
    :cond_2c
    move v1, v2

    const/4 v0, 0x4

    goto :goto_30

    .line 1134
    :cond_2f
    const/4 v0, 0x4

    :goto_30
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method

.method private static resolveOverlayX(Landroid/app/Activity;I)I
    .registers 7

    .line 1918
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1919
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz v1, :cond_12

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 1920
    :goto_13
    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_2b

    .line 1921
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1922
    invoke-virtual {v1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1923
    aget p0, p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1925
    :cond_2b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1926
    const v1, 0x412b3333    # 10.7f

    .line 1927
    int-to-float v3, p0

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1928
    sub-int/2addr p0, v1

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static restoreSheetAfterPick()V
    .registers 2

    .line 1408
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_5

    .line 1409
    return-void

    .line 1412
    :cond_5
    :try_start_5
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1413
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    .line 1417
    :cond_14
    goto :goto_1b

    .line 1415
    :catchall_15
    move-exception v0

    .line 1416
    const-string v1, "interval_timer_sheet_restore"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1418
    :goto_1b
    return-void
.end method

.method private static saveSettings(Landroid/app/Activity;)V
    .registers 4

    .line 1451
    if-nez p0, :cond_3

    .line 1452
    return-void

    .line 1455
    :cond_3
    :try_start_3
    const-string v0, "interval_timer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1456
    const-string v1, "minutes"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    div-int/lit8 v2, v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1457
    const-string v1, "seconds"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1458
    const-string v1, "train_sec"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1459
    const-string v1, "loops"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1460
    const-string v1, "sound"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1461
    const-string v1, "block_program_mode"

    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1462
    const-string v1, "block_program_repeat"

    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1463
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_63

    const-string v2, "custom_uri"

    if-eqz v1, :cond_53

    .line 1464
    :try_start_49
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_56

    .line 1466
    :cond_53
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1468
    :goto_56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1469
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->save(Landroid/content/Context;ZZLjava/util/ArrayList;)V
    :try_end_62
    .catchall {:try_start_49 .. :try_end_62} :catchall_63

    .line 1472
    goto :goto_69

    .line 1470
    :catchall_63
    move-exception p0

    .line 1471
    const-string v0, "interval_timer_prefs_save"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1473
    :goto_69
    return-void
.end method

.method private static sequenceSeconds()I
    .registers 4

    .line 1115
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveOnOffFromSeed()[I

    move-result-object v0

    .line 1116
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v0

    return v0
.end method

.method private static settingRow(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .registers 8

    .line 818
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 819
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 820
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v2, 0x41880000    # 17.0f

    const/4 v3, 0x1

    invoke-static {p0, p1, v2, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 821
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43660000    # 230.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-direct {p1, p0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    return-object v0
.end method

.method private static showOverlayDialog()Z
    .registers 10

    .line 1556
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    .line 1557
    const/4 v2, 0x0

    if-eqz v1, :cond_152

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_152

    .line 1560
    :cond_10
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1561
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 1564
    :try_start_15
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007a

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_14b

    .line 1568
    nop

    .line 1569
    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 1570
    const v4, 0x7f090243

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 1571
    const v4, 0x7f090239

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 1572
    const v4, 0x7f09023a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 1573
    const v4, 0x7f090278

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1574
    const v4, 0x7f090292

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    .line 1575
    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PauseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PauseOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1576
    const v4, 0x7f090293

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1577
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V

    .line 1578
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 1579
    const/16 v4, 0x124

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 1580
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 1582
    const/4 v6, 0x2

    const/4 v7, 0x1

    :try_start_87
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v8, :cond_99

    .line 1583
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v9, 0x43400000    # 192.0f

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 1584
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxProcess(I)V

    .line 1586
    :cond_99
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v8, :cond_af

    .line 1587
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1588
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    sget-object v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_af
    .catchall {:try_start_87 .. :try_end_af} :catchall_b0

    .line 1591
    :cond_af
    goto :goto_b1

    .line 1590
    :catchall_b0
    move-exception v8

    .line 1592
    :goto_b1
    const v8, 0x7f090294

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1593
    if-eqz v8, :cond_c8

    .line 1594
    invoke-virtual {v8, v7}, Landroid/view/View;->setClickable(Z)V

    .line 1595
    invoke-virtual {v8, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1596
    new-instance v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;

    invoke-direct {v9}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1598
    :cond_c8
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1599
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1600
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1604
    :try_start_d8
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1606
    invoke-virtual {v3, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1607
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1608
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 1609
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1610
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1611
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1612
    if-nez v3, :cond_fc

    .line 1613
    return v2

    .line 1615
    :cond_fc
    const v8, 0x106000d

    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1616
    const v8, 0x800033

    invoke-virtual {v3, v8}, Landroid/view/Window;->setGravity(I)V

    .line 1617
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 1618
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 1619
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1620
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1621
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveOverlayX(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1622
    const/16 v4, 0x12c

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1623
    const/4 v1, 0x0

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1624
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x20

    and-int/lit8 v1, v1, -0x3

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1628
    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 1629
    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1630
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    :try_end_137
    .catchall {:try_start_d8 .. :try_end_137} :catchall_138

    .line 1631
    return v7

    .line 1632
    :catchall_138
    move-exception v1

    .line 1633
    const-string v3, "interval_timer_overlay_show"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1634
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1635
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 1636
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 1637
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 1638
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 1639
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    .line 1640
    return v2

    .line 1565
    :catchall_14b
    move-exception v0

    .line 1566
    const-string v1, "interval_timer_overlay_inflate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1567
    return v2

    .line 1558
    :cond_152
    :goto_152
    return v2
.end method

.method private static showSheet(Landroid/app/Activity;)V
    .registers 4

    .line 680
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 681
    return-void

    .line 683
    :cond_d
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 684
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loadSavedSettings(Landroid/app/Activity;)V

    .line 685
    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x230

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 686
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$1;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 703
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V

    .line 705
    :try_start_43
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 706
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v1, 0x3f666666    # 0.9f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_53

    .line 711
    goto :goto_61

    .line 707
    :catchall_53
    move-exception p0

    .line 708
    const-string v0, "interval_timer_sheet"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    const p0, 0x7f0d0128

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 710
    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 712
    :goto_61
    return-void
.end method

.method private static signalName(Landroid/app/Activity;)Ljava/lang/String;
    .registers 8

    .line 872
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_24

    .line 874
    new-array v2, v0, [I

    fill-array-data v2, :array_3a

    .line 876
    const/4 v3, 0x0

    :goto_d
    const-string v4, ""

    if-ge v3, v0, :cond_23

    .line 877
    aget v5, v1, v3

    sget v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v5, v6, :cond_20

    .line 879
    :try_start_17
    aget v0, v2, v3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1e

    return-object p0

    .line 880
    :catchall_1e
    move-exception p0

    .line 881
    return-object v4

    .line 876
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 885
    :cond_23
    return-object v4

    :array_24
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_3a
    .array-data 4
        0x7f0d012c
        0x7f0d012d
        0x7f0d012e
        0x7f0d012f
        0x7f0d0152
        0x7f0d0153
        0x7f0d0154
        0x7f0d0155
        0x7f0d0130
    .end array-data
.end method

.method private static startRingtonePick(Landroid/view/View;)V
    .registers 6

    .line 1478
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1479
    const v0, 0x7f0d0128

    if-nez p0, :cond_d

    .line 1480
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1481
    return-void

    .line 1483
    :cond_d
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1484
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1486
    const/4 v1, 0x0

    :try_start_14
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1487
    const-string v3, "android.intent.extra.ringtone.TYPE"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1489
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1490
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1491
    const-string v3, "android.intent.extra.ringtone.TITLE"

    const v4, 0x7f0d0155

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz v3, :cond_43

    .line 1493
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1495
    :cond_43
    const/16 v3, 0x4257

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->launchPicker(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_48
    .catchall {:try_start_14 .. :try_end_48} :catchall_49

    .line 1501
    goto :goto_57

    .line 1496
    :catchall_49
    move-exception p0

    .line 1497
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1498
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreSheetAfterPick()V

    .line 1499
    const-string v1, "interval_timer_ringtone_pick"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1500
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1502
    :goto_57
    return-void
.end method

.method private static startSignalPick(Landroid/view/View;)V
    .registers 4

    .line 1506
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1507
    const v0, 0x7f0d0128

    if-nez p0, :cond_d

    .line 1508
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1509
    return-void

    .line 1511
    :cond_d
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1512
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1514
    :try_start_13
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1515
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1517
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1518
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1519
    const/16 v2, 0x4256

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->launchPicker(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_33

    .line 1525
    goto :goto_42

    .line 1520
    :catchall_33
    move-exception p0

    .line 1521
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1522
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreSheetAfterPick()V

    .line 1523
    const-string v1, "interval_timer_pick"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1524
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1526
    :goto_42
    return-void
.end method

.method private static stepFor(I)I
    .registers 2

    .line 956
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_6

    const/4 p0, 0x5

    goto :goto_f

    :cond_6
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_d

    const/16 p0, 0xf

    goto :goto_f

    :cond_d
    const/16 p0, 0x1e

    :goto_f
    return p0
.end method

.method public static syncTrainingState()V
    .registers 2

    .line 373
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingStateImpl()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 376
    goto :goto_a

    .line 374
    :catchall_4
    move-exception v0

    .line 375
    const-string v1, "IntervalTimerHelper.syncTrainingState"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    :goto_a
    return-void
.end method

.method private static syncTrainingStateImpl()V
    .registers 5

    .line 380
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 381
    return-void

    .line 383
    :cond_5
    nop

    .line 385
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_34

    .line 387
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 388
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 389
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_27

    .line 390
    goto :goto_31

    .line 392
    :cond_27
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_35

    if-eqz v3, :cond_31

    .line 393
    nop

    .line 394
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_34

    .line 387
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 399
    :cond_34
    :goto_34
    goto :goto_36

    .line 398
    :catchall_35
    move-exception v0

    .line 400
    :goto_36
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    .line 401
    return-void
.end method

.method private static toast(I)V
    .registers 3

    .line 1976
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1977
    if-nez v0, :cond_8

    .line 1978
    return-void

    .line 1981
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    .line 1983
    goto :goto_12

    .line 1982
    :catchall_11
    move-exception p0

    .line 1984
    :goto_12
    return-void
.end method

.method private static toastText(Ljava/lang/String;)V
    .registers 3

    .line 1544
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1545
    if-eqz v0, :cond_11

    .line 1547
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    .line 1549
    goto :goto_11

    .line 1548
    :catchall_10
    move-exception p0

    .line 1551
    :cond_11
    :goto_11
    return-void
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .line 628
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 629
    if-nez v0, :cond_e

    .line 630
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 631
    return-void

    .line 633
    :cond_e
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 634
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_25

    .line 635
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hasLoadedTraining()Z

    move-result v1

    if-nez v1, :cond_21

    .line 636
    const v0, 0x7f0d011a

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 637
    return-void

    .line 639
    :cond_21
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showSheet(Landroid/app/Activity;)V

    .line 640
    return-void

    .line 642
    :cond_25
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 643
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 644
    return-void
.end method

.method private static toggleTimerPause()V
    .registers 3

    .line 520
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 521
    return-void

    .line 523
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 524
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 525
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_37

    .line 526
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 528
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 531
    :cond_28
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_37

    .line 532
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 533
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 534
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    :cond_37
    :goto_37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 537
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 538
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 539
    return-void
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 242
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    .line 243
    :catchall_5
    move-exception p1

    .line 244
    return-object p0
.end method

.method public static triggerAllStop()V
    .registers 2

    .line 482
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method

.method private static updateCountdownDisplay(J)V
    .registers 5

    .line 1771
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1772
    return-void

    .line 1774
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_f

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 1775
    :cond_f
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    int-to-long p0, p0

    cmp-long v2, v0, p0

    if-eqz v2, :cond_22

    .line 1776
    long-to-int p0, v0

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 1777
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    :cond_22
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .line 1662
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 1663
    return-void

    .line 1666
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v1, :cond_19

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    if-eqz v1, :cond_19

    .line 1667
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1668
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_26

    .line 1670
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1671
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    .line 1675
    :cond_26
    :goto_26
    goto :goto_2d

    .line 1673
    :catchall_27
    move-exception v0

    .line 1674
    const-string v1, "interval_timer_overlay_visibility"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1676
    :goto_2d
    return-void
.end method

.method private static updatePauseButtonLabel()V
    .registers 2

    .line 542
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 543
    return-void

    .line 546
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-eqz v1, :cond_f

    .line 547
    const-string v1, "\u25b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 549
    :cond_f
    const-string v1, "II"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    .line 552
    :goto_14
    goto :goto_16

    .line 551
    :catchall_15
    move-exception v0

    .line 553
    :goto_16
    return-void
.end method
