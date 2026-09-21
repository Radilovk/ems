.class public final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabIntervalListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabBlockListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TimerInfoListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$AdvancedToggleListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundClearListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockRepeatSwitchListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PresetRefreshRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PauseOverlayListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditDoneRunnable;
    }
.end annotation


# static fields
.field static final ALL_STOP_ID:I = 0x7f09003c

.field private static final AUDIO_STREAM:I = 0x3

.field private static final BTN_ANGLE_CLOSE:F = 45.0f

.field private static final BTN_ANGLE_PAUSE:F = 135.0f

.field private static final BTN_ANGLE_RESET:F = 90.0f

.field static final BUTTON_ID:I = 0x7f090230

.field private static final COLOR_TEXT_PRIMARY:I = 0x7f0600e6

.field private static final COLOR_WHITE:I = 0x7f0600be

.field private static final CONFIG_DIALOG_MAX_HEIGHT_DP:I = 0x1a4

.field private static final CONFIG_DIALOG_WIDTH_DP:I = 0x1e0

.field private static final CONTENT_WIDTH_WEIGHT:F = 10.0f

.field private static final COUNTDOWN_TEXT_SP:F = 54.0f

.field static final DIALOG_LAYOUT_ID:I = 0x7f0b0079

.field private static final DRAWABLE_TAB_ACTIVE:I = 0x7f080091

.field private static final DRAWABLE_TAB_INACTIVE:I = 0x7f0800e4

.field private static final DURATION_MAX_SEC:I = 0x258

.field private static final DURATION_MIN_SEC:I = 0x5

.field private static final ID_ACTIVATE:I = 0x7f090236

.field private static final ID_ADVANCED_PANEL:I = 0x7f090272

.field private static final ID_ADVANCED_TOGGLE:I = 0x7f090273

.field private static final ID_BLOCK_DURATION:I = 0x7f090266

.field private static final ID_BLOCK_EDIT:I = 0x7f090262

.field private static final ID_BLOCK_MODE:I = 0x7f090260

.field private static final ID_BLOCK_PANEL:I = 0x7f090265

.field private static final ID_BLOCK_REPEAT:I = 0x7f090261

.field private static final ID_BLOCK_SUMMARY:I = 0x7f090263

.field private static final ID_CLOSE:I = 0x7f090293

.field private static final ID_CONFIG_SCROLL:I = 0x7f090274

.field private static final ID_COUNTDOWN:I = 0x7f090239

.field private static final ID_DIAL_HOST:I = 0x7f090294

.field private static final ID_DURATION_LABEL:I = 0x7f090275

.field private static final ID_DURATION_ROW:I = 0x7f090276

.field private static final ID_INFO:I = 0x7f09028b

.field private static final ID_LOOPS:I = 0x7f090233

.field private static final ID_LOOPS_MINUS:I = 0x7f090234

.field private static final ID_LOOPS_PLUS:I = 0x7f090235

.field private static final ID_LOOP_LABEL:I = 0x7f09023a

.field private static final ID_MINUTES:I = 0x7f090231

.field private static final ID_PAUSE:I = 0x7f090292

.field private static final ID_PRESET_DELETE:I = 0x7f09026a

.field private static final ID_PRESET_EDIT:I = 0x7f090269

.field private static final ID_PRESET_SAVE:I = 0x7f090268

.field private static final ID_PRESET_SPINNER:I = 0x7f090267

.field private static final ID_RESET:I = 0x7f090278

.field private static final ID_RING:I = 0x7f090243

.field private static final ID_SECONDS:I = 0x7f090232

.field private static final ID_SIMPLE_PANEL:I = 0x7f090264

.field private static final ID_SOUND_CLEAR:I = 0x7f090244

.field private static final ID_SOUND_FILE:I = 0x7f09023b

.field private static final ID_SOUND_FILE_ROW:I = 0x7f090245

.field private static final ID_SOUND_PICK:I = 0x7f09023d

.field private static final ID_SOUND_PREVIEW:I = 0x7f09023c

.field private static final ID_SOUND_SPINNER:I = 0x7f09023e

.field private static final ID_STATUS:I = 0x7f090237

.field private static final ID_TAB_BLOCK:I = 0x7f090271

.field private static final ID_TAB_INTERVAL:I = 0x7f090270

.field private static final KEY_BLOCK_MODE:Ljava/lang/String; = "block_program_mode"

.field private static final KEY_BLOCK_REPEAT:Ljava/lang/String; = "block_program_repeat"

.field private static final KEY_CUSTOM_URI:Ljava/lang/String; = "custom_uri"

.field private static final KEY_LOOPS:Ljava/lang/String; = "loops"

.field private static final KEY_MINUTES:Ljava/lang/String; = "minutes"

.field private static final KEY_SECONDS:Ljava/lang/String; = "seconds"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final LOOPS_MAX:I = 0x1e

.field private static final OPAQUE_DIALOG_BG:I = 0x7f080069

.field private static final OVERLAY_BTN_RING_INSET_DP:F = 8.0f

.field private static final OVERLAY_CONTROL_BTN_DP:I = 0x24

.field private static final OVERLAY_FRAME_DP:I = 0xe0

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007a

.field private static final OVERLAY_ROW_Y_DP:I = 0x12c

.field private static final OVERLAY_SIDEBAR_GAP_DP:I = 0x28

.field private static final OVERLAY_SIZE_DP:I = 0xc0

.field private static final OVERLAY_TAP_SLOP_DP:F = 10.0f

.field static final PICK_RINGTONE:I = 0x4257

.field static final PICK_SIGNAL:I = 0x4256

.field private static final PREFS:Ljava/lang/String; = "interval_timer"

.field static final RIGHT_LAYOUT_ID:I = 0x7f090155

.field private static final RING_MAX:I = 0x64

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

.field static final SPINNER_ITEM_LAYOUT_ID:I = 0x7f0b007b

.field private static final STR_ADVANCED:I = 0x7f0d0167

.field private static final STR_BLOCK_DURATION:I = 0x7f0d014e

.field private static final STR_BLOCK_EDIT:I = 0x7f0d0142

.field private static final STR_BLOCK_EMPTY:I = 0x7f0d0150

.field private static final STR_BLOCK_MODE:I = 0x7f0d0140

.field private static final STR_BLOCK_REPEAT:I = 0x7f0d0141

.field private static final STR_BLOCK_SUMMARY:I = 0x7f0d0143

.field private static final STR_BLOCK_TRAIN_TIME:I = 0x7f0d014f

.field private static final STR_DURATION:I = 0x7f0d0163

.field private static final STR_DURATION_TRAIN:I = 0x7f0d0164

.field private static final STR_ERROR:I = 0x7f0d0128

.field private static final STR_INFO_BODY:I = 0x7f0d0176

.field private static final STR_INFO_TITLE:I = 0x7f0d0175

.field private static final STR_INVALID_DURATION:I = 0x7f0d0127

.field private static final STR_NO_TRAINING:I = 0x7f0d011a

.field private static final STR_REPEATS_UNLIMITED:I = 0x7f0d0166

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

.field private static final STR_STATUS_ARMED:I = 0x7f0d0121

.field private static final STR_STATUS_IDLE:I = 0x7f0d0120

.field private static final STR_STATUS_RUNNING:I = 0x7f0d0122

.field private static final STR_TAB_BLOCK:I = 0x7f0d0162

.field private static final STR_TAB_INTERVAL:I = 0x7f0d0161

.field private static final TICK_MS:J = 0x32L

.field private static advancedExpanded:Z

.field private static advancedPanel:Landroid/view/View;

.field private static advancedToggle:Landroid/view/View;

.field private static allStopButton:Landroid/view/View;

.field private static armed:Z

.field private static blockDurationView:Landroid/widget/TextView;

.field private static blockModePanel:Landroid/view/View;

.field private static blockProgramMode:Z

.field private static blockProgramRepeat:Z

.field private static blockRepeatSwitch:Landroid/widget/Switch;

