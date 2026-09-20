.class public final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$DurationSliderListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsSliderListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabIntervalListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabBlockListener;,
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

.field static final BUTTON_ID:I = 0x7f090230

.field private static final CONFIG_DIALOG_MAX_HEIGHT_DP:I = 0x208

.field private static final CONFIG_DIALOG_WIDTH_DP:I = 0x118

.field private static final COUNTDOWN_TEXT_SP:F = 54.0f

.field static final DIALOG_LAYOUT_ID:I = 0x7f0b0079

.field private static final DURATION_MAX_SEC:I = 0x258

.field private static final DURATION_MIN_SEC:I = 0x5

.field private static final DURATION_SLIDER_MAX:I = 0x77

.field private static final DURATION_STEP_SEC:I = 0x5

.field private static final ID_ACTIVATE:I = 0x7f090236

.field private static final ID_ADVANCED_PANEL:I = 0x7f090272

.field private static final ID_ADVANCED_TOGGLE:I = 0x7f090273

.field private static final ID_BLOCK_DURATION:I = 0x7f090266

.field private static final ID_BLOCK_EDIT:I = 0x7f090262

.field private static final ID_BLOCK_MODE:I = 0x7f090260

.field private static final ID_BLOCK_PANEL:I = 0x7f090265

.field private static final ID_BLOCK_REPEAT:I = 0x7f090261

.field private static final ID_BLOCK_SUMMARY:I = 0x7f090263

.field private static final ID_CONFIG_SCROLL:I = 0x7f090274

.field private static final ID_COUNTDOWN:I = 0x7f090239

.field private static final ID_DURATION_LABEL:I = 0x7f090275

.field private static final ID_DURATION_ROW:I = 0x7f090276

.field private static final ID_DURATION_SLIDER:I = 0x7f09026b

.field private static final ID_DURATION_VALUE:I = 0x7f09026c

.field private static final ID_LOOPS:I = 0x7f090233

.field private static final ID_LOOPS_MINUS:I = 0x7f090234

.field private static final ID_LOOPS_PLUS:I = 0x7f090235

.field private static final ID_LOOPS_SLIDER:I = 0x7f09026d

.field private static final ID_LOOPS_VALUE:I = 0x7f09026e

.field private static final ID_LOOP_LABEL:I = 0x7f09023a

.field private static final ID_MINUTES:I = 0x7f090231

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

.field private static final LOOPS_SLIDER_MAX:I = 0x1e

.field private static final OPAQUE_DIALOG_BG:I = 0x7f080069

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007a

.field private static final OVERLAY_RESET_BTN_DP:I = 0x2c

.field private static final OVERLAY_RESET_GAP_DP:I = 0x4

.field private static final OVERLAY_SIZE_DP:I = 0xc0

.field private static final OVERLAY_TAP_SLOP_DP:F = 10.0f

.field private static final OVERLAY_WIDTH_DP:I = 0xf0

.field static final PICK_RINGTONE:I = 0x4257

.field static final PICK_SIGNAL:I = 0x4256

.field private static final PREFS:Ljava/lang/String; = "interval_timer"

.field private static final RING_MAX:I = 0x64

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

.field private static durationSlider:Landroid/widget/SeekBar;

.field private static durationValueView:Landroid/widget/TextView;

.field private static final handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static ignoreDurationSlider:Z

.field private static ignoreLoopsSlider:Z

.field private static ignoreSpinnerCallback:Z

.field private static intervalMs:J

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastDisplayedCountdownSec:I

.field private static lastTickRealtime:J

.field private static loopLabelView:Landroid/widget/TextView;

.field private static loopsSlider:Landroid/widget/SeekBar;

.field private static loopsValueView:Landroid/widget/TextView;

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

.field private static pickingSignal:Z

.field private static presetSpinner:Landroid/widget/Spinner;

.field private static remainingMs:J

.field private static ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

.field private static savedMinutes:I

.field private static savedSeconds:I

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

.field private static trainingRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 197
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    .line 207
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 208
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 212
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 215
    const/16 v0, 0x1e

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 219
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectModeTab(Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreDurationSlider:Z

    return v0
.end method

.method static synthetic access$1000()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V

    return-void
.end method

.method static synthetic access$1100()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V

    return-void
.end method

.method static synthetic access$1200()Ljava/util/ArrayList;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method static synthetic access$1400()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    return-void
.end method

.method static synthetic access$1500()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetCurrentInterval()V

    return-void
.end method

.method static synthetic access$1602(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 44
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1700()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$1800()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$1900()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .registers 1

    .line 44
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    return p0
.end method

.method static synthetic access$200(I)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshDurationDisplay(I)V

    return-void
.end method

.method static synthetic access$2000()I
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return p0
.end method

.method static synthetic access$2100()I
    .registers 1

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200()Landroid/net/Uri;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2300(I)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    return-void
.end method

.method static synthetic access$2400()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    return-void
.end method

.method static synthetic access$2500()Landroid/widget/Spinner;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/view/View;)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startRingtonePick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/view/View;)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2800()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    return v0
.end method