.field private static blockSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;"
        }
    .end annotation
.end field

.field private static blockSummaryView:Landroid/widget/TextView;

.field private static configContent:Landroid/view/View;

.field private static configDialog:Landroid/support/v7/app/AlertDialog;

.field private static countdownRunning:Z

.field private static countdownView:Landroid/widget/TextView;

.field private static currentLoop:I

.field private static customSignalUri:Landroid/net/Uri;

.field private static durationLabelView:Landroid/widget/TextView;

.field private static durationRow:Landroid/view/View;

.field private static final handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static ignoreSpinnerCallback:Z

.field private static intervalMs:J

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastDisplayedCountdownSec:I

.field private static lastTickRealtime:J

.field private static loopLabelView:Landroid/widget/TextView;

.field private static loopsView:Landroid/widget/EditText;

.field private static maxLoops:I

.field private static minutesView:Landroid/widget/EditText;

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

.field private static presetSpinner:Landroid/widget/Spinner;

.field private static remainingMs:J

.field private static ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

.field private static savedMinutes:I

.field private static savedSeconds:I

.field private static secondsView:Landroid/widget/EditText;

.field private static selectedSound:I

.field private static signalPlayer:Landroid/media/MediaPlayer;

.field private static simpleModePanel:Landroid/view/View;

.field private static soundBeforePick:I

.field private static soundClearBtn:Landroid/view/View;

.field private static soundFileRow:Landroid/view/View;

.field private static soundFileView:Landroid/widget/TextView;

.field private static soundPickBtn:Landroid/view/View;

.field private static soundSpinner:Landroid/widget/Spinner;

.field private static statusView:Landroid/widget/TextView;

.field private static tabBlockBtn:Landroid/view/View;

.field private static tabIntervalBtn:Landroid/view/View;

.field private static final tickRunnable:Ljava/lang/Runnable;

.field private static timerPausedByUser:Z