.method static synthetic access$2902(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 44
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreLoopsSlider:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 44
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3100()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clearConfigRefs()V

    return-void
.end method

.method static synthetic access$3200()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3300()F
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$3302(F)F
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$3400()F
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$3402(F)F
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$3500()F
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$3502(F)F
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$3600()F
    .registers 1

    .line 44
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$3602(F)F
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$3700()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$3702(Z)Z
    .registers 1

    .line 44
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$3800(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Landroid/app/Activity;I)I
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4000(II)V
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$402(I)I
    .registers 1

    .line 44
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    return p0
.end method

.method static synthetic access$4100()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->openOverlaySettings()V

    return-void
.end method

.method static synthetic access$4200()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->finishArm()V

    return-void
.end method

.method static synthetic access$4300()Landroid/view/View;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    return-void
.end method

.method static synthetic access$4500()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    return-void
.end method

.method static synthetic access$4600()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    return v0
.end method

.method static synthetic access$4700()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    return v0
.end method

.method static synthetic access$4800()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    return v0
.end method

.method static synthetic access$4900()J
    .registers 2

    .line 44
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide v0
.end method

.method static synthetic access$4902(J)J
    .registers 2

    .line 44
    sput-wide p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide p0
.end method

.method static synthetic access$500(I)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshLoopsDisplay(I)V

    return-void
.end method

.method static synthetic access$5000()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    return v0
.end method

.method static synthetic access$5100()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    return-void
.end method

.method static synthetic access$5200()Ljava/lang/Runnable;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5300()Landroid/os/Handler;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5400()J
    .registers 2

    .line 44
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$5422(J)J
    .registers 4

    .line 44
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    sub-long/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$5500()V
    .registers 0

    .line 44
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V

    return-void
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedExpanded:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1

    .line 44
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedExpanded:Z

    return p0
.end method

.method static synthetic access$700()Landroid/view/View;
    .registers 1

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/Activity;)V
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshAdvancedToggleLabel(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .line 44
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    return p0
.end method

.method private static applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V
    .registers 2

    .line 950
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 954
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 956
    goto :goto_15

    .line 955
    :catchall_14
    move-exception p0

    .line 957
    :goto_15
    return-void

    .line 951
    :cond_16
    :goto_16
    return-void
.end method

.method static applyPreset(Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 3

    .line 244
    if-nez p0, :cond_3

    .line 245
    return-void

    .line 247
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 248
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 249
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 250
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 251
    if-ltz v0, :cond_19

    const/16 v1, 0x8

    if-le v0, v1, :cond_1c

    .line 252
    :cond_19
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 254
    :cond_1c
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_30

    .line 256
    :cond_2f
    const/4 v0, 0x0

    :goto_30
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 257
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 258
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 259
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

    .line 260
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncDurationSliderFromValues()V

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncLoopsSliderFromValues()V

    .line 262
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_5c

    .line 263
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 265
    :cond_5c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V

    .line 266
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V

    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 268
    return-void
.end method

.method private static armFromConfig()V
    .registers 14

    .line 478
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hasLoadedTraining()Z

    move-result v0

    if-nez v0, :cond_d

    .line 479
    const v0, 0x7f0d011a

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 480
    return-void

    .line 482
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readDurationTotalSec()I

    move-result v0

    .line 483
    div-int/lit8 v1, v0, 0x3c

    .line 484
    rem-int/lit8 v0, v0, 0x3c

    .line 485
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 486
    const/16 v3, 0x8

    const/4 v4, 0x7

    if-eq v2, v3, :cond_22

    if-ne v2, v4, :cond_35

    :cond_22
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v2, :cond_35

    .line 488
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v0, v4, :cond_2e

    const v0, 0x7f0d0156

    goto :goto_31

    :cond_2e
    const v0, 0x7f0d0133

    :goto_31
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 489
    return-void

    .line 491
    :cond_35
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 492
    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    const v5, 0x7f0d0127

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_bc

    .line 493
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_b5

    .line 497
    :cond_5c
    mul-int/lit8 v2, v1, 0x3c

    add-int/2addr v2, v0

    .line 498
    sget-boolean v10, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v10, :cond_69

    if-gtz v2, :cond_69

    .line 499
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 500
    return-void

    .line 502
    :cond_69
    sget-boolean v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-nez v5, :cond_7b

    .line 503
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveOnOffFromSeed()[I

    move-result-object v2

    .line 504
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    aget v10, v2, v4

    aget v2, v2, v3

    invoke-static {v5, v10, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v2

    .line 507
    :cond_7b
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    sget-object v10, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    sget-boolean v11, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v5, v10, v11, v12}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->arm(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/util/ArrayList;ZI)V

    .line 508
    int-to-long v10, v2

    mul-long v10, v10, v8

    sput-wide v10, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 509
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 510
    invoke-static {v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->saveSettings(Landroid/app/Activity;II)V

    .line 511
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 512
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 513
    sput v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 514
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 515
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 516
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 517
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 518
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 519
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    return-void

    .line 494
    :cond_b5
    :goto_b5
    const v0, 0x7f0d0150

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 495
    return-void

    .line 522
    :cond_bc
    if-nez v1, :cond_c4

    if-nez v0, :cond_c4

    .line 523
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 524
    return-void

    .line 526
    :cond_c4
    int-to-long v10, v1

    const-wide/16 v12, 0x3c

    mul-long v10, v10, v12

    int-to-long v12, v0

    add-long/2addr v10, v12

    mul-long v10, v10, v8

    sput-wide v10, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 527
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 528
    invoke-static {v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->saveSettings(Landroid/app/Activity;II)V

    .line 529
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 530
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 531
    sput v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 532
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 533
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 534
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 535
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 536
    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 537
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 287
    if-eqz p0, :cond_2f

    if-nez p1, :cond_5

    goto :goto_2f

    .line 290
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    .line 291
    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 292
    const p1, 0x7f09003c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    .line 293
    const p1, 0x7f090230

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 294
    if-nez p0, :cond_1c

    .line 295
    return-void

    .line 297
    :cond_1c
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 298
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 299
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 300
    new-instance p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;

    invoke-direct {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void

    .line 288
    :cond_2f
    :goto_2f
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1556
    if-nez p0, :cond_3

    .line 1557
    return-void

    .line 1559
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1560
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1561
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1562
    return-void
.end method

.method private static capConfigDialogScroll(Landroid/app/Activity;Landroid/view/View;)I
    .registers 7

    .line 623
    const/4 v0, 0x0

    if-eqz p0, :cond_8e

    if-nez p1, :cond_7

    goto/16 :goto_8e

    .line 626
    :cond_7
    const/4 v1, 0x0

    .line 627
    instance-of v2, p1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_10

    .line 628
    move-object v1, p1

    check-cast v1, Landroid/widget/ScrollView;

    goto :goto_1e

    .line 630
    :cond_10
    const v2, 0x7f090274

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 631
    instance-of v2, p1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1e

    .line 632
    move-object v1, p1

    check-cast v1, Landroid/widget/ScrollView;

    .line 635
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result p1

    const/4 v2, 0x1

    if-ge p1, v2, :cond_28

    goto :goto_8d

    .line 638
    :cond_28
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 639
    const/16 v2, 0x208

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 640
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    const v4, 0x3f59999a    # 0.85f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 641
    if-lez v3, :cond_48

    if-ge v3, v2, :cond_48

    .line 642
    move v2, v3

    .line 644
    :cond_48
    const/16 v3, 0x118

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    .line 645
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 646
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 647
    invoke-virtual {p1, v4, v0}, Landroid/view/View;->measure(II)V

    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 649
    if-le p1, v2, :cond_62

    goto :goto_63

    :cond_62
    move v2, p1

    .line 650
    :goto_63
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 651
    if-nez p1, :cond_6f

    .line 652
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_73

    .line 654
    :cond_6f
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 655
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 657
    :goto_73
    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    nop

    .line 659
    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 660
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 658
    invoke-virtual {v1, p0, p1}, Landroid/widget/ScrollView;->measure(II)V

    .line 661
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p0

    if-lez p0, :cond_8c

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    :cond_8c
    return v2

    .line 636
    :cond_8d
    :goto_8d
    return v0

    .line 624
    :cond_8e
    :goto_8e
    return v0
.end method

.method static captureCurrentPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;
    .registers 4

    .line 271
    new-instance v0, Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;-><init>()V

    .line 272
    if-eqz p0, :cond_8

    goto :goto_c

    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->newId()Ljava/lang/String;

    move-result-object p0

    :goto_c
    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 273
    const-string p0, ""

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move-object p1, p0

    :goto_14
    iput-object p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 274
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readDurationTotalSec()I

    move-result p1

    .line 275
    div-int/lit8 v1, p1, 0x3c

    iput v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    .line 276
    rem-int/lit8 p1, p1, 0x3c

    iput p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    .line 277
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result p1

    iput p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result p1

    iput p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    .line 279
    sget-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_36
    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    .line 280
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    iput-boolean p0, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    .line 281
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

    .line 282
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

    .line 283
    return-object v0
.end method

.method private static clearConfigRefs()V
    .registers 1

    .line 909
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationSlider:Landroid/widget/SeekBar;

    .line 910
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsSlider:Landroid/widget/SeekBar;

    .line 911
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationValueView:Landroid/widget/TextView;

    .line 912
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationLabelView:Landroid/widget/TextView;

    .line 913
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsValueView:Landroid/widget/TextView;

    .line 914
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationRow:Landroid/view/View;

    .line 915
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabIntervalBtn:Landroid/view/View;

    .line 916
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabBlockBtn:Landroid/view/View;

    .line 917
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedPanel:Landroid/view/View;

    .line 918
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    .line 919
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    .line 920
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    .line 921
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileRow:Landroid/view/View;

    .line 922
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    .line 923
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    .line 924
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    .line 925
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->presetSpinner:Landroid/widget/Spinner;

    .line 926
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->simpleModePanel:Landroid/view/View;

    .line 927
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockModePanel:Landroid/view/View;

    .line 928
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSummaryView:Landroid/widget/TextView;

    .line 929
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockDurationView:Landroid/widget/TextView;

    .line 930
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    .line 931
    return-void
.end method

.method private static dismissConfigDialog(Z)V
    .registers 2

    .line 895
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 897
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 899
    goto :goto_9

    .line 898
    :catchall_8
    move-exception v0

    .line 900
    :goto_9
    if-nez p0, :cond_17

    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    if-nez p0, :cond_17

    .line 901
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 902
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 903
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clearConfigRefs()V

    .line 906
    :cond_17
    return-void
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 2

    .line 934
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 936
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 938
    goto :goto_9

    .line 937
    :catchall_8
    move-exception v0

    .line 939
    :goto_9
    if-nez p0, :cond_16

    .line 940
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 941
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 942
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 943
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 944
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 947
    :cond_16
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 1565
    if-nez p0, :cond_3

    .line 1566
    return p1

    .line 1568
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 1569
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static finishArm()V
    .registers 4

    .line 541
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 542
    return-void

    .line 544
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showOverlayDialog()Z

    move-result v0

    const-string v1, "interval_timer"

    if-nez v0, :cond_1e

    .line 545
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 546
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 547
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 548
    const-string v0, "overlay dialog failed"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void

    .line 551
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 552
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 553
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

    .line 556
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_56

    .line 557
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    .line 559
    :cond_56
    return-void
.end method

.method private static formatSeconds(J)Ljava/lang/String;
    .registers 6

    .line 1540
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 1541
    move-wide p0, v0

    .line 1543
    :cond_7
    const-wide/16 v0, 0x3c

    div-long v2, p0, v0

    .line 1544
    rem-long/2addr p0, v0

    .line 1545
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

    .line 351
    const/4 v0, -0x1

    if-ne p0, v0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    .line 356
    :cond_6
    const-string p0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    .line 357
    if-nez p0, :cond_18

    .line 358
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 359
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 360
    return-void

    .line 362
    :cond_18
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 363
    const/4 p0, 0x7

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 364
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 365
    const-string p0, "interval_timer"

    const-string p1, "device signal uri set"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void

    .line 352
    :cond_28
    :goto_28
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 353
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 354
    return-void
.end method

.method private static handleSignalFileResult(ILandroid/content/Intent;)V
    .registers 4

    .line 316
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4b

    if-nez p1, :cond_6

    goto :goto_4b

    .line 321
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 322
    if-nez p0, :cond_14

    .line 323
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 324
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 325
    return-void

    .line 327
    :cond_14
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 328
    const/16 v0, 0x8

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 330
    const/4 v0, 0x0

    :try_start_1b
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_39

    .line 332
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_3a

    and-int/lit8 p1, p1, 0x3

    .line 335
    if-eqz p1, :cond_39

    .line 337
    :try_start_2b
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_33

    .line 340
    goto :goto_39

    .line 338
    :catchall_33
    move-exception p0

    .line 339
    :try_start_34
    const-string p1, "interval_timer_uri_persist"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3a

    .line 345
    :cond_39
    :goto_39
    goto :goto_40

    .line 343
    :catchall_3a
    move-exception p0

    .line 344
    const-string p1, "interval_timer_uri_grant"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    :goto_40
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 347
    const-string p0, "interval_timer"

    const-string p1, "custom signal uri set"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void

    .line 317
    :cond_4b
    :goto_4b
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 318
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 319
    return-void
.end method

.method private static hasLoadedTraining()Z
    .registers 1

    .line 474
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

.method private static loadSavedSettings(Landroid/app/Activity;)V
    .registers 7

    .line 1080
    if-nez p0, :cond_3

    .line 1081
    return-void

    .line 1084
    :cond_3
    :try_start_3
    const-string v0, "interval_timer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1085
    const-string v2, "minutes"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1086
    const-string v2, "seconds"

    const/16 v3, 0x1e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1087
    const-string v2, "loops"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 1088
    const-string v2, "sound"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 1089
    const-string v2, "custom_uri"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_40

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_40
    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 1091
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    if-gez v2, :cond_48

    .line 1092
    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1094
    :cond_48
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    const/16 v4, 0x3b

    if-le v2, v4, :cond_50

    .line 1095
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1097
    :cond_50
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    if-gez v2, :cond_56

    .line 1098
    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1100
    :cond_56
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    if-le v2, v4, :cond_5c

    .line 1101
    sput v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1103
    :cond_5c
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz v2, :cond_66

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/16 v4, 0x8

    if-le v2, v4, :cond_68

    .line 1104
    :cond_66
    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 1106
    :cond_68
    const-string v2, "block_program_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 1107
    const-string v2, "block_program_repeat"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 1108
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->loadBlocks(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    .line 1109
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    int-to-long v0, p0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 1110
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

    .line 1113
    goto :goto_9f

    .line 1111
    :catchall_99
    move-exception p0

    .line 1112
    const-string v0, "interval_timer_prefs_load"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1114
    :goto_9f
    return-void
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .line 977
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 978
    return-void

    .line 980
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 981
    if-nez v0, :cond_c

    .line 982
    return-void

    .line 985
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 986
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 987
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 988
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    .line 991
    goto :goto_1e

    .line 989
    :catchall_18
    move-exception p0

    .line 990
    const-string p1, "interval_timer_overlay_move"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 992
    :goto_1e
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 304
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 305
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    .line 306
    const/16 v0, 0x4256

    if-ne p0, v0, :cond_e

    .line 307
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handleSignalFileResult(ILandroid/content/Intent;)V

    .line 308
    return-void

    .line 310
    :cond_e
    const/16 v0, 0x4257

    if-ne p0, v0, :cond_15

    .line 311
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handleRingtoneResult(ILandroid/content/Intent;)V

    .line 313
    :cond_15
    return-void
.end method

.method private static onIntervalFinished()V
    .registers 2

    .line 1372
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-lez v0, :cond_c

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lt v1, v0, :cond_c

    .line 1373
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 1374
    return-void

    .line 1376
    :cond_c
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 1377
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1378
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 1379
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 1380
    return-void
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 4

    .line 394
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 395
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_a

    .line 396
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 397
    return-void

    .line 399
    :cond_a
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 400
    if-eqz p0, :cond_39

    .line 401
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->onTrainingStart()V

    .line 402
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 403
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez p0, :cond_46

    .line 404
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 406
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_46

    .line 409
    :cond_39
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz p0, :cond_46

    .line 410
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 411
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    :cond_46
    :goto_46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 414
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 415
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 416
    return-void

    .line 418
    :cond_50
    if-eqz p0, :cond_7a

    .line 419
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez p0, :cond_87

    .line 420
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-gtz p0, :cond_63

    .line 421
    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 422
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 423
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 425
    :cond_63
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 426
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 427
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_87

    .line 430
    :cond_7a
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz p0, :cond_87

    .line 431
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 432
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    :cond_87
    :goto_87
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 435
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 436
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 437
    return-void
.end method

.method public static onTrainingStop()V
    .registers 0

    .line 440
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    .line 442
    return-void
.end method

.method private static openOverlaySettings()V
    .registers 1

    .line 562
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 563
    if-nez v0, :cond_e

    .line 564
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 565
    return-void

    .line 567
    :cond_e
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 568
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 569
    return-void
.end method

.method public static playBlockSignal()V
    .registers 0

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 451
    return-void
.end method

.method private static playBuiltInTone(I)V
    .registers 5

    .line 1395
    packed-switch p0, :pswitch_data_38

    .line 1415
    return-void

    .line 1412
    :pswitch_4
    const/16 p0, 0x56

    .line 1413
    goto :goto_16

    .line 1409
    :pswitch_7
    const/16 p0, 0x29

    .line 1410
    goto :goto_16

    .line 1406
    :pswitch_a
    const/16 p0, 0x1b

    .line 1407
    goto :goto_16

    .line 1403
    :pswitch_d
    const/16 p0, 0x5d

    .line 1404
    goto :goto_16

    .line 1400
    :pswitch_10
    const/16 p0, 0x19

    .line 1401
    goto :goto_16

    .line 1397
    :pswitch_13
    const/16 p0, 0x18

    .line 1398
    nop

    .line 1418
    :goto_16
    :try_start_16
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1419
    const/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1420
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v2, 0x226

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_30

    .line 1423
    goto :goto_36

    .line 1421
    :catchall_30
    move-exception p0

    .line 1422
    const-string v0, "interval_timer_tone"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1424
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

    .line 1427
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 1428
    return-void

    .line 1430
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1431
    if-nez v0, :cond_d

    .line 1432
    return-void

    .line 1434
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 1436
    :try_start_10
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 1437
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1438
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1439
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1440
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1441
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1442
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1443
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_48

    .line 1447
    goto :goto_51

    .line 1444
    :catchall_48
    move-exception v0

    .line 1445
    const-string v1, "interval_timer_custom_signal"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1446
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 1448
    :goto_51
    return-void
.end method

.method private static playSignal()V
    .registers 2

    .line 1383
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-nez v0, :cond_5

    .line 1384
    return-void

    .line 1386
    :cond_5
    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    goto :goto_11

    .line 1390
    :cond_d
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBuiltInTone(I)V

    .line 1391
    return-void

    .line 1387
    :cond_11
    :goto_11
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playCustomSignal()V

    .line 1388
    return-void
.end method

.method private static readDurationTotalSec()I
    .registers 2

    .line 1236
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationSlider:Landroid/widget/SeekBar;

    if-eqz v0, :cond_d

    .line 1237
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x5

    return v0

    .line 1239
    :cond_d
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    mul-int/lit8 v0, v0, 0x3c

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static readLoopsInput()I
    .registers 1

    .line 1549
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsSlider:Landroid/widget/SeekBar;

    if-eqz v0, :cond_9

    .line 1550
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0

    .line 1552
    :cond_9
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    return v0
.end method

.method private static readSoundSelection()I
    .registers 1

    .line 794
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    .line 795
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0

    .line 797
    :cond_9
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return v0
.end method

.method private static refreshAdvancedToggleLabel(Landroid/app/Activity;)V
    .registers 3

    .line 1243
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    if-eqz v0, :cond_30

    if-nez p0, :cond_7

    goto :goto_30

    .line 1246
    :cond_7
    const v0, 0x7f0d0167

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1247
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedExpanded:Z

    if-eqz v0, :cond_1a

    .line 1248
    const/16 v0, 0x25be

    const/16 v1, 0x25b4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1250
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_26

    .line 1251
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .line 1252
    :cond_26
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_2f

    .line 1253
    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    :cond_2f
    :goto_2f
    return-void

    .line 1244
    :cond_30
    :goto_30
    return-void
.end method

.method public static refreshBlockOverlay()V
    .registers 1

    .line 445
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 446
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 447
    return-void
.end method

.method private static refreshBlockOverlayRing()V
    .registers 8

    .line 1026
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-nez v0, :cond_5

    .line 1027
    return-void

    .line 1030
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockTotalMs()J

    move-result-wide v0

    .line 1031
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockRemainingMs()J

    move-result-wide v2

    .line 1032
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

    .line 1033
    :goto_19
    cmpg-float v0, v2, v6

    if-gez v0, :cond_1e

    .line 1034
    goto :goto_1f

    .line 1033
    :cond_1e
    move v6, v2

    .line 1036
    :goto_1f
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, v6, v0

    if-lez v1, :cond_27

    .line 1037
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1039
    :cond_27
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    sub-float/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 1040
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v0, :cond_3a

    .line 1041
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    .line 1044
    :cond_3a
    goto :goto_3c

    .line 1043
    :catchall_3b
    move-exception v0

    .line 1045
    :goto_3c
    return-void
.end method

.method private static refreshBlockSummary()V
    .registers 8

    .line 1258
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSummaryView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1259
    return-void

    .line 1261
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1262
    if-nez v0, :cond_d

    .line 1263
    return-void

    .line 1265
    :cond_d
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 1266
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

    .line 1267
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockDurationView:Landroid/widget/TextView;

    if-eqz v1, :cond_a0

    .line 1268
    const/4 v1, 0x2

    new-array v3, v1, [I

    fill-array-data v3, :array_a2

    .line 1269
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v4

    .line 1270
    if-eqz v4, :cond_67

    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 1271
    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 1272
    invoke-virtual {v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 1273
    iget v6, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v6, :cond_5f

    .line 1274
    iget v6, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    aput v6, v3, v2

    .line 1276
    :cond_5f
    iget v6, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v6, :cond_67

    .line 1277
    iget v4, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    aput v4, v3, v5

    .line 1280
    :cond_67
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    aget v6, v3, v2

    aget v3, v3, v5

    invoke-static {v4, v6, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v3

    .line 1281
    sget-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v4, :cond_82

    .line 1282
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockDurationView:Landroid/widget/TextView;

    const v2, 0x7f0d014f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a0

    .line 1284
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

    .line 1287
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

.method private static refreshDurationDisplay(I)V
    .registers 4

    .line 1212
    div-int/lit8 v0, p0, 0x3c

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1213
    rem-int/lit8 v0, p0, 0x3c

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1214
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationValueView:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 1215
    int-to-long v1, p0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    :cond_14
    return-void
.end method

.method private static refreshLoopsDisplay(I)V
    .registers 3

    .line 1220
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsValueView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1221
    return-void

    .line 1223
    :cond_5
    if-gtz p0, :cond_23

    .line 1224
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p0

    .line 1225
    if-eqz p0, :cond_1b

    .line 1226
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsValueView:Landroid/widget/TextView;

    const v1, 0x7f0d0166

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 1228
    :cond_1b
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsValueView:Landroid/widget/TextView;

    const-string v0, "\u221e"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    :goto_22
    goto :goto_2a

    .line 1231
    :cond_23
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    :goto_2a
    return-void
.end method

.method private static refreshModeTabHighlight()V
    .registers 4

    .line 1165
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabIntervalBtn:Landroid/view/View;

    const v1, 0x3f0ccccd    # 0.55f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_16

    .line 1166
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v3, :cond_11

    const v3, 0x3f0ccccd    # 0.55f

    goto :goto_13

    :cond_11
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_13
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1168
    :cond_16
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabBlockBtn:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 1169
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v3, :cond_20

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_20
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1171
    :cond_23
    return-void
.end method

.method private static refreshOverlayRing()V
    .registers 7

    .line 1048
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_3e

    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_d

    goto :goto_3e

    .line 1052
    :cond_d
    :try_start_d
    sget-wide v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_15

    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1053
    :cond_15
    long-to-float v0, v0

    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 1054
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_20

    .line 1055
    const/4 v0, 0x0

    .line 1057
    :cond_20
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_28

    .line 1058
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1060
    :cond_28
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 1061
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v1, :cond_3b

    .line 1062
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_3c

    .line 1065
    :cond_3b
    goto :goto_3d

    .line 1064
    :catchall_3c
    move-exception v0

    .line 1066
    :goto_3d
    return-void

    .line 1049
    :cond_3e
    :goto_3e
    return-void
.end method

.method private static refreshOverlayText()V
    .registers 8

    .line 995
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 996
    return-void

    .line 998
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

    .line 999
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockRemainingMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateCountdownDisplay(J)V

    .line 1000
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_65

    .line 1001
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockIndex()I

    move-result v0

    add-int/2addr v0, v2

    .line 1002
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1003
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCyclesDone()I

    move-result v4

    add-int/2addr v4, v2

    .line 1004
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCurrentBlockCycles()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1005
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

    .line 1007
    :cond_65
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlayRing()V

    .line 1008
    return-void

    .line 1010
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

    .line 1011
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_c6

    .line 1012
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v3, :cond_85

    .line 1013
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c6

    .line 1014
    :cond_85
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    const-string v3, "#"

    if-gtz v0, :cond_a5

    .line 1015
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_90

    move v2, v0

    .line 1016
    :cond_90
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    goto :goto_c6

    .line 1018
    :cond_a5
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_aa

    move v2, v0

    .line 1019
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

    .line 1022
    :cond_c6
    :goto_c6
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayRing()V

    .line 1023
    return-void
.end method

.method private static refreshSoundUi()V
    .registers 7

    .line 1321
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

    .line 1322
    :goto_f
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    if-eqz v5, :cond_23

    .line 1323
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1324
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    if-eqz v0, :cond_1d

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_1d
    const v6, 0x3ee66666    # 0.45f

    :goto_20
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1326
    :cond_23
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileRow:Landroid/view/View;

    if-eqz v5, :cond_30

    .line 1327
    if-eqz v0, :cond_2b

    const/4 v6, 0x0

    goto :goto_2d

    :cond_2b
    const/16 v6, 0x8

    :goto_2d
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    :cond_30
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    if-eqz v5, :cond_68

    if-eqz v0, :cond_68

    .line 1330
    sget-object v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v6, :cond_4a

    .line 1331
    nop

    .line 1332
    sget v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v6, v1, :cond_43

    const v1, 0x7f0d0156

    goto :goto_46

    :cond_43
    const v1, 0x7f0d0133

    .line 1331
    :goto_46
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_68

    .line 1334
    :cond_4a
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 1335
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_57

    goto :goto_5d

    .line 1338
    :cond_57
    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 1336
    :cond_5d
    :goto_5d
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    :cond_68
    :goto_68
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    if-eqz v1, :cond_72

    .line 1343
    if-eqz v0, :cond_6f

    const/4 v3, 0x0

    :cond_6f
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    :cond_72
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_8b

    .line 1346
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 1347
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz v1, :cond_89

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_89

    .line 1348
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1350
    :cond_89
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 1352
    :cond_8b
    return-void
.end method

.method private static refreshStatusText()V
    .registers 2

    .line 1308
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1309
    return-void

    .line 1311
    :cond_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_10

    .line 1312
    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 1313
    :cond_10
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v1, :cond_1b

    .line 1314
    const v1, 0x7f0d0122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 1316
    :cond_1b
    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1318
    :goto_21
    return-void
.end method

.method private static releaseSignalPlayer()V
    .registers 1

    .line 1451
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 1452
    return-void

    .line 1455
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 1457
    goto :goto_a

    .line 1456
    :catchall_9
    move-exception v0

    .line 1459
    :goto_a
    :try_start_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 1461
    goto :goto_11

    .line 1460
    :catchall_10
    move-exception v0

    .line 1462
    :goto_11
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 1463
    return-void
.end method

.method private static resetAll()V
    .registers 3

    .line 458
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 459
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 460
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 461
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 462
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 463
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 464
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 465
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 467
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 468
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 469
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 470
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 471
    return-void
.end method

.method private static resetCurrentInterval()V
    .registers 2

    .line 1355
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 1356
    return-void

    .line 1358
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1359
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resetCurrentBlockCountdown()V

    goto :goto_17

    .line 1361
    :cond_13
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1363
    :goto_17
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 1364
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_28

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_28

    .line 1365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 1367
    :cond_28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 1368
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 1369
    return-void
.end method

.method private static resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 592
    if-eqz p0, :cond_3

    .line 593
    return-object p0

    .line 595
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_10

    .line 596
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0

    .line 598
    :cond_10
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_21

    .line 599
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 600
    if-eqz p0, :cond_21

    .line 601
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 602
    return-object p0

    .line 605
    :cond_21
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_32

    .line 606
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 607
    if-eqz p0, :cond_32

    .line 608
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 609
    return-object p0

    .line 612
    :cond_32
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz p0, :cond_3f

    .line 613
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 614
    if-eqz p0, :cond_3f

    .line 615
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 616
    return-object p0

    .line 619
    :cond_3f
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method private static resolveOnOffFromSeed()[I
    .registers 4

    .line 1290
    nop

    .line 1291
    nop

    .line 1292
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1293
    const/4 v1, 0x4

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1294
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1295
    if-eqz v0, :cond_2f

    .line 1296
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v2, :cond_22

    .line 1297
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_23

    .line 1296
    :cond_22
    const/4 v2, 0x4

    .line 1299
    :goto_23
    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v3, :cond_2c

    .line 1300
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    move v0, v1

    move v1, v2

    goto :goto_30

    .line 1299
    :cond_2c
    move v1, v2

    const/4 v0, 0x4

    goto :goto_30

    .line 1304
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

.method private static restoreConfigDialogAfterPick()V
    .registers 2

    .line 881
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 882
    if-nez v0, :cond_5

    .line 883
    return-void

    .line 886
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_e

    .line 887
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    .line 891
    :cond_e
    goto :goto_15

    .line 889
    :catchall_f
    move-exception v0

    .line 890
    const-string v1, "interval_timer_dialog_restore"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 892
    :goto_15
    return-void
.end method

.method private static saveSettings(Landroid/app/Activity;II)V
    .registers 5

    .line 1117
    if-nez p0, :cond_3

    .line 1118
    return-void

    .line 1120
    :cond_3
    sput p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    .line 1121
    sput p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    .line 1123
    :try_start_7
    const-string v0, "interval_timer"

    const/4 v1, 0x0

    .line 1124
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1125
    const-string v1, "minutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1126
    const-string p1, "seconds"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1127
    const-string p1, "loops"

    sget p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1128
    const-string p1, "sound"

    sget p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1129
    const-string p1, "block_program_mode"

    sget-boolean p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1130
    const-string p1, "block_program_repeat"

    sget-boolean p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1131
    sget-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_58

    const-string p2, "custom_uri"

    if-eqz p1, :cond_48

    .line 1132
    :try_start_3e
    sget-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4b

    .line 1134
    :cond_48
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1136
    :goto_4b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1137
    sget-boolean p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    sget-boolean p2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->save(Landroid/content/Context;ZZLjava/util/ArrayList;)V
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_58

    .line 1140
    goto :goto_5e

    .line 1138
    :catchall_58
    move-exception p0

    .line 1139
    const-string p1, "interval_timer_prefs_save"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1141
    :goto_5e
    return-void
.end method

.method private static selectModeTab(Z)V
    .registers 1

    .line 1174
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 1175
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V

    .line 1176
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V

    .line 1177
    return-void
.end method

.method private static setupSoundSpinner(Landroid/app/Activity;)V
    .registers 7

    .line 767
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_5

    .line 768
    return-void

    .line 770
    :cond_5
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f0d012c

    .line 771
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d012d

    .line 772
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const v5, 0x7f0d012e

    .line 773
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const v5, 0x7f0d012f

    .line 774
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const v5, 0x7f0d0152

    .line 775
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const v5, 0x7f0d0153

    .line 776
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const v5, 0x7f0d0154

    .line 777
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const v5, 0x7f0d0155

    .line 778
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const v5, 0x7f0d0130

    .line 779
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 781
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0b007b

    invoke-direct {v2, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 783
    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 784
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 785
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 786
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz p0, :cond_81

    if-ge p0, v0, :cond_81

    .line 787
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 789
    :cond_81
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundSpinnerListener;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 790
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreSpinnerCallback:Z

    .line 791
    return-void
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 10

    .line 665
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 666
    return-void

    .line 668
    :cond_b
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 669
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loadSavedSettings(Landroid/app/Activity;)V

    .line 670
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 673
    :try_start_14
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_225

    .line 678
    nop

    .line 679
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 680
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->capConfigDialogScroll(Landroid/app/Activity;Landroid/view/View;)I

    move-result v2

    .line 681
    const v3, 0x7f090237

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    .line 682
    const v3, 0x7f09023b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileView:Landroid/widget/TextView;

    .line 683
    const v3, 0x7f090245

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundFileRow:Landroid/view/View;

    .line 684
    const v3, 0x7f09023e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundSpinner:Landroid/widget/Spinner;

    .line 685
    const v3, 0x7f09023d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    .line 686
    const v3, 0x7f090244

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    .line 687
    const v3, 0x7f090276

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationRow:Landroid/view/View;

    .line 688
    const v3, 0x7f090275

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationLabelView:Landroid/widget/TextView;

    .line 689
    const v3, 0x7f09026c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationValueView:Landroid/widget/TextView;

    .line 690
    const v3, 0x7f09026b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationSlider:Landroid/widget/SeekBar;

    .line 691
    const v3, 0x7f09026d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsSlider:Landroid/widget/SeekBar;

    .line 692
    const v3, 0x7f09026e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsValueView:Landroid/widget/TextView;

    .line 693
    const v3, 0x7f090270

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabIntervalBtn:Landroid/view/View;

    .line 694
    const v3, 0x7f090271

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabBlockBtn:Landroid/view/View;

    .line 695
    const v3, 0x7f090272

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedPanel:Landroid/view/View;

    .line 696
    const v3, 0x7f090273

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    .line 697
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationSlider:Landroid/widget/SeekBar;

    if-eqz v3, :cond_da

    .line 698
    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 699
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationSlider:Landroid/widget/SeekBar;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$DurationSliderListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$DurationSliderListener;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 701
    :cond_da
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsSlider:Landroid/widget/SeekBar;

    if-eqz v3, :cond_ed

    .line 702
    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 703
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsSlider:Landroid/widget/SeekBar;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsSliderListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsSliderListener;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 705
    :cond_ed
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncDurationSliderFromValues()V

    .line 706
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncLoopsSliderFromValues()V

    .line 707
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabIntervalBtn:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabIntervalListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabIntervalListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 708
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tabBlockBtn:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabBlockListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TabBlockListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 709
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedToggle:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$AdvancedToggleListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$AdvancedToggleListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 710
    const v3, 0x7f090236

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 711
    const v3, 0x7f09023c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPreviewListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 712
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundPickBtn:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 713
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundClearBtn:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundClearListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundClearListener;-><init>()V

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 714
    const v3, 0x7f090264

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->simpleModePanel:Landroid/view/View;

    .line 715
    const v3, 0x7f090265

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockModePanel:Landroid/view/View;

    .line 716
    const v3, 0x7f090263

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSummaryView:Landroid/widget/TextView;

    .line 717
    const v3, 0x7f090266

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockDurationView:Landroid/widget/TextView;

    .line 718
    const v3, 0x7f090261

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    .line 719
    const v3, 0x7f090262

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 720
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_190

    .line 721
    sget-boolean v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 722
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRepeatSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockRepeatSwitchListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockRepeatSwitchListener;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 724
    :cond_190
    if-eqz v3, :cond_19a

    .line 725
    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditListener;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BlockEditListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    :cond_19a
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedPanel:Landroid/view/View;

    if-eqz v3, :cond_1a8

    .line 728
    sget-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->advancedExpanded:Z

    if-eqz v4, :cond_1a3

    goto :goto_1a5

    :cond_1a3
    const/16 v0, 0x8

    :goto_1a5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 730
    :cond_1a8
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshAdvancedToggleLabel(Landroid/app/Activity;)V

    .line 731
    const v0, 0x7f090267

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Spinner;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->presetSpinner:Landroid/widget/Spinner;

    .line 732
    const v0, 0x7f090268

    .line 735
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f090269

    .line 736
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f09026a

    .line 737
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PresetRefreshRunnable;

    invoke-direct {v8}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PresetRefreshRunnable;-><init>()V

    .line 732
    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->bind(Landroid/app/Activity;Landroid/widget/Spinner;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 739
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateModePanels()V

    .line 740
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockSummary()V

    .line 741
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->setupSoundSpinner(Landroid/app/Activity;)V

    .line 742
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshSoundUi()V

    .line 743
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 744
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 746
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 747
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 748
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 749
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 750
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 751
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 753
    :try_start_208
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_21d

    .line 755
    const/16 v1, 0x118

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    .line 756
    if-lez v2, :cond_219

    .line 757
    goto :goto_21a

    .line 758
    :cond_219
    const/4 v2, -0x2

    .line 759
    :goto_21a
    invoke-virtual {v0, p0, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_21d
    .catchall {:try_start_208 .. :try_end_21d} :catchall_21e

    .line 762
    :cond_21d
    goto :goto_21f

    .line 761
    :catchall_21e
    move-exception p0

    .line 763
    :goto_21f
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 764
    return-void

    .line 674
    :catchall_225
    move-exception p0

    .line 675
    const-string v0, "interval_timer_config"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 676
    const p0, 0x7f0d0128

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 677
    return-void
.end method

.method private static showOverlayDialog()Z
    .registers 10

    .line 801
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    .line 802
    const/4 v2, 0x0

    if-eqz v1, :cond_123

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_123

    .line 805
    :cond_10
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 806
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 809
    :try_start_15
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007a

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_11c

    .line 813
    nop

    .line 814
    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 815
    const v4, 0x7f090243

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 816
    const v4, 0x7f090239

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 817
    const v4, 0x7f09023a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 818
    const v4, 0x7f090278

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 819
    const/16 v4, 0xc0

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 820
    const/16 v5, 0xf0

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 822
    const/4 v6, 0x2

    const/4 v7, 0x1

    :try_start_61
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v8, :cond_73

    .line 823
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v9, 0x43400000    # 192.0f

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 824
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxProcess(I)V

    .line 826
    :cond_73
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v8, :cond_89

    .line 827
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 828
    sget-object v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    sget-object v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_89
    .catchall {:try_start_61 .. :try_end_89} :catchall_8a

    .line 831
    :cond_89
    goto :goto_8b

    .line 830
    :catchall_8a
    move-exception v8

    .line 832
    :goto_8b
    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 833
    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 834
    new-instance v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;

    invoke-direct {v8}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 835
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 836
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 837
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    :try_start_a9
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 843
    invoke-virtual {v3, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 844
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 845
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 846
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 847
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 848
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 849
    if-nez v3, :cond_cd

    .line 850
    return v2

    .line 852
    :cond_cd
    const v8, 0x106000d

    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 853
    const v8, 0x800033

    invoke-virtual {v3, v8}, Landroid/view/Window;->setGravity(I)V

    .line 854
    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setLayout(II)V

    .line 855
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 856
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 857
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 858
    const/16 v4, 0x14

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 859
    const/16 v4, 0x58

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 860
    const/4 v1, 0x0

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 861
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x20

    and-int/lit8 v1, v1, -0x3

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 865
    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 866
    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 867
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    :try_end_10a
    .catchall {:try_start_a9 .. :try_end_10a} :catchall_10b

    .line 868
    return v7

    .line 869
    :catchall_10b
    move-exception v1

    .line 870
    const-string v3, "interval_timer_overlay_show"

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 871
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 872
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 873
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 874
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 875
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 876
    return v2

    .line 810
    :catchall_11c
    move-exception v0

    .line 811
    const-string v1, "interval_timer_overlay_inflate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    return v2

    .line 803
    :cond_123
    :goto_123
    return v2
.end method

.method private static startRingtonePick(Landroid/view/View;)V
    .registers 7

    .line 1466
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1467
    const v0, 0x7f0d0128

    if-nez p0, :cond_d

    .line 1468
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1469
    return-void

    .line 1471
    :cond_d
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1472
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1473
    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1b

    .line 1474
    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1477
    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1478
    const-string v5, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1483
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1484
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1485
    const-string v2, "android.intent.extra.ringtone.TITLE"

    const v5, 0x7f0d0155

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz v2, :cond_49

    .line 1487
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1489
    :cond_49
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1490
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    :try_end_4d
    .catchall {:try_start_1c .. :try_end_4d} :catchall_5c

    if-eqz v2, :cond_56

    .line 1492
    :try_start_4f
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_55

    .line 1494
    goto :goto_56

    .line 1493
    :catchall_55
    move-exception v2

    .line 1496
    :cond_56
    :goto_56
    const/16 v2, 0x4257

    :try_start_58
    invoke-virtual {p0, v4, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    .line 1502
    goto :goto_6a

    .line 1497
    :catchall_5c
    move-exception p0

    .line 1498
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1499
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    .line 1500
    const-string v1, "interval_timer_ringtone_pick"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1501
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1503
    :goto_6a
    return-void
.end method

.method private static startSignalPick(Landroid/view/View;)V
    .registers 5

    .line 1507
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1508
    const v0, 0x7f0d0128

    if-nez p0, :cond_d

    .line 1509
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1510
    return-void

    .line 1512
    :cond_d
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1513
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readSoundSelection()I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1514
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1c

    .line 1515
    sput v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1518
    :cond_1c
    :try_start_1c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1519
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1522
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1523
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1524
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_48

    if-eqz v2, :cond_42

    .line 1526
    :try_start_3b
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_41

    .line 1528
    goto :goto_42

    .line 1527
    :catchall_41
    move-exception v2

    .line 1530
    :cond_42
    :goto_42
    const/16 v2, 0x4256

    :try_start_44
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    .line 1536
    goto :goto_57

    .line 1531
    :catchall_48
    move-exception p0

    .line 1532
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1533
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V

    .line 1534
    const-string v1, "interval_timer_pick"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1535
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1537
    :goto_57
    return-void
.end method

.method private static syncDurationSliderFromValues()V
    .registers 4

    .line 1180
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedMinutes:I

    mul-int/lit8 v0, v0, 0x3c

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->savedSeconds:I

    add-int/2addr v0, v1

    .line 1181
    const/4 v1, 0x5

    if-ge v0, v1, :cond_b

    .line 1182
    const/4 v0, 0x5

    .line 1184
    :cond_b
    const/16 v2, 0x258

    if-le v0, v2, :cond_11

    .line 1185
    const/16 v0, 0x258

    .line 1187
    :cond_11
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationSlider:Landroid/widget/SeekBar;

    if-eqz v2, :cond_21

    .line 1188
    const/4 v3, 0x1

    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreDurationSlider:Z

    .line 1189
    add-int/lit8 v3, v0, -0x5

    div-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1190
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreDurationSlider:Z

    .line 1192
    :cond_21
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshDurationDisplay(I)V

    .line 1193
    return-void
.end method

.method private static syncLoopsSliderFromValues()V
    .registers 4

    .line 1196
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 1197
    const/4 v1, 0x0

    if-gez v0, :cond_6

    .line 1198
    const/4 v0, 0x0

    .line 1200
    :cond_6
    const/16 v2, 0x1e

    if-le v0, v2, :cond_c

    .line 1201
    const/16 v0, 0x1e

    .line 1203
    :cond_c
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsSlider:Landroid/widget/SeekBar;

    if-eqz v2, :cond_18

    .line 1204
    const/4 v3, 0x1

    sput-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreLoopsSlider:Z

    .line 1205
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1206
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ignoreLoopsSlider:Z

    .line 1208
    :cond_18
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshLoopsDisplay(I)V

    .line 1209
    return-void
.end method

.method public static syncTrainingState()V
    .registers 5

    .line 370
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 371
    return-void

    .line 373
    :cond_5
    nop

    .line 375
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_34

    .line 377
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 378
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 379
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_27

    .line 380
    goto :goto_31

    .line 382
    :cond_27
    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_35

    if-eqz v3, :cond_31

    .line 383
    nop

    .line 384
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_34

    .line 377
    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 389
    :cond_34
    :goto_34
    goto :goto_36

    .line 388
    :catchall_35
    move-exception v0

    .line 390
    :goto_36
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    .line 391
    return-void
.end method

.method private static toast(I)V
    .registers 3

    .line 1573
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1574
    if-nez v0, :cond_8

    .line 1575
    return-void

    .line 1578
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    .line 1580
    goto :goto_12

    .line 1579
    :catchall_11
    move-exception p0

    .line 1581
    :goto_12
    return-void
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .line 572
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 573
    if-nez v0, :cond_15

    .line 574
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 575
    const-string v0, "interval_timer"

    const-string v1, "toggle: no activity"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void

    .line 578
    :cond_15
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 579
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_2c

    .line 580
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hasLoadedTraining()Z

    move-result v1

    if-nez v1, :cond_28

    .line 581
    const v0, 0x7f0d011a

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 582
    return-void

    .line 584
    :cond_28
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 585
    return-void

    .line 587
    :cond_2c
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 588
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 589
    return-void
.end method

.method public static triggerAllStop()V
    .registers 2

    .line 454
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    return-void
.end method

.method private static updateCountdownDisplay(J)V
    .registers 5

    .line 1069
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1070
    return-void

    .line 1072
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_f

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 1073
    :cond_f
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    int-to-long p0, p0

    cmp-long v2, v0, p0

    if-eqz v2, :cond_22

    .line 1074
    long-to-int p0, v0

    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 1075
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    :cond_22
    return-void
.end method

.method private static updateModePanels()V
    .registers 5

    .line 1144
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    const/16 v0, 0x8

    .line 1145
    :goto_b
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v3, :cond_12

    const/16 v3, 0x8

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 1146
    :goto_13
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockModePanel:Landroid/view/View;

    if-eqz v4, :cond_1a

    .line 1147
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    :cond_1a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->simpleModePanel:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 1150
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    :cond_21
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationRow:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 1153
    nop

    .line 1154
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v3, :cond_31

    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v3, :cond_2f

    goto :goto_31

    :cond_2f
    const/16 v1, 0x8

    .line 1153
    :cond_31
    :goto_31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    :cond_34
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1157
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->durationLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_52

    if-eqz v0, :cond_52

    .line 1158
    nop

    .line 1159
    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v2, :cond_48

    const v2, 0x7f0d0164

    goto :goto_4b

    :cond_48
    const v2, 0x7f0d0163

    :goto_4b
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1158
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    :cond_52
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshModeTabHighlight()V

    .line 1162
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .line 960
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 961
    return-void

    .line 964
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v1, :cond_19

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    if-eqz v1, :cond_19

    .line 965
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_26

    .line 966
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_26

    .line 968
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 969
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    .line 973
    :cond_26
    :goto_26
    goto :goto_2d

    .line 971
    :catchall_27
    move-exception v0

    .line 972
    const-string v1, "interval_timer_overlay_visibility"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 974
    :goto_2d
    return-void
.end method