.field private static trainingRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    .line 224
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 225
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 229
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 232
    const/16 v0, 0x1e

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 236
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectModeTab(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    return-void
.end method

.method static synthetic access$1100()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetCurrentInterval()V

    return-void
.end method

.method static synthetic access$1200()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleTimerPause()V

    return-void
.end method

.method static synthetic access$1300()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->disarmTimerKeepSettings()V

    return-void
.end method

.method static synthetic access$1402(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 44
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1500()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$1600()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$1700()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .registers 1

    .line 44
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    return p0
.end method

.method static synthetic access$1800()I
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return p0
.end method

.method static synthetic access$1900()I
    .registers 1

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedExpanded:Z

    return v0
.end method

.method static synthetic access$2000()Landroid/net/Uri;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 44
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedExpanded:Z

    return p0
.end method

.method static synthetic access$2100(I)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    return-void
.end method

.method static synthetic access$2200()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    return-void
.end method

.method static synthetic access$2300()Landroid/widget/Spinner;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/view/View;)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startRingtonePick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/view/View;)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2600()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 44
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2802(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 44
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2900()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clearConfigRefs()V

    return-void
.end method

.method static synthetic access$300()Landroid/view/View;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3000()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3100()F
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$3102(F)F
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$3200()F
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$3202(F)F
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$3300()F
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$3302(F)F
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$3400()F
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$3402(F)F
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$3500()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$3502(Z)Z
    .registers 1

    .line 44
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$3600(Landroid/app/Activity;I)I
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(II)V
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$3800()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->openOverlaySettings()V

    return-void
.end method

.method static synthetic access$3900()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->finishArm()V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshAdvancedToggleLabel(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$4000()Landroid/view/View;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    return-void
.end method

.method static synthetic access$4200()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    return-void
.end method

.method static synthetic access$4300()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    return v0
.end method

.method static synthetic access$4400()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    return v0
.end method

.method static synthetic access$4500()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    return v0
.end method

.method static synthetic access$4600()J
    .registers 2

    .line 44
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide v0
.end method

.method static synthetic access$4602(J)J
    .registers 2

    .line 44
    sput-wide p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide p0
.end method

.method static synthetic access$4700()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    return v0
.end method

.method static synthetic access$4800()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    return-void
.end method

.method static synthetic access$4900()Ljava/lang/Runnable;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5000()Landroid/os/Handler;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .line 44
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    return p0
.end method

.method static synthetic access$5100()J
    .registers 2

    .line 44
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$5122(J)J
    .registers 4

    .line 44
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    sub-long/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$5200()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V

    return-void
.end method

.method static synthetic access$600()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V

    return-void
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method private static applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V
    .registers 2

    .line 1024
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 1028
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 1030
    goto :goto_15

    .line 1029
    :catchall_14
    move-exception p0

    .line 1031
    :goto_15
    return-void

    .line 1025
    :cond_16
    :goto_16
    return-void
.end method

.method static applyPreset(Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 3

    .line 259
    if-nez p0, :cond_3

    .line 260
    return-void

    .line 262
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 263
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 264
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 265
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 266
    if-ltz v0, :cond_19

    const/16 v1, 0x8

    if-le v0, v1, :cond_1c

    .line 267
    :cond_19
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 269
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_30

    .line 271
    :cond_2f
    const/4 v0, 0x0

    :goto_30
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 272
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 273
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_4b

    :cond_46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_4b
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    .line 275
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncDurationFieldsFromValues()V

    .line 276
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_59

    .line 277
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 279
    :cond_59
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V

    .line 280
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V

    .line 281
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 282
    return-void
.end method

.method private static armFromConfig()V
    .registers 14

    .line 548
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hasLoadedTraining()Z

    move-result v0

    if-nez v0, :cond_d

    .line 549
    const v0, 0x7f0d011a

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 550
    return-void

    .line 552
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readDurationTotalSec()I

    move-result v0

    .line 553
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncDurationFieldsFromValues()V

    .line 554
    div-int/lit8 v1, v0, 0x3c

    .line 555
    rem-int/lit8 v0, v0, 0x3c

    .line 556
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 557
    const/16 v3, 0x8

    const/4 v4, 0x7

    if-eq v2, v3, :cond_25

    if-ne v2, v4, :cond_38

    :cond_25
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v2, :cond_38

    .line 559
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v0, v4, :cond_31

    const v0, 0x7f0d0156

    goto :goto_34

    :cond_31
    const v0, 0x7f0d0133

    :goto_34
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 560
    return-void

    .line 562
    :cond_38
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    :goto_47
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 563
    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    const v5, 0x7f0d0127

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_c1

    .line 564
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    if-eqz v2, :cond_ba

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5f

    goto :goto_ba

    .line 568
    :cond_5f
    mul-int/lit8 v2, v1, 0x3c

    add-int/2addr v2, v0

    .line 569
    sget-boolean v10, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v10, :cond_6c

    if-gtz v2, :cond_6c

    .line 570
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 571
    return-void

    .line 573
    :cond_6c
    sget-boolean v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-nez v5, :cond_7e

    .line 574
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveOnOffFromSeed()[I

    move-result-object v2

    .line 575
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    aget v10, v2, v4

    aget v2, v2, v3

    invoke-static {v5, v10, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v2

    .line 578
    :cond_7e
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    sget-object v10, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    sget-boolean v11, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v5, v10, v11, v12}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->arm(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/util/ArrayList;ZI)V

    .line 579
    int-to-long v10, v2

    mul-long v10, v10, v8

    sput-wide v10, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 580
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 581
    invoke-static {v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->saveSettings(Landroid/app/Activity;II)V

    .line 582
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 583
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 584
    sput v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 585
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 586
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 587
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 588
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 589
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 590
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 591
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    return-void

    .line 565
    :cond_ba
    :goto_ba
    const v0, 0x7f0d0150

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 566
    return-void

    .line 594
    :cond_c1
    if-nez v1, :cond_c9

    if-nez v0, :cond_c9

    .line 595
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 596
    return-void

    .line 598
    :cond_c9
    int-to-long v10, v1

    const-wide/16 v12, 0x3c

    mul-long v10, v10, v12

    int-to-long v12, v0

    add-long/2addr v10, v12

    mul-long v10, v10, v8

    sput-wide v10, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 599
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 600
    invoke-static {v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->saveSettings(Landroid/app/Activity;II)V

    .line 601
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 602
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 603
    sput v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 604
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 605
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 606
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 607
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 608
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 609
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 610
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 611
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 301
    if-eqz p0, :cond_2f

    if-nez p1, :cond_5

    goto :goto_2f

    .line 304
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    .line 305
    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 306
    const p1, 0x7f09003c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    .line 307
    const p1, 0x7f090230

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 308
    if-nez p0, :cond_1c

    .line 309
    return-void

    .line 311
    :cond_1c
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 312
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 313
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 314
    new-instance p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;

    invoke-direct {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void

    .line 302
    :cond_2f
    :goto_2f
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1649
    if-nez p0, :cond_3

    .line 1650
    return-void

    .line 1652
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1653
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1654
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1655
    return-void
.end method

.method private static capConfigDialogScroll(Landroid/app/Activity;Landroid/view/View;)I
    .registers 7

    .line 696
    const/4 v0, 0x0

    if-eqz p0, :cond_8e

    if-nez p1, :cond_7

    goto/16 :goto_8e

    .line 699
    :cond_7
    const/4 v1, 0x0

    .line 700
    instance-of v2, p1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_10

    .line 701
    move-object v1, p1

    check-cast v1, Landroid/widget/ScrollView;

    goto :goto_1e

    .line 703
    :cond_10
    const v2, 0x7f090274

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 704
    instance-of v2, p1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1e

    .line 705
    move-object v1, p1

    check-cast v1, Landroid/widget/ScrollView;

    .line 708
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p1

    const/4 v2, 0x1

    if-ge p1, v2, :cond_28

    goto :goto_8d

    .line 711
    :cond_28
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 712
    const/16 v2, 0x1a4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 713
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v4, 0x3f59999a    # 0.85f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 714
    if-lez v3, :cond_48

    if-ge v3, v2, :cond_48

    .line 715
    move v2, v3

    .line 717
    :cond_48
    const/16 v3, 0x1e0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    .line 718
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 719
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 720
    invoke-virtual {p1, v4, v0}, Landroid/view/View;->measure(II)V

    .line 721
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 722
    if-le p1, v2, :cond_62

    goto :goto_63

    :cond_62
    move v2, p1

    .line 723
    :goto_63
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 724
    if-nez p1, :cond_6f

    .line 725
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_73

    .line 727
    :cond_6f
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 728
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 730
    :goto_73
    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    nop

    .line 732
    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 733
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 731
    invoke-virtual {v1, p0, p1}, Landroid/widget/ScrollView;->measure(II)V

    .line 734
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p0

    if-lez p0, :cond_8c

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    :cond_8c
    return v2

    .line 709
    :cond_8d
    :goto_8d
    return v0

    .line 697
    :cond_8e
    :goto_8e
    return v0
.end method

.method static captureCurrentPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 4

    .line 285
    new-instance v0, Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;-><init>()V

    .line 286
    if-eqz p0, :cond_8

    goto :goto_c

    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->newId()Ljava/lang/String;

    move-result-object p0

    :goto_c
    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 287
    const-string p0, ""

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move-object p1, p0

    :goto_14
    iput-object p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 288
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readDurationTotalSec()I

    move-result p1

    .line 289
    div-int/lit8 v1, p1, 0x3c

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    .line 290
    rem-int/lit8 p1, p1, 0x3c

    iput p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    .line 291
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result p1

    iput p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    .line 292
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result p1

    iput p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    .line 293
    sget-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_36
    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    .line 294
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    iput-boolean p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    .line 295
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_48

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_48

    const/4 p0, 0x1

    goto :goto_49

    :cond_48
    const/4 p0, 0x0

    :goto_49
    iput-boolean p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    .line 296
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    if-eqz p0, :cond_57

    new-instance p0, Ljava/util/ArrayList;

    sget-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5c

    :cond_57
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_5c
    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    .line 297
    return-object v0
.end method

.method private static clearConfigRefs()V
    .registers 1

    .line 983
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Landroid/widget/EditText;

    .line 984
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Landroid/widget/EditText;

    .line 985
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsView:Landroid/widget/EditText;

    .line 986
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationLabelView:Landroid/widget/TextView;

    .line 987
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationRow:Landroid/view/View;

    .line 988
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabIntervalBtn:Landroid/view/View;

    .line 989
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabBlockBtn:Landroid/view/View;

    .line 990
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedPanel:Landroid/view/View;

    .line 991
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    .line 992
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    .line 993
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    .line 994
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileRow:Landroid/view/View;

    .line 995
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    .line 996
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    .line 997
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    .line 998
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->presetSpinner:Landroid/widget/Spinner;

    .line 999
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->simpleModePanel:Landroid/view/View;

    .line 1000
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockModePanel:Landroid/view/View;

    .line 1001
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSummaryView:Landroid/widget/TextView;

    .line 1002
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockDurationView:Landroid/widget/TextView;

    .line 1003
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    .line 1004
    return-void
.end method

.method private static disarmTimerKeepSettings()V
    .registers 3

    .line 492
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 493
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 494
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 495
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 496
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 497
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 498
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 499
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 500
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 501
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 502
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 503
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 504
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 505
    return-void
.end method

.method private static dismissConfigDialog(Z)V
    .registers 2

    .line 969
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 971
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 973
    goto :goto_9

    .line 972
    :catchall_8
    move-exception v0

    .line 974
    :goto_9
    if-nez p0, :cond_17

    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    if-nez p0, :cond_17

    .line 975
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 976
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 977
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clearConfigRefs()V

    .line 980
    :cond_17
    return-void
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 2

    .line 1007
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_18

    .line 1009
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 1011
    goto :goto_9

    .line 1010
    :catchall_8
    move-exception v0

    .line 1012
    :goto_9
    if-nez p0, :cond_18

    .line 1013
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1014
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 1015
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 1016
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 1017
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 1018
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    .line 1021
    :cond_18
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 1673
    if-nez p0, :cond_3

    .line 1674
    return p1

    .line 1676
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 1677
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static finishArm()V
    .registers 4

    .line 614
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 615
    return-void

    .line 617
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showOverlayDialog()Z

    move-result v0

    const-string v1, "interval_timer"

    if-nez v0, :cond_1e

    .line 618
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 619
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 620
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 621
    const-string v0, "overlay dialog failed"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void

    .line 624
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 625
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 626
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

    .line 629
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_56

    .line 630
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    .line 632
    :cond_56
    return-void
.end method

.method private static formatSeconds(J)Ljava/lang/String;
    .registers 6

    .line 1614
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 1615
    move-wide p0, v0

    .line 1617
    :cond_7
    const-wide/16 v0, 0x3c

    div-long v2, p0, v0

    .line 1618
    rem-long/2addr p0, v0

    .line 1619
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

    .line 365
    const/4 v0, -0x1

    if-ne p0, v0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    .line 370
    :cond_6
    const-string p0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    .line 371
    if-nez p0, :cond_18

    .line 372
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 373
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 374
    return-void

    .line 376
    :cond_18
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 377
    const/4 p0, 0x7

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 379
    const-string p0, "interval_timer"

    const-string p1, "device signal uri set"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void

    .line 366
    :cond_28
    :goto_28
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 367
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 368
    return-void
.end method

.method private static handleSignalFileResult(ILandroid/content/Intent;)V
    .registers 4

    .line 330
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4b

    if-nez p1, :cond_6

    goto :goto_4b

    .line 335
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 336
    if-nez p0, :cond_14

    .line 337
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 338
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 339
    return-void

    .line 341
    :cond_14
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 342
    const/16 v0, 0x8

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 344
    const/4 v0, 0x0

    :try_start_1b
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_39

    .line 346
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_3a

    and-int/lit8 p1, p1, 0x3

    .line 349
    if-eqz p1, :cond_39

    .line 351
    :try_start_2b
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_33

    .line 354
    goto :goto_39

    .line 352
    :catchall_33
    move-exception p0

    .line 353
    :try_start_34
    const-string p1, "interval_timer_uri_persist"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3a

    .line 359
    :cond_39
    :goto_39
    goto :goto_40

    .line 357
    :catchall_3a
    move-exception p0

    .line 358
    const-string p1, "interval_timer_uri_grant"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    :goto_40
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 361
    const-string p0, "interval_timer"

    const-string p1, "custom signal uri set"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void

    .line 331
    :cond_4b
    :goto_4b
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 333
    return-void
.end method

.method private static hasLoadedTraining()Z
    .registers 1

    .line 544
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

.method private static layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V
    .registers 12

    .line 1682
    if-eqz p0, :cond_5b

    if-nez p1, :cond_5

    goto :goto_5b

    .line 1685
    :cond_5
    const v0, 0x7f090293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1686
    const v0, 0x7f090278

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1687
    const v2, 0x7f090292

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1688
    const/16 v2, 0xe0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 1689
    const/16 v3, 0xc0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    .line 1690
    const/16 v4, 0x24

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    .line 1691
    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/16 v5, 0x8

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v3, p0

    int-to-float p0, v8

    div-float/2addr p0, v4

    sub-float p0, v3, p0

    .line 1692
    int-to-float v2, v2

    div-float v9, v2, v4

    .line 1693
    nop

    .line 1694
    const/high16 v2, 0x42340000    # 45.0f

    move v3, v9

    move v4, v9

    move v5, p0

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1695
    const/high16 v3, 0x42b40000    # 90.0f

    move-object v2, v0

    move v5, v9

    move v6, p0

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1696
    const/high16 v4, 0x43070000    # 135.0f

    move-object v3, p1

    move v6, v9

    move v7, p0

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1697
    return-void

    .line 1683
    :cond_5b
    :goto_5b
    return-void
.end method

.method private static loadSavedSettings(Landroid/app/Activity;)V
    .registers 7

    .line 1154
    if-nez p0, :cond_3

    .line 1155
    return-void

    .line 1158
    :cond_3
    :try_start_3
    const-string v0, "interval_timer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1159
    const-string v2, "minutes"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1160
    const-string v2, "seconds"

    const/16 v3, 0x1e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1161
    const-string v2, "loops"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 1162
    const-string v2, "sound"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 1163
    const-string v2, "custom_uri"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1164
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_40

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_40
    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 1165
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    if-gez v2, :cond_48

    .line 1166
    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1168
    :cond_48
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    const/16 v4, 0x3b

    if-le v2, v4, :cond_50

    .line 1169
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1171
    :cond_50
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    if-gez v2, :cond_56

    .line 1172
    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1174
    :cond_56
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    if-le v2, v4, :cond_5c

    .line 1175
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1177
    :cond_5c
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz v2, :cond_66

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/16 v4, 0x8

    if-le v2, v4, :cond_68

    .line 1178
    :cond_66
    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 1180
    :cond_68
    const-string v2, "block_program_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 1181
    const-string v2, "block_program_repeat"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 1182
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->loadBlocks(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    .line 1183
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    int-to-long v0, p0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 1184
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_94

    goto :goto_96

    :cond_94
    const-wide/16 v0, 0x7530

    :goto_96
    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J
    :try_end_98
    .catchall {:try_start_3 .. :try_end_98} :catchall_99

    .line 1187
    goto :goto_9f

    .line 1185
    :catchall_99
    move-exception p0

    .line 1186
    const-string v0, "interval_timer_prefs_load"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1188
    :goto_9f
    return-void
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .line 1051
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 1052
    return-void

    .line 1054
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1055
    if-nez v0, :cond_c

    .line 1056
    return-void

    .line 1059
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1060
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1061
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1062
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    .line 1065
    goto :goto_1e

    .line 1063
    :catchall_18
    move-exception p0

    .line 1064
    const-string p1, "interval_timer_overlay_move"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1066
    :goto_1e
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 318
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 319
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    .line 320
    const/16 v0, 0x4256

    if-ne p0, v0, :cond_e

    .line 321
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handleSignalFileResult(ILandroid/content/Intent;)V

    .line 322
    return-void

    .line 324
    :cond_e
    const/16 v0, 0x4257

    if-ne p0, v0, :cond_15

    .line 325
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handleRingtoneResult(ILandroid/content/Intent;)V

    .line 327
    :cond_15
    return-void
.end method

.method private static onIntervalFinished()V
    .registers 2

    .line 1446
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-lez v0, :cond_c

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lt v1, v0, :cond_c

    .line 1447
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 1448
    return-void

    .line 1450
    :cond_c
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 1451
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1452
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 1453
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 1454
    return-void
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 4

    .line 408
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 409
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_a

    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 411
    return-void

    .line 413
    :cond_a
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 414
    if-eqz p0, :cond_3d

    .line 415
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->onTrainingStart()V

    .line 416
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 417
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez p0, :cond_4a

    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-nez p0, :cond_4a

    .line 418
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 420
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a

    .line 423
    :cond_3d
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz p0, :cond_4a

    .line 424
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 425
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 427
    :cond_4a
    :goto_4a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 428
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 429
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 430
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 431
    return-void

    .line 433
    :cond_57
    if-eqz p0, :cond_85

    .line 434
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez p0, :cond_92

    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-nez p0, :cond_92

    .line 435
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-gtz p0, :cond_6e

    .line 436
    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 437
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 438
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 440
    :cond_6e
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 442
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_92

    .line 445
    :cond_85
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz p0, :cond_92

    .line 446
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 447
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 449
    :cond_92
    :goto_92
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 451
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 452
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 453
    return-void
.end method

.method public static onTrainingStop()V
    .registers 0

    .line 456
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 457
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    .line 458
    return-void
.end method

.method private static openOverlaySettings()V
    .registers 1

    .line 635
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 636
    if-nez v0, :cond_e

    .line 637
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 638
    return-void

    .line 640
    :cond_e
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 641
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 642
    return-void
.end method

.method private static placeDialButton(Landroid/view/View;FFFFI)V
    .registers 10

    .line 1701
    if-nez p0, :cond_3

    .line 1702
    return-void

    .line 1704
    :cond_3
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1705
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

    .line 1706
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p4, p4, v0

    sub-float/2addr p3, p4

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1707
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1708
    const p4, 0x800033

    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1709
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1710
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1711
    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1712
    const/high16 p1, 0x40800000    # 4.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 1713
    return-void
.end method

.method public static playBlockSignal()V
    .registers 0

    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 467
    return-void
.end method

.method private static playBuiltInTone(I)V
    .registers 5

    .line 1469
    packed-switch p0, :pswitch_data_38

    .line 1489
    return-void

    .line 1486
    :pswitch_4
    const/16 p0, 0x56

    .line 1487
    goto :goto_16

    .line 1483
    :pswitch_7
    const/16 p0, 0x29

    .line 1484
    goto :goto_16

    .line 1480
    :pswitch_a
    const/16 p0, 0x1b

    .line 1481
    goto :goto_16

    .line 1477
    :pswitch_d
    const/16 p0, 0x5d

    .line 1478
    goto :goto_16

    .line 1474
    :pswitch_10
    const/16 p0, 0x19

    .line 1475
    goto :goto_16

    .line 1471
    :pswitch_13
    const/16 p0, 0x18

    .line 1472
    nop

    .line 1492
    :goto_16
    :try_start_16
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1493
    const/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1494
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v2, 0x226

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_30

    .line 1497
    goto :goto_36

    .line 1495
    :catchall_30
    move-exception p0

    .line 1496
    const-string v0, "interval_timer_tone"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1498
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

    .line 1501
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 1502
    return-void

    .line 1504
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1505
    if-nez v0, :cond_d

    .line 1506
    return-void

    .line 1508
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 1510
    :try_start_10
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 1511
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1512
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1513
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1514
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1515
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1516
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1517
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_48

    .line 1521
    goto :goto_51

    .line 1518
    :catchall_48
    move-exception v0

    .line 1519
    const-string v1, "interval_timer_custom_signal"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1520
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 1522
    :goto_51
    return-void
.end method

.method private static playSignal()V
    .registers 2

    .line 1457
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-nez v0, :cond_5

    .line 1458
    return-void

    .line 1460
    :cond_5
    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    goto :goto_11

    .line 1464
    :cond_d
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBuiltInTone(I)V

    .line 1465
    return-void

    .line 1461
    :cond_11
    :goto_11
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playCustomSignal()V

    .line 1462
    return-void
.end method

.method private static readDurationTotalSec()I
    .registers 4

    .line 1302
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readEditField(Landroid/widget/EditText;II)I

    move-result v0

    .line 1303
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Landroid/widget/EditText;

    const/16 v3, 0x3b

    invoke-static {v2, v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readEditField(Landroid/widget/EditText;II)I

    move-result v1

    .line 1304
    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    .line 1305
    const/4 v1, 0x5

    if-ge v0, v1, :cond_18

    .line 1306
    const/4 v0, 0x5

    .line 1308
    :cond_18
    const/16 v1, 0x258

    if-le v0, v1, :cond_1e

    .line 1309
    const/16 v0, 0x258

    .line 1311
    :cond_1e
    div-int/lit8 v1, v0, 0x3c

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1312
    rem-int/lit8 v1, v0, 0x3c

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1313
    return v0
.end method

.method private static readEditField(Landroid/widget/EditText;II)I
    .registers 4

    .line 1627
    if-nez p0, :cond_3

    .line 1628
    return p1

    .line 1631
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_16
    const-string p0, ""

    .line 1632
    :goto_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    .line 1633
    return p1

    .line 1635
    :cond_1f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2a

    .line 1636
    if-ge p0, p1, :cond_26

    .line 1637
    return p1

    .line 1639
    :cond_26
    if-le p0, p2, :cond_29

    .line 1640
    return p2

    .line 1642
    :cond_29
    return p0

    .line 1643
    :catchall_2a
    move-exception p0

    .line 1644
    return p1
.end method

.method private static readLoopsInput()I
    .registers 3

    .line 1623
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsView:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readEditField(Landroid/widget/EditText;II)I

    move-result v0

    return v0
.end method

.method private static readSoundSelection()I
    .registers 1

    .line 859
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    .line 860
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0

    .line 862
    :cond_9
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return v0
.end method

.method private static refreshAdvancedToggleLabel(Landroid/app/Activity;)V
    .registers 3

    .line 1317
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    if-eqz v0, :cond_30

    if-nez p0, :cond_7

    goto :goto_30

    .line 1320
    :cond_7
    const v0, 0x7f0d0167

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1321
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedExpanded:Z

    if-eqz v0, :cond_1a

    .line 1322
    const/16 v0, 0x25be

    const/16 v1, 0x25b4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1324
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_26

    .line 1325
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .line 1326
    :cond_26
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_2f

    .line 1327
    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1329
    :cond_2f
    :goto_2f
    return-void

    .line 1318
    :cond_30
    :goto_30
    return-void
.end method

.method public static refreshBlockOverlay()V
    .registers 1

    .line 461
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 462
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 463
    return-void
.end method

.method private static refreshBlockOverlayRing()V
    .registers 8

    .line 1100
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-nez v0, :cond_5

    .line 1101
    return-void

    .line 1104
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockTotalMs()J

    move-result-wide v0

    .line 1105
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockRemainingMs()J

    move-result-wide v2

    .line 1106
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

    .line 1107
    :goto_19
    cmpg-float v0, v2, v6

    if-gez v0, :cond_1e

    .line 1108
    goto :goto_1f

    .line 1107
    :cond_1e
    move v6, v2

    .line 1110
    :goto_1f
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, v6, v0

    if-lez v1, :cond_27

    .line 1111
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1113
    :cond_27
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    sub-float/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 1114
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    .line 1115
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    .line 1118
    :cond_3a
    goto :goto_3c

    .line 1117
    :catchall_3b
    move-exception v0

    .line 1119
    :goto_3c
    return-void
.end method

.method private static refreshBlockSummary()V
    .registers 8

    .line 1332
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSummaryView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1333
    return-void

    .line 1335
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1336
    if-nez v0, :cond_d

    .line 1337
    return-void

    .line 1339
    :cond_d
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 1340
    :goto_18
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSummaryView:Landroid/widget/TextView;

    const v4, 0x7f0d0143

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-virtual {v0, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockDurationView:Landroid/widget/TextView;

    if-eqz v1, :cond_a0

    .line 1342
    const/4 v1, 0x2

    new-array v3, v1, [I

    fill-array-data v3, :array_a2

    .line 1343
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v4

    .line 1344
    if-eqz v4, :cond_67

    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 1345
    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 1346
    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 1347
    iget v6, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v6, :cond_5f

    .line 1348
    iget v6, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    aput v6, v3, v2

    .line 1350
    :cond_5f
    iget v6, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v6, :cond_67

    .line 1351
    iget v4, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    aput v4, v3, v5

    .line 1354
    :cond_67
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    aget v6, v3, v2

    aget v3, v3, v5

    invoke-static {v4, v6, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v3

    .line 1355
    sget-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v4, :cond_82

    .line 1356
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockDurationView:Landroid/widget/TextView;

    const v2, 0x7f0d014f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a0

    .line 1358
    :cond_82
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockDurationView:Landroid/widget/TextView;

    const v6, 0x7f0d014e

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit8 v7, v3, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    :cond_a0
    :goto_a0
    return-void

    nop

    :array_a2
    .array-data 4
        0x4
        0x4
    .end array-data
.end method

.method private static refreshModeTabHighlight()V
    .registers 2

    .line 1239
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabIntervalBtn:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->styleModeTab(Landroid/view/View;Z)V

    .line 1240
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabBlockBtn:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->styleModeTab(Landroid/view/View;Z)V

    .line 1241
    return-void
.end method

.method private static refreshOverlayRing()V
    .registers 7

    .line 1122
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_3e

    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    goto :goto_3e

    .line 1126
    :cond_d
    :try_start_d
    sget-wide v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_15

    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1127
    :cond_15
    long-to-float v0, v0

    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 1128
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_20

    .line 1129
    const/4 v0, 0x0

    .line 1131
    :cond_20
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_28

    .line 1132
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1134
    :cond_28
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 1135
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v1, :cond_3b

    .line 1136
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_3c

    .line 1139
    :cond_3b
    goto :goto_3d

    .line 1138
    :catchall_3c
    move-exception v0

    .line 1140
    :goto_3d
    return-void

    .line 1123
    :cond_3e
    :goto_3e
    return-void
.end method

.method private static refreshOverlayText()V
    .registers 8

    .line 1069
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1070
    return-void

    .line 1072
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

    .line 1073
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockRemainingMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateCountdownDisplay(J)V

    .line 1074
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_65

    .line 1075
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockIndex()I

    move-result v0

    add-int/2addr v0, v2

    .line 1076
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1077
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCyclesDone()I

    move-result v4

    add-int/2addr v4, v2

    .line 1078
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCurrentBlockCycles()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1079
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

    .line 1081
    :cond_65
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlayRing()V

    .line 1082
    return-void

    .line 1084
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

    .line 1085
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_c6

    .line 1086
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v3, :cond_85

    .line 1087
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c6

    .line 1088
    :cond_85
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    const-string v3, "#"

    if-gtz v0, :cond_a5

    .line 1089
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_90

    move v2, v0

    .line 1090
    :cond_90
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    goto :goto_c6

    .line 1092
    :cond_a5
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_aa

    move v2, v0

    .line 1093
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

    .line 1096
    :cond_c6
    :goto_c6
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayRing()V

    .line 1097
    return-void
.end method

.method private static refreshSoundUi()V
    .registers 7

    .line 1395
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v0, v3, :cond_e

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    .line 1396
    :goto_f
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    if-eqz v5, :cond_23

    .line 1397
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1398
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    if-eqz v0, :cond_1d

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_1d
    const v6, 0x3ee66666    # 0.45f

    :goto_20
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1400
    :cond_23
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileRow:Landroid/view/View;

    if-eqz v5, :cond_30

    .line 1401
    if-eqz v0, :cond_2b

    const/4 v6, 0x0

    goto :goto_2d

    :cond_2b
    const/16 v6, 0x8

    :goto_2d
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1403
    :cond_30
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    if-eqz v5, :cond_68

    if-eqz v0, :cond_68

    .line 1404
    sget-object v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v6, :cond_4a

    .line 1405
    nop

    .line 1406
    sget v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v6, v1, :cond_43

    const v1, 0x7f0d0156

    goto :goto_46

    :cond_43
    const v1, 0x7f0d0133

    .line 1405
    :goto_46
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_68

    .line 1408
    :cond_4a
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 1409
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_57

    goto :goto_5d

    .line 1412
    :cond_57
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 1410
    :cond_5d
    :goto_5d
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1416
    :cond_68
    :goto_68
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    if-eqz v1, :cond_72

    .line 1417
    if-eqz v0, :cond_6f

    const/4 v3, 0x0

    :cond_6f
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    :cond_72
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_8b

    .line 1420
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 1421
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz v1, :cond_89

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_89

    .line 1422
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1424
    :cond_89
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 1426
    :cond_8b
    return-void
.end method

.method private static refreshStatusText()V
    .registers 2

    .line 1382
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1383
    return-void

    .line 1385
    :cond_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_10

    .line 1386
    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 1387
    :cond_10
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v1, :cond_1b

    .line 1388
    const v1, 0x7f0d0122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 1390
    :cond_1b
    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1392
    :goto_21
    return-void
.end method

.method private static releaseSignalPlayer()V
    .registers 1

    .line 1525
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 1526
    return-void

    .line 1529
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 1531
    goto :goto_a

    .line 1530
    :catchall_9
    move-exception v0

    .line 1533
    :goto_a
    :try_start_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 1535
    goto :goto_11

    .line 1534
    :catchall_10
    move-exception v0

    .line 1536
    :goto_11
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 1537
    return-void
.end method

.method private static resetAll()V
    .registers 3

    .line 474
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 475
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 476
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 477
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 478
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 479
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 480
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 481
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 482
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 483
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 484
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 485
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 486
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 487
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 488
    return-void
.end method

.method private static resetCurrentInterval()V
    .registers 2

    .line 1429
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 1430
    return-void

    .line 1432
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1433
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resetCurrentBlockCountdown()V

    goto :goto_17

    .line 1435
    :cond_13
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1437
    :goto_17
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 1438
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_28

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_28

    .line 1439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 1441
    :cond_28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 1442
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 1443
    return-void
.end method

.method private static resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 665
    if-eqz p0, :cond_3

    .line 666
    return-object p0

    .line 668
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_10

    .line 669
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0

    .line 671
    :cond_10
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_21

    .line 672
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 673
    if-eqz p0, :cond_21

    .line 674
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 675
    return-object p0

    .line 678
    :cond_21
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_32

    .line 679
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 680
    if-eqz p0, :cond_32

    .line 681
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 682
    return-object p0

    .line 685
    :cond_32
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz p0, :cond_3f

    .line 686
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 687
    if-eqz p0, :cond_3f

    .line 688
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 689
    return-object p0

    .line 692
    :cond_3f
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private static resolveOnOffFromSeed()[I
    .registers 4

    .line 1364
    nop

    .line 1365
    nop

    .line 1366
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1367
    const/4 v1, 0x4

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1368
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1369
    if-eqz v0, :cond_2f

    .line 1370
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v2, :cond_22

    .line 1371
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_23

    .line 1370
    :cond_22
    const/4 v2, 0x4

    .line 1373
    :goto_23
    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v3, :cond_2c

    .line 1374
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    move v0, v1

    move v1, v2

    goto :goto_30

    .line 1373
    :cond_2c
    move v1, v2

    const/4 v0, 0x4

    goto :goto_30

    .line 1378
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

    .line 1659
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1660
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz v1, :cond_12

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 1661
    :goto_13
    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_2b

    .line 1662
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1663
    invoke-virtual {v1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1664
    aget p0, p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1666
    :cond_2b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1667
    const v1, 0x412b3333    # 10.7f

    .line 1668
    int-to-float v3, p0

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1669
    sub-int/2addr p0, v1

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static restoreConfigDialogAfterPick()V
    .registers 2

    .line 955
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 956
    if-nez v0, :cond_5

    .line 957
    return-void

    .line 960
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_e

    .line 961
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 965
    :cond_e
    goto :goto_15

    .line 963
    :catchall_f
    move-exception v0

    .line 964
    const-string v1, "interval_timer_dialog_restore"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 966
    :goto_15
    return-void
.end method

.method private static saveSettings(Landroid/app/Activity;II)V
    .registers 5

    .line 1191
    if-nez p0, :cond_3

    .line 1192
    return-void

    .line 1194
    :cond_3
    sput p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1195
    sput p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1197
    :try_start_7
    const-string v0, "interval_timer"

    const/4 v1, 0x0

    .line 1198
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1199
    const-string v1, "minutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1200
    const-string p1, "seconds"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1201
    const-string p1, "loops"

    sget p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1202
    const-string p1, "sound"

    sget p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1203
    const-string p1, "block_program_mode"

    sget-boolean p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1204
    const-string p1, "block_program_repeat"

    sget-boolean p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1205
    sget-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_58

    const-string p2, "custom_uri"

    if-eqz p1, :cond_48

    .line 1206
    :try_start_3e
    sget-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4b

    .line 1208
    :cond_48
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1210
    :goto_4b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1211
    sget-boolean p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    sget-boolean p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->save(Landroid/content/Context;ZZLjava/util/ArrayList;)V
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_58

    .line 1214
    goto :goto_5e

    .line 1212
    :catchall_58
    move-exception p0

    .line 1213
    const-string p1, "interval_timer_prefs_save"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1215
    :goto_5e
    return-void
.end method

.method private static selectModeTab(Z)V
    .registers 1

    .line 1264
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 1265
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V

    .line 1266
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V

    .line 1267
    return-void
.end method

.method private static setEditQuiet(Landroid/widget/EditText;I)V
    .registers 2

    .line 1292
    if-nez p0, :cond_3

    .line 1293
    return-void

    .line 1296
    :cond_3
    :try_start_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    .line 1298
    goto :goto_c

    .line 1297
    :catchall_b
    move-exception p0

    .line 1299
    :goto_c
    return-void
.end method

.method private static setupSoundSpinner(Landroid/app/Activity;)V
    .registers 7

    .line 832
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_5

    .line 833
    return-void

    .line 835
    :cond_5
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f0d012c

    .line 836
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d012d

    .line 837
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const v5, 0x7f0d012e

    .line 838
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const v5, 0x7f0d012f

    .line 839
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const v5, 0x7f0d0152

    .line 840
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const v5, 0x7f0d0153

    .line 841
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const v5, 0x7f0d0154

    .line 842
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const v5, 0x7f0d0155

    .line 843
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const v5, 0x7f0d0130

    .line 844
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 846
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0b007b

    invoke-direct {v2, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 848
    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 849
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 850
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 851
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz p0, :cond_81

    if-ge p0, v0, :cond_81

    .line 852
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 854
    :cond_81
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 855
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 856
    return-void
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 10

    .line 738
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 739
    return-void

    .line 741
    :cond_b
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 742
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loadSavedSettings(Landroid/app/Activity;)V

    .line 743
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 746
    :try_start_14
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_205

    .line 751
    nop

    .line 752
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 753
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->capConfigDialogScroll(Landroid/app/Activity;Landroid/view/View;)I

    move-result v2

    .line 754
    const v3, 0x7f090237

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    .line 755
    const v3, 0x7f09023b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    .line 756
    const v3, 0x7f090245

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileRow:Landroid/view/View;

    .line 757
    const v3, 0x7f09023e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    .line 758
    const v3, 0x7f09023d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    .line 759
    const v3, 0x7f090244

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    .line 760
    const v3, 0x7f090276

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationRow:Landroid/view/View;

    .line 761
    const v3, 0x7f090275

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationLabelView:Landroid/widget/TextView;

    .line 762
    const v3, 0x7f090231

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Landroid/widget/EditText;

    .line 763
    const v3, 0x7f090232

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Landroid/widget/EditText;

    .line 764
    const v3, 0x7f090233

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsView:Landroid/widget/EditText;

    .line 765
    const v3, 0x7f090270

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabIntervalBtn:Landroid/view/View;

    .line 766
    const v3, 0x7f090271

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabBlockBtn:Landroid/view/View;

    .line 767
    const v3, 0x7f090272

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedPanel:Landroid/view/View;

    .line 768
    const v3, 0x7f090273

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    .line 769
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncDurationFieldsFromValues()V

    .line 770
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabIntervalBtn:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabIntervalListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabIntervalListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 771
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabBlockBtn:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabBlockListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabBlockListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 772
    const v3, 0x7f09028b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TimerInfoListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TimerInfoListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 773
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$AdvancedToggleListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$AdvancedToggleListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 774
    const v3, 0x7f090236

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 775
    const v3, 0x7f09023c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 776
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 777
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundClearListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundClearListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 778
    const v3, 0x7f090264

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->simpleModePanel:Landroid/view/View;

    .line 779
    const v3, 0x7f090265

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockModePanel:Landroid/view/View;

    .line 780
    const v3, 0x7f090263

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSummaryView:Landroid/widget/TextView;

    .line 781
    const v3, 0x7f090266

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockDurationView:Landroid/widget/TextView;

    .line 782
    const v3, 0x7f090261

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    .line 783
    const v3, 0x7f090262

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 784
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_16b

    .line 785
    sget-boolean v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 786
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockRepeatSwitchListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockRepeatSwitchListener;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 788
    :cond_16b
    if-eqz v3, :cond_175

    .line 789
    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditListener;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    :cond_175
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedPanel:Landroid/view/View;

    if-eqz v3, :cond_183

    .line 792
    sget-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedExpanded:Z

    if-eqz v4, :cond_17e

    goto :goto_180

    :cond_17e
    const/16 v0, 0x8

    :goto_180
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 794
    :cond_183
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshAdvancedToggleLabel(Landroid/app/Activity;)V

    .line 795
    const v0, 0x7f090267

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Spinner;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->presetSpinner:Landroid/widget/Spinner;

    .line 796
    const v0, 0x7f090268

    .line 799
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f090269

    .line 800
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f09026a

    .line 801
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PresetRefreshRunnable;

    invoke-direct {v8}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PresetRefreshRunnable;-><init>()V

    .line 796
    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->bind(Landroid/app/Activity;Landroid/widget/Spinner;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 803
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V

    .line 804
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V

    .line 805
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->setupSoundSpinner(Landroid/app/Activity;)V

    .line 806
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 807
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 808
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 810
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 811
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 812
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 813
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 814
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 815
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 817
    :try_start_1e3
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_1fd

    .line 819
    const/16 v1, 0x1e0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    .line 820
    if-lez v2, :cond_1f4

    .line 821
    goto :goto_1f5

    .line 822
    :cond_1f4
    const/4 v2, -0x2

    .line 823
    :goto_1f5
    invoke-virtual {v0, p0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 824
    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/view/Window;->setGravity(I)V
    :try_end_1fd
    .catchall {:try_start_1e3 .. :try_end_1fd} :catchall_1fe

    .line 827
    :cond_1fd
    goto :goto_1ff

    .line 826
    :catchall_1fe
    move-exception p0

    .line 828
    :goto_1ff
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 829
    return-void

    .line 747
    :catchall_205
    move-exception p0

    .line 748
    const-string v0, "interval_timer_config"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    const p0, 0x7f0d0128

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 750
    return-void
.end method

.method private static showOverlayDialog()Z
    .registers 10

    .line 866
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    .line 867
    const/4 v2, 0x0

    if-eqz v1, :cond_152

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_152

    .line 870
    :cond_10
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 871
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 874
    :try_start_15
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007a

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_14b

    .line 878
    nop

    .line 879
    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 880
    const v4, 0x7f090243

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 881
    const v4, 0x7f090239

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 882
    const v4, 0x7f09023a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 883
    const v4, 0x7f090278

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 884
    const v4, 0x7f090292

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    .line 885
    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PauseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PauseOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 886
    const v4, 0x7f090293

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 887
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V

    .line 888
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 889
    const/16 v4, 0xe0

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 890
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 892
    const/4 v6, 0x2

    const/4 v7, 0x1

    :try_start_87
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v8, :cond_99

    .line 893
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v9, 0x43400000    # 192.0f

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 894
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxProcess(I)V

    .line 896
    :cond_99
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v8, :cond_af

    .line 897
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 898
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    sget-object v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_af
    .catchall {:try_start_87 .. :try_end_af} :catchall_b0

    .line 901
    :cond_af
    goto :goto_b1

    .line 900
    :catchall_b0
    move-exception v8

    .line 902
    :goto_b1
    const v8, 0x7f090294

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 903
    if-eqz v8, :cond_c8

    .line 904
    invoke-virtual {v8, v7}, Landroid/view/View;->setClickable(Z)V

    .line 905
    invoke-virtual {v8, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 906
    new-instance v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;

    invoke-direct {v9}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 908
    :cond_c8
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 909
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 910
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 914
    :try_start_d8
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 916
    invoke-virtual {v3, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 917
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 918
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 919
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 920
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 921
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 922
    if-nez v3, :cond_fc

    .line 923
    return v2

    .line 925
    :cond_fc
    const v8, 0x106000d

    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 926
    const v8, 0x800033

    invoke-virtual {v3, v8}, Landroid/view/Window;->setGravity(I)V

    .line 927
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 928
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 929
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 930
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 931
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveOverlayX(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 932
    const/16 v4, 0x12c

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 933
    const/4 v1, 0x0

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 934
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x20

    and-int/lit8 v1, v1, -0x3

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 938
    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 939
    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 940
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    :try_end_137
    .catchall {:try_start_d8 .. :try_end_137} :catchall_138

    .line 941
    return v7

    .line 942
    :catchall_138
    move-exception v1

    .line 943
    const-string v3, "interval_timer_overlay_show"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 944
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 945
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 946
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 947
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 948
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 949
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    .line 950
    return v2

    .line 875
    :catchall_14b
    move-exception v0

    .line 876
    const-string v1, "interval_timer_overlay_inflate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 877
    return v2

    .line 868
    :cond_152
    :goto_152
    return v2
.end method

.method private static startRingtonePick(Landroid/view/View;)V
    .registers 7

    .line 1540
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1541
    const v0, 0x7f0d0128

    if-nez p0, :cond_d

    .line 1542
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1543
    return-void

    .line 1545
    :cond_d
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1546
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1547
    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1b

    .line 1548
    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1551
    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1552
    const-string v5, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1557
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1558
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1559
    const-string v2, "android.intent.extra.ringtone.TITLE"

    const v5, 0x7f0d0155

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz v2, :cond_49

    .line 1561
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1563
    :cond_49
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1564
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    :try_end_4d
    .catchall {:try_start_1c .. :try_end_4d} :catchall_5c

    if-eqz v2, :cond_56

    .line 1566
    :try_start_4f
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_55

    .line 1568
    goto :goto_56

    .line 1567
    :catchall_55
    move-exception v2

    .line 1570
    :cond_56
    :goto_56
    const/16 v2, 0x4257

    :try_start_58
    invoke-virtual {p0, v4, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    .line 1576
    goto :goto_6a

    .line 1571
    :catchall_5c
    move-exception p0

    .line 1572
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1573
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    .line 1574
    const-string v1, "interval_timer_ringtone_pick"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1575
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1577
    :goto_6a
    return-void
.end method

.method private static startSignalPick(Landroid/view/View;)V
    .registers 5

    .line 1581
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1582
    const v0, 0x7f0d0128

    if-nez p0, :cond_d

    .line 1583
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1584
    return-void

    .line 1586
    :cond_d
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1587
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1588
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1c

    .line 1589
    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1592
    :cond_1c
    :try_start_1c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1593
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1596
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1597
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1598
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_48

    if-eqz v2, :cond_42

    .line 1600
    :try_start_3b
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_41

    .line 1602
    goto :goto_42

    .line 1601
    :catchall_41
    move-exception v2

    .line 1604
    :cond_42
    :goto_42
    const/16 v2, 0x4256

    :try_start_44
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    .line 1610
    goto :goto_57

    .line 1605
    :catchall_48
    move-exception p0

    .line 1606
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1607
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    .line 1608
    const-string v1, "interval_timer_pick"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1609
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1611
    :goto_57
    return-void
.end method

.method private static styleModeTab(Landroid/view/View;Z)V
    .registers 4

    .line 1244
    if-nez p0, :cond_3

    .line 1245
    return-void

    .line 1247
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1249
    if-eqz p1, :cond_e

    const v0, 0x7f080091

    goto :goto_11

    :cond_e
    const v0, 0x7f0800e4

    :goto_11
    :try_start_11
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    .line 1251
    goto :goto_16

    .line 1250
    :catchall_15
    move-exception v0

    .line 1252
    :goto_16
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_41

    .line 1253
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 1254
    if-eqz p1, :cond_23

    const v1, 0x7f0600be

    goto :goto_26

    :cond_23
    const v1, 0x7f0600e6

    .line 1256
    :goto_26
    :try_start_26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_36

    .line 1259
    goto :goto_41

    .line 1257
    :catchall_36
    move-exception p0

    .line 1258
    if-eqz p1, :cond_3b

    const/4 p0, -0x1

    goto :goto_3e

    :cond_3b
    const p0, -0xc5c5c6

    :goto_3e
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1261
    :cond_41
    :goto_41
    return-void
.end method

.method private static syncDurationFieldsFromValues()V
    .registers 2

    .line 1270
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    mul-int/lit8 v0, v0, 0x3c

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    add-int/2addr v0, v1

    .line 1271
    const/4 v1, 0x5

    if-ge v0, v1, :cond_b

    .line 1272
    const/4 v0, 0x5

    .line 1274
    :cond_b
    const/16 v1, 0x258

    if-le v0, v1, :cond_11

    .line 1275
    const/16 v0, 0x258

    .line 1277
    :cond_11
    div-int/lit8 v1, v0, 0x3c

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1278
    rem-int/lit8 v0, v0, 0x3c

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1279
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->setEditQuiet(Landroid/widget/EditText;I)V

    .line 1280
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Landroid/widget/EditText;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->setEditQuiet(Landroid/widget/EditText;I)V

    .line 1281
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 1282
    if-gez v0, :cond_2a

    .line 1283
    const/4 v0, 0x0

    .line 1285
    :cond_2a
    const/16 v1, 0x1e

    if-le v0, v1, :cond_30

    .line 1286
    const/16 v0, 0x1e

    .line 1288
    :cond_30
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsView:Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->setEditQuiet(Landroid/widget/EditText;I)V

    .line 1289
    return-void
.end method

.method public static syncTrainingState()V
    .registers 5

    .line 384
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 385
    return-void

    .line 387
    :cond_5
    nop

    .line 389
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_34

    .line 391
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 392
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 393
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_27

    .line 394
    goto :goto_31

    .line 396
    :cond_27
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_35

    if-eqz v3, :cond_31

    .line 397
    nop

    .line 398
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_34

    .line 391
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 403
    :cond_34
    :goto_34
    goto :goto_36

    .line 402
    :catchall_35
    move-exception v0

    .line 404
    :goto_36
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    .line 405
    return-void
.end method

.method private static toast(I)V
    .registers 3

    .line 1716
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1717
    if-nez v0, :cond_8

    .line 1718
    return-void

    .line 1721
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    .line 1723
    goto :goto_12

    .line 1722
    :catchall_11
    move-exception p0

    .line 1724
    :goto_12
    return-void
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .line 645
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 646
    if-nez v0, :cond_15

    .line 647
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 648
    const-string v0, "interval_timer"

    const-string v1, "toggle: no activity"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-void

    .line 651
    :cond_15
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 652
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_2c

    .line 653
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hasLoadedTraining()Z

    move-result v1

    if-nez v1, :cond_28

    .line 654
    const v0, 0x7f0d011a

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 655
    return-void

    .line 657
    :cond_28
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 658
    return-void

    .line 660
    :cond_2c
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 661
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 662
    return-void
.end method

.method private static toggleTimerPause()V
    .registers 3

    .line 508
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 509
    return-void

    .line 511
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 512
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 513
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_37

    .line 514
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 516
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 519
    :cond_28
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_37

    .line 520
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 521
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 522
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    :cond_37
    :goto_37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 525
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 526
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 527
    return-void
.end method

.method public static triggerAllStop()V
    .registers 2

    .line 470
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method private static updateCountdownDisplay(J)V
    .registers 5

    .line 1143
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1144
    return-void

    .line 1146
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_f

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 1147
    :cond_f
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    int-to-long p0, p0

    cmp-long v2, v0, p0

    if-eqz v2, :cond_22

    .line 1148
    long-to-int p0, v0

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 1149
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    :cond_22
    return-void
.end method

.method private static updateModePanels()V
    .registers 5

    .line 1218
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    const/16 v0, 0x8

    .line 1219
    :goto_b
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v3, :cond_12

    const/16 v3, 0x8

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 1220
    :goto_13
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockModePanel:Landroid/view/View;

    if-eqz v4, :cond_1a

    .line 1221
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->simpleModePanel:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 1224
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    :cond_21
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationRow:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 1227
    nop

    .line 1228
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v3, :cond_31

    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v3, :cond_2f

    goto :goto_31

    :cond_2f
    const/16 v1, 0x8

    .line 1227
    :cond_31
    :goto_31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    :cond_34
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1231
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_52

    if-eqz v0, :cond_52

    .line 1232
    nop

    .line 1233
    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v2, :cond_48

    const v2, 0x7f0d0164

    goto :goto_4b

    :cond_48
    const v2, 0x7f0d0163

    :goto_4b
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1232
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    :cond_52
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshModeTabHighlight()V

    .line 1236
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .line 1034
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 1035
    return-void

    .line 1038
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v1, :cond_19

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    if-eqz v1, :cond_19

    .line 1039
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1040
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_26

    .line 1042
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1043
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    .line 1047
    :cond_26
    :goto_26
    goto :goto_2d

    .line 1045
    :catchall_27
    move-exception v0

    .line 1046
    const-string v1, "interval_timer_overlay_visibility"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1048
    :goto_2d
    return-void
.end method

.method private static updatePauseButtonLabel()V
    .registers 2

    .line 530
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 531
    return-void

    .line 534
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-eqz v1, :cond_f

    .line 535
    const-string v1, "\u25b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 537
    :cond_f
    const-string v1, "\u23f8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    .line 540
    :goto_14
    goto :goto_16

    .line 539
    :catchall_15
    move-exception v0

    .line 541
    :goto_16
    return-void
.end method
