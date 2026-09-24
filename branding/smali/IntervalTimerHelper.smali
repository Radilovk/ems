.class public final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PauseOverlayListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;
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
            "Ljava/util/ArrayList",
            "<",
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

.field private static final tickRunnable:Ljava/lang/Runnable;

.field private static timerPausedByUser:Z

.field private static trainSec:I

.field private static trainingRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

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
    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 161
    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

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

    .line 87
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

    .line 88
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

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    return v0
.end method

.method static synthetic access$1000(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsUnit(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/Activity;Landroid/widget/LinearLayout;I)V
    .registers 3

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->fillTimeline(Landroid/app/Activity;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->fillQuickIntervals(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->fillQuickLoops(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500(I)I
    .registers 2

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->stepFor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(III)I
    .registers 4

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method static synthetic access$1902(Z)Z
    .registers 1

    .prologue
    .line 46
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    return p0
.end method

.method static synthetic access$200(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->saveSettings(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2000()I
    .registers 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .registers 1

    .prologue
    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    return p0
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toastText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V
    .registers 4

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->promptName(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 2

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->presetMenu(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startRingtonePick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->startSignalPick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2602(I)I
    .registers 1

    .prologue
    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    return p0
.end method

.method static synthetic access$2700()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    return-void
.end method

.method static synthetic access$2802(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 1

    .prologue
    .line 46
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$2900()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->disarmTimerKeepSettings()V

    return-void
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .prologue
    .line 46
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 46
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static synthetic access$3100()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$3200()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetCurrentInterval()V

    return-void
.end method

.method static synthetic access$3300()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleTimerPause()V

    return-void
.end method

.method static synthetic access$3400()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$3500()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3600()F
    .registers 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$3602(F)F
    .registers 1

    .prologue
    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$3700()F
    .registers 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$3702(F)F
    .registers 1

    .prologue
    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$3800()F
    .registers 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$3802(F)F
    .registers 1

    .prologue
    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$3900()F
    .registers 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$3902(F)F
    .registers 1

    .prologue
    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    return v0
.end method

.method static synthetic access$4000()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$4002(Z)Z
    .registers 1

    .prologue
    .line 46
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .prologue
    .line 46
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    return p0
.end method

.method static synthetic access$4100(Landroid/app/Activity;I)I
    .registers 3

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(II)V
    .registers 2

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$4300()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->openOverlaySettings()V

    return-void
.end method

.method static synthetic access$4400()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->finishArm()V

    return-void
.end method

.method static synthetic access$4500()Landroid/view/View;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4600()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    return-void
.end method

.method static synthetic access$4700()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    return-void
.end method

.method static synthetic access$4800()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    return v0
.end method

.method static synthetic access$4900()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    return v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 46
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5100()J
    .registers 2

    .prologue
    .line 46
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide v0
.end method

.method static synthetic access$5102(J)J
    .registers 2

    .prologue
    .line 46
    sput-wide p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide p0
.end method

.method static synthetic access$5200()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    return-void
.end method

.method static synthetic access$5300()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5500()J
    .registers 2

    .prologue
    .line 46
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$5522(J)J
    .registers 4

    .prologue
    .line 46
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    sub-long/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$5600()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V

    return-void
.end method

.method static synthetic access$600()V
    .registers 0

    .prologue
    .line 46
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1

    .prologue
    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    return p0
.end method

.method static synthetic access$800(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    return v0
.end method

.method static synthetic access$902(I)I
    .registers 1

    .prologue
    .line 46
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    return p0
.end method

.method static applyPreset(Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 4

    .prologue
    .line 201
    if-nez p0, :cond_3

    .line 221
    :goto_2
    return-void

    .line 204
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    add-int/2addr v0, v1

    .line 205
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    if-eqz v1, :cond_62

    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    if-eqz v1, :cond_62

    .line 206
    const/16 v1, 0x3c

    const/16 v2, 0x1518

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    .line 210
    :cond_1c
    :goto_1c
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 211
    iget v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 212
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz v0, :cond_35

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_38

    .line 213
    :cond_35
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 215
    :cond_38
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_70

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 217
    :goto_4a
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 218
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 219
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_72

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5f
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    goto :goto_2

    .line 207
    :cond_62
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    if-nez v1, :cond_1c

    .line 208
    const/4 v1, 0x5

    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    goto :goto_1c

    .line 217
    :cond_70
    const/4 v0, 0x0

    goto :goto_4a

    .line 220
    :cond_72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5f
.end method

.method private static armFromConfig()V
    .registers 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v2, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 510
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hasLoadedTraining()Z

    move-result v0

    if-nez v0, :cond_12

    .line 511
    const v0, 0x7f0d011a

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 545
    :goto_11
    return-void

    .line 514
    :cond_12
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1c

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v0, v2, :cond_2f

    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v0, :cond_2f

    .line 515
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v0, v2, :cond_2b

    const v0, 0x7f0d0156

    :goto_27
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    goto :goto_11

    :cond_2b
    const v0, 0x7f0d0133

    goto :goto_27

    .line 518
    :cond_2f
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_8f

    .line 519
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 520
    :cond_3f
    const v0, 0x7f0d0150

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    goto :goto_11

    .line 523
    :cond_46
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v0, :cond_8a

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    .line 524
    :goto_4c
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    sget-boolean v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->arm(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/util/ArrayList;ZI)V

    .line 525
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v8

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 526
    sput v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 535
    :goto_63
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->saveSettings(Landroid/app/Activity;)V

    .line 536
    sput v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 537
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 538
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 539
    sput-boolean v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 540
    sput-boolean v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 541
    sput-boolean v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 542
    sput-boolean v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 543
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissSheet()V

    .line 544
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$FinishArmRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    .line 523
    :cond_8a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sequenceSeconds()I

    move-result v0

    goto :goto_4c

    .line 528
    :cond_8f
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    if-gtz v0, :cond_9b

    .line 529
    const v0, 0x7f0d0127

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    goto/16 :goto_11

    .line 532
    :cond_9b
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 533
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    int-to-long v0, v0

    mul-long/2addr v0, v8

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    goto :goto_63
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .prologue
    .line 243
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 247
    :goto_3
    return-void

    .line 244
    :catch_4
    move-exception v0

    .line 245
    const-string v1, "IntervalTimerHelper.attachMasterPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 250
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 264
    :cond_5
    :goto_5
    return-void

    .line 253
    :cond_6
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    .line 254
    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 255
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    .line 256
    const v0, 0x7f090230

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_5

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 263
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1762
    if-nez p0, :cond_4

    .line 1768
    :goto_3
    return-void

    .line 1765
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1766
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1767
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method private static blockRow(Landroid/app/Activity;ILcom/isaigu/gymapp/dialog/ProgramSegment;[I)Landroid/view/View;
    .registers 16

    .prologue
    const/high16 v4, 0x41e00000    # 28.0f

    const/high16 v11, 0x41700000    # 15.0f

    const/4 v10, 0x1

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v9, 0x0

    .line 939
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 940
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 941
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 942
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {p0, v1, v11, v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 943
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 944
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v9, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 945
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 946
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 947
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u0446\u0438\u043a\u044a\u043b\u0430"

    const-string v4, " cycles"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \u00b7  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    int-to-long v4, v3

    aget v3, p3, v9

    aget v6, p3, v10

    add-int/2addr v3, v6

    int-to-long v6, v3

    mul-long/2addr v4, v6

    .line 949
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 948
    invoke-static {p0, v2, v11, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%   \u00b7   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz   \u00b7   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b5s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v2, v3, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 952
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v9, v3, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 953
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 954
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 957
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 958
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 959
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    iget v5, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v3

    .line 960
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    .line 959
    invoke-static {v3, v4, v9, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 961
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x18

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v9, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 963
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42080000    # 34.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget v7, p2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    const/16 v8, 0x64

    invoke-static {v7, v9, v8}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x64

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 962
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    return-object v0
.end method

.method private static buildBlockSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    const/high16 v8, 0x41000000    # 8.0f

    const/4 v3, 0x6

    const/4 v10, 0x2

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v2, 0x0

    .line 859
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 860
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    .line 863
    :cond_16
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0411\u043b\u043e\u043a\u043e\u0432\u0435"

    const-string v6, "Blocks"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 867
    const-string v0, "+ \u0421\u044a\u0437\u0434\u0430\u0439"

    const-string v5, "+ Create"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    :goto_5e
    invoke-static {p0, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 868
    invoke-virtual {v0, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 869
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 870
    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$12;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$12;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 883
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 884
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 886
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 887
    const-string v0, "\u041d\u044f\u043c\u0430 \u0431\u043b\u043e\u043a\u043e\u0432\u0435. \u0412\u0441\u0435\u043a\u0438 \u0431\u043b\u043e\u043a \u0435 \u0431\u0440\u043e\u0439 \u0438\u043c\u043f\u0443\u043b\u0441\u043d\u0438 \u0446\u0438\u043a\u043b\u0438 \u0441\u044a\u0441 \u0441\u0432\u043e\u044f \u0441\u0438\u043b\u0430, \u0447\u0435\u0441\u0442\u043e\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430."

    const-string v1, "No blocks yet. Each block is a number of impulse cycles with its own strength, frequency and width."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v9, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 890
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    :cond_a7
    const-string v0, "\u041f\u043e\u0432\u0442\u0430\u0440\u044f\u0439 \u0434\u043e \u043a\u0440\u0430\u044f \u043d\u0430 \u0432\u0440\u0435\u043c\u0435\u0442\u043e"

    const-string v1, "Repeat until time is up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RPT \u2014 \u0431\u043b\u043e\u043a\u043e\u0432\u0435\u0442\u0435 \u0441\u0435 \u0432\u044a\u0440\u0442\u044f\u0442, \u0434\u043e\u043a\u0430\u0442\u043e \u0438\u0437\u0442\u0435\u0447\u0435 \u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v5, "RPT \u2014 blocks cycle until the workout time runs out"

    .line 900
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    new-instance v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$13;

    invoke-direct {v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$13;-><init>()V

    .line 899
    invoke-static {p0, v0, v1, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0xe

    .line 909
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 899
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 911
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v0, :cond_15b

    .line 912
    const-string v0, "\u0412\u0440\u0435\u043c\u0435 \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "Workout time"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u043c\u0438\u043d : \u0441\u0435\u043a"

    const-string v3, "min : sec"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41e00000    # 28.0f

    const/4 v5, 0x0

    invoke-static {p0, v0, v1, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    .line 914
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$14;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$14;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)V

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 921
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$15;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$15;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 928
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 935
    :cond_11d
    :goto_11d
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    return-void

    .line 867
    :cond_127
    const-string v0, "\u0420\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u0430\u0439"

    const-string v5, "Edit"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5e

    .line 892
    :cond_131
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveOnOffFromSeed()[I

    move-result-object v5

    move v1, v2

    .line 893
    :goto_136
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a7

    .line 894
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 895
    invoke-static {p0, v1, v0, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockRow(Landroid/app/Activity;ILcom/isaigu/gymapp/dialog/ProgramSegment;[I)Landroid/view/View;

    move-result-object v6

    if-nez v1, :cond_158

    move v0, v3

    :goto_14d
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_136

    .line 895
    :cond_158
    const/16 v0, 0x8

    goto :goto_14d

    .line 929
    :cond_15b
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11d

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0415\u0434\u043d\u0430 \u043f\u043e\u0440\u0435\u0434\u0438\u0446\u0430: "

    const-string v2, "One sequence: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sequenceSeconds()I

    move-result v1

    int-to-long v6, v1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\u0432\u0440\u0435\u043c\u0435\u0442\u043e \u0437\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0441\u0435 \u0437\u0430\u0434\u0430\u0432\u0430 \u0441\u0430\u043c\u043e)"

    const-string v2, " (workout time is set automatically)"

    .line 931
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v2, 0x1

    .line 930
    invoke-static {p0, v0, v9, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 933
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_11d
.end method

.method private static buildFooter(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/high16 v4, 0x42080000    # 34.0f

    const/high16 v5, 0x41600000    # 14.0f

    .line 1205
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    .line 1206
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1207
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v0, :cond_27

    .line 1208
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0442\u0430\u0439\u043c\u0435\u0440\u0430"

    const-string v2, "Turn timer off"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 1209
    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$25;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1218
    :cond_27
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1219
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v0, :cond_63

    const-string v0, "\u041f\u0440\u0438\u043b\u043e\u0436\u0438"

    const-string v2, "Apply"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3a
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 1221
    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1222
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1223
    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$26;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1231
    return-void

    .line 1219
    :cond_63
    const-string v0, "\u25b6  \u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0439"

    const-string v2, "\u25b6  Activate"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method private static buildIntervalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    .line 710
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 711
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 712
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 713
    const-string v1, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b"

    const-string v2, "Interval"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 714
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u043c\u0438\u043d : \u0441\u0435\u043a"

    const-string v4, "min : sec"

    .line 715
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    .line 714
    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    .line 716
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 717
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 718
    const-string v2, "\u041f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f"

    const-string v5, "Repeats"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 719
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsText(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsUnit(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v7, 0x0

    invoke-static {p0, v2, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v2

    .line 720
    iget-object v5, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 721
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0xe

    invoke-static {v3, v5, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 725
    const-string v0, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {p0, v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 726
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 727
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/widget/LinearLayout;

    .line 728
    const/4 v0, 0x1

    new-array v7, v0, [Landroid/widget/LinearLayout;

    .line 729
    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$5;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;Lcom/isaigu/gymapp/widget/XemsUi$Stepper;Landroid/widget/TextView;Landroid/app/Activity;Landroid/widget/LinearLayout;[Landroid/widget/LinearLayout;[Landroid/widget/LinearLayout;)V

    .line 744
    iget-object v4, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 745
    iget-object v4, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$6;

    invoke-direct {v9, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$6;-><init>(Ljava/lang/Runnable;)V

    const/4 v10, -0x1

    invoke-static {v4, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 753
    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$7;

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$7;-><init>(Ljava/lang/Runnable;)V

    const/4 v9, 0x1

    invoke-static {v1, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 761
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$8;

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$8;-><init>(Ljava/lang/Runnable;)V

    const/4 v9, -0x1

    invoke-static {v1, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 769
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$9;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$9;-><init>(Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 778
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 779
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 780
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 781
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 782
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 783
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v6, 0xe

    invoke-static {v2, v6, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 790
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    return-void
.end method

.method private static buildPresetSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 993
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v1, "Saved programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    new-array v0, v2, [Landroid/widget/LinearLayout;

    .line 995
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 996
    aget-object v5, v0, v3

    .line 997
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a2

    const-string v0, "\u2713 \u041e\u0431\u043d\u043e\u0432\u0438"

    const-string v1, "\u2713 Update"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 999
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1000
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$16;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    invoke-static {p0, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 1025
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->loadAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1026
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 1027
    iget-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    if-eqz v1, :cond_ab

    iget-object v1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedPresetId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    move v1, v2

    .line 1028
    :goto_6b
    iget-boolean v4, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    if-eqz v4, :cond_ad

    const-string v4, "\u25a6 "

    .line 1029
    :goto_71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    if-eqz v4, :cond_b0

    iget-object v4, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    :goto_80
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v4, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 1030
    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$17;

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$17;-><init>(Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$18;

    invoke-direct {v4, p0, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$18;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1046
    invoke-static {p0, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_50

    .line 997
    :cond_a2
    const-string v0, "+ \u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v1, "+ Save"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_ab
    move v1, v3

    .line 1027
    goto :goto_6b

    .line 1028
    :cond_ad
    const-string v4, "\u25f7 "

    goto :goto_71

    .line 1029
    :cond_b0
    const-string v4, "?"

    goto :goto_80

    .line 1048
    :cond_b3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1049
    const-string v0, "\u0417\u0430\u0434\u0440\u044a\u0436 \u0432\u044a\u0440\u0445\u0443 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0437\u0430 \u043f\u0440\u0435\u0438\u043c\u0435\u043d\u0443\u0432\u0430\u043d\u0435 \u0438\u043b\u0438 \u0438\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435."

    const-string v1, "Hold a saved program to rename or delete it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1051
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    :cond_d1
    return-void
.end method

.method private static buildSignalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x7

    const/4 v3, 0x1

    const/high16 v10, 0x42080000    # 34.0f

    const/4 v1, 0x0

    .line 1136
    const-string v0, "\u0421\u0438\u0433\u043d\u0430\u043b \u043f\u0440\u0438 \u0441\u043c\u044f\u043d\u0430"

    const-string v2, "Signal on switch"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x14

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    new-array v0, v3, [Landroid/widget/LinearLayout;

    .line 1138
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1139
    aget-object v4, v0, v1

    .line 1140
    const/16 v0, 0x9

    new-array v5, v0, [I

    fill-array-data v5, :array_128

    .line 1142
    const/16 v0, 0x9

    new-array v6, v0, [I

    fill-array-data v6, :array_13e

    move v0, v1

    .line 1144
    :goto_36
    array-length v2, v5

    if-ge v0, v2, :cond_7e

    .line 1145
    aget v7, v5, v0

    .line 1146
    if-nez v7, :cond_6f

    const-string v2, "\ud83d\udd07 "

    .line 1147
    :goto_3f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v8, v6, v0

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v7, v2, :cond_7c

    move v2, v3

    :goto_5b
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v8, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 1148
    new-instance v8, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$22;

    invoke-direct {v8, v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$22;-><init>(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    invoke-static {p0, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 1144
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 1146
    :cond_6f
    if-ne v7, v11, :cond_74

    const-string v2, "\ud83d\udcf1 "

    goto :goto_3f

    :cond_74
    if-ne v7, v12, :cond_79

    const-string v2, "\ud83d\udcc1 "

    goto :goto_3f

    :cond_79
    const-string v2, "\u266a "

    goto :goto_3f

    :cond_7c
    move v2, v1

    .line 1147
    goto :goto_5b

    .line 1168
    :cond_7e
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-eq v0, v12, :cond_86

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ne v0, v11, :cond_11f

    :cond_86
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz v0, :cond_11f

    .line 1169
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1170
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1171
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1172
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1173
    if-eqz v0, :cond_120

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_120

    :goto_a4
    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1175
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1176
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1177
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    const-string v0, "\u25b6"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/4 v3, -0x1

    const/16 v4, 0x22

    invoke-static {p0, v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1179
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$23;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1186
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1187
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    const-string v0, "\u2715"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x22

    invoke-static {p0, v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 1189
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$24;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1197
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1198
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1199
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1200
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    :cond_11f
    return-void

    .line 1173
    :cond_120
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a4

    .line 1140
    :array_128
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

    .line 1142
    :array_13e
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
    .registers 5

    .prologue
    .line 224
    new-instance v1, Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/TimerPreset;-><init>()V

    .line 225
    if-eqz p0, :cond_49

    :goto_7
    iput-object p0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    .line 226
    if-eqz p1, :cond_4e

    :goto_b
    iput-object p1, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 227
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_51

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    if-eqz v0, :cond_51

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    .line 228
    :goto_17
    div-int/lit8 v2, v0, 0x3c

    iput v2, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->minutes:I

    .line 229
    rem-int/lit8 v0, v0, 0x3c

    iput v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->seconds:I

    .line 230
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    iput v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->loops:I

    .line 231
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    iput v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->sound:I

    .line 232
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz v0, :cond_54

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_31
    iput-object v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->customUri:Ljava/lang/String;

    .line 233
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    iput-boolean v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockMode:Z

    .line 234
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    iput-boolean v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->blockRepeat:Z

    .line 235
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    if-eqz v0, :cond_57

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_46
    iput-object v0, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->blocks:Ljava/util/ArrayList;

    .line 236
    return-object v1

    .line 225
    :cond_49
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->newId()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 226
    :cond_4e
    const-string p1, ""

    goto :goto_b

    .line 227
    :cond_51
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    goto :goto_17

    .line 232
    :cond_54
    const-string v0, ""

    goto :goto_31

    .line 235
    :cond_57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_46
.end method

.method private static clamp(III)I
    .registers 3

    .prologue
    .line 1394
    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private static disarmTimerKeepSettings()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 454
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 455
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 456
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 457
    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 458
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 459
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 460
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 461
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 463
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 464
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 467
    return-void
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1499
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_18

    .line 1501
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_19

    .line 1504
    :goto_a
    if-nez p0, :cond_18

    .line 1505
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1506
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 1507
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 1508
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 1509
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 1510
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    .line 1513
    :cond_18
    return-void

    .line 1502
    :catch_19
    move-exception v0

    goto :goto_a
.end method

.method private static dismissSheet()V
    .registers 1

    .prologue
    .line 1250
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_12

    .line 1252
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_13

    .line 1255
    :goto_b
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    if-nez v0, :cond_12

    .line 1256
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 1259
    :cond_12
    return-void

    .line 1253
    :catch_13
    move-exception v0

    goto :goto_b
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 4

    .prologue
    .line 1786
    if-nez p0, :cond_3

    .line 1790
    :goto_2
    return p1

    .line 1789
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1790
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_2
.end method

.method private static fillQuickIntervals(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 806
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 807
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->QUICK_INTERVALS:[I

    array-length v4, v3

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_2d

    aget v5, v3, v2

    .line 808
    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    if-ne v5, v0, :cond_2b

    const/4 v0, 0x1

    :goto_16
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 809
    new-instance v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$10;

    invoke-direct {v6, v5, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$10;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 807
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_2b
    move v0, v1

    .line 808
    goto :goto_16

    .line 820
    :cond_2d
    return-void
.end method

.method private static fillQuickLoops(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 823
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 824
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->QUICK_LOOPS:[I

    array-length v5, v4

    move v3, v2

    :goto_8
    if-ge v3, v5, :cond_31

    aget v6, v4, v3

    .line 825
    if-nez v6, :cond_2a

    const-string v0, "\u221e"

    :goto_10
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-ne v6, v1, :cond_2f

    const/4 v1, 0x1

    :goto_15
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 826
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$11;

    invoke-direct {v1, v6, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$11;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 824
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    .line 825
    :cond_2a
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2f
    move v1, v2

    goto :goto_15

    .line 837
    :cond_31
    return-void
.end method

.method private static fillTimeline(Landroid/app/Activity;Landroid/widget/LinearLayout;I)V
    .registers 12

    .prologue
    const/high16 v8, 0x40800000    # 4.0f

    const/4 v3, 0x0

    .line 841
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 842
    if-lez p2, :cond_5b

    move v0, p2

    :goto_9
    move v2, v3

    .line 843
    :goto_a
    if-ge v2, v0, :cond_60

    .line 844
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 845
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5e

    int-to-float v1, v2

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    div-float/2addr v1, v7

    :goto_1d
    invoke-static {v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v1

    .line 846
    if-gtz p2, :cond_33

    .line 847
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v5, 0x22

    mul-int/lit8 v6, v2, 0x12

    rsub-int v6, v6, 0xff

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    .line 849
    :cond_33
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v1, v5, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 850
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 851
    if-lez v2, :cond_54

    .line 852
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 854
    :cond_54
    invoke-virtual {p1, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    .line 842
    :cond_5b
    const/16 v0, 0xc

    goto :goto_9

    .line 845
    :cond_5e
    const/4 v1, 0x0

    goto :goto_1d

    .line 856
    :cond_60
    return-void
.end method

.method private static finishArm()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 548
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_6

    .line 565
    :cond_5
    :goto_5
    return-void

    .line 551
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showOverlayDialog()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 552
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 553
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 554
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 555
    const-string v0, "interval_timer"

    const-string v1, "overlay dialog failed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 558
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 559
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 560
    const-string v0, "interval_timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "armed intervalMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loops="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_5

    .line 563
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    goto :goto_5
.end method

.method private static formatSeconds(J)Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/16 v4, 0x3c

    const-wide/16 v0, 0x0

    .line 1753
    cmp-long v2, p0, v0

    if-gez v2, :cond_9

    move-wide p0, v0

    .line 1756
    :cond_9
    div-long v0, p0, v4

    .line 1757
    rem-long v2, p0, v4

    .line 1758
    const-string v4, "%02d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleRingtoneResult(ILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 308
    const/4 v0, -0x1

    if-ne p0, v0, :cond_14

    if-eqz p1, :cond_14

    .line 309
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 310
    :goto_d
    if-nez v0, :cond_16

    .line 311
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 318
    :goto_13
    return-void

    .line 309
    :cond_14
    const/4 v0, 0x0

    goto :goto_d

    .line 314
    :cond_16
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 315
    const/4 v0, 0x7

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 316
    const-string v0, "interval_timer"

    const-string v1, "device signal uri set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    goto :goto_13
.end method

.method private static handleSignalFileResult(ILandroid/content/Intent;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 286
    const/4 v1, -0x1

    if-ne p0, v1, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 287
    :cond_a
    if-nez v0, :cond_11

    .line 288
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 305
    :goto_10
    return-void

    .line 291
    :cond_11
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 292
    const/16 v1, 0x8

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 294
    const/4 v1, 0x0

    :try_start_18
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    .line 295
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    .line 297
    if-eqz v1, :cond_2d

    if-eqz v2, :cond_2d

    .line 298
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_2d} :catch_38

    .line 303
    :cond_2d
    :goto_2d
    const-string v0, "interval_timer"

    const-string v1, "custom signal uri set"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    goto :goto_10

    .line 300
    :catch_38
    move-exception v0

    .line 301
    const-string v1, "interval_timer_uri_persist"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method private static hasLoadedTraining()Z
    .registers 1

    .prologue
    .line 506
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static launchPicker(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4

    .prologue
    .line 1383
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1384
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_e

    .line 1386
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_12

    .line 1390
    :cond_e
    :goto_e
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1391
    return-void

    .line 1387
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method private static layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V
    .registers 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 1795
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 1811
    :cond_6
    :goto_6
    return-void

    .line 1798
    :cond_7
    const v0, 0x7f090293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1799
    const v1, 0x7f090278

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1800
    const v1, 0x7f090292

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1801
    const/16 v1, 0x124

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 1802
    const/16 v2, 0xc0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 1803
    const/16 v3, 0x2d

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 1804
    const/4 v3, 0x5

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    .line 1805
    int-to-float v2, v2

    div-float/2addr v2, v8

    add-float/2addr v2, v3

    int-to-float v3, v5

    div-float/2addr v3, v8

    add-float v4, v2, v3

    .line 1806
    int-to-float v2, v1

    div-float/2addr v2, v8

    .line 1807
    int-to-float v1, v1

    div-float v3, v1, v8

    .line 1808
    const/high16 v1, 0x42340000    # 45.0f

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1809
    const/high16 v1, 0x42b40000    # 90.0f

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1810
    const/high16 v1, 0x43070000    # 135.0f

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    goto :goto_6
.end method

.method private static loadSavedSettings(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1277
    if-nez p0, :cond_4

    .line 1302
    :goto_3
    return-void

    .line 1281
    :cond_4
    :try_start_4
    const-string v1, "interval_timer"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1282
    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->settingsLoaded:Z

    if-nez v2, :cond_92

    .line 1283
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->settingsLoaded:Z

    .line 1284
    const-string v2, "minutes"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const-string v3, "seconds"

    const/16 v4, 0x1e

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x258

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    .line 1286
    const-string v2, "train_sec"

    const/16 v3, 0x4b0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x3c

    const/16 v4, 0x1518

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    .line 1287
    const-string v2, "loops"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->clamp(III)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 1288
    const-string v2, "sound"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 1289
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-ltz v2, :cond_62

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_65

    .line 1290
    :cond_62
    const/4 v2, 0x1

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    .line 1292
    :cond_65
    const-string v2, "custom_uri"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1293
    if-eqz v2, :cond_78

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_78

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_78
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    .line 1294
    const-string v0, "block_program_mode"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    .line 1295
    const-string v0, "block_program_repeat"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    .line 1296
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->loadBlocks(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    .line 1298
    :cond_92
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9a} :catch_9c

    goto/16 :goto_3

    .line 1299
    :catch_9c
    move-exception v0

    .line 1300
    const-string v1, "interval_timer_prefs_load"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method private static loopsText(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 798
    if-gtz p0, :cond_5

    const-string v0, "\u221e"

    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static loopsUnit(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 802
    if-gtz p0, :cond_b

    const-string v0, "\u0431\u0435\u0437 \u043a\u0440\u0430\u0439"

    const-string v1, "endless"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "\u043f\u044a\u0442\u0438"

    const-string v1, "times"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .prologue
    .line 1533
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 1548
    :cond_4
    :goto_4
    return-void

    .line 1536
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1537
    if-eqz v0, :cond_4

    .line 1541
    :try_start_d
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1542
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1543
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1544
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_4

    .line 1545
    :catch_19
    move-exception v0

    .line 1546
    const-string v1, "interval_timer_overlay_move"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 268
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onActivityResultImpl(IILandroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 272
    :goto_3
    return-void

    .line 269
    :catch_4
    move-exception v0

    .line 270
    const-string v1, "IntervalTimerHelper.onActivityResult"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onActivityResultImpl(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 275
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 276
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreSheetAfterPick()V

    .line 277
    const/16 v0, 0x4256

    if-ne p0, v0, :cond_11

    .line 278
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handleSignalFileResult(ILandroid/content/Intent;)V

    .line 282
    :cond_d
    :goto_d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V

    .line 283
    return-void

    .line 279
    :cond_11
    const/16 v0, 0x4257

    if-ne p0, v0, :cond_d

    .line 280
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handleRingtoneResult(ILandroid/content/Intent;)V

    goto :goto_d
.end method

.method private static onIntervalFinished()V
    .registers 2

    .prologue
    .line 1659
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-lez v0, :cond_e

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-lt v0, v1, :cond_e

    .line 1660
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 1667
    :goto_d
    return-void

    .line 1663
    :cond_e
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 1664
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1665
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 1666
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    goto :goto_d
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 3

    .prologue
    .line 355
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChangedImpl(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 359
    :goto_3
    return-void

    .line 356
    :catch_4
    move-exception v0

    .line 357
    const-string v1, "IntervalTimerHelper.onTrainingRunningChanged"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onTrainingRunningChangedImpl(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 362
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 363
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_c

    .line 364
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 407
    :goto_b
    return-void

    .line 367
    :cond_c
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_57

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 368
    if-eqz p0, :cond_49

    .line 369
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->onTrainingStart()V

    .line 370
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 371
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez v0, :cond_3c

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-nez v0, :cond_3c

    .line 372
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 374
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    :cond_3c
    :goto_3c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 382
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 383
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 384
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    goto :goto_b

    .line 377
    :cond_49
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_3c

    .line 378
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 379
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3c

    .line 387
    :cond_57
    if-eqz p0, :cond_92

    .line 388
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez v0, :cond_84

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-nez v0, :cond_84

    .line 389
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-gtz v0, :cond_6e

    .line 390
    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 391
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 392
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 394
    :cond_6e
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 396
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    :cond_84
    :goto_84
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 404
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 405
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 406
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    goto/16 :goto_b

    .line 399
    :cond_92
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_84

    .line 400
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 401
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_84
.end method

.method public static onTrainingStop()V
    .registers 2

    .prologue
    .line 411
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingStopImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 415
    :goto_3
    return-void

    .line 412
    :catch_4
    move-exception v0

    .line 413
    const-string v1, "IntervalTimerHelper.onTrainingStop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onTrainingStopImpl()V
    .registers 0

    .prologue
    .line 418
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 419
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    .line 420
    return-void
.end method

.method private static openOverlaySettings()V
    .registers 1

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 569
    if-nez v0, :cond_e

    .line 570
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 575
    :goto_d
    return-void

    .line 573
    :cond_e
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 574
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showSheet(Landroid/app/Activity;)V

    goto :goto_d
.end method

.method private static placeDialButton(Landroid/view/View;FFFFI)V
    .registers 11

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1815
    if-nez p0, :cond_5

    .line 1827
    :goto_4
    return-void

    .line 1818
    :cond_5
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1819
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p4

    add-float/2addr v2, p2

    int-to-float v3, p5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1820
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p4

    sub-float v0, p3, v0

    int-to-float v1, p5

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1821
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1822
    const v3, 0x800033

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1823
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1824
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1825
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1826
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_4
.end method

.method public static playBlockSignal()V
    .registers 0

    .prologue
    .line 428
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 429
    return-void
.end method

.method private static playBuiltInTone(I)V
    .registers 7

    .prologue
    .line 1682
    packed-switch p0, :pswitch_data_36

    .line 1711
    :goto_3
    return-void

    .line 1684
    :pswitch_4
    const/16 v0, 0x18

    .line 1705
    :goto_6
    :try_start_6
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1706
    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1707
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ReleaseToneRunnable;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v4, 0x226

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_20

    goto :goto_3

    .line 1708
    :catch_20
    move-exception v0

    .line 1709
    const-string v1, "interval_timer_tone"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1687
    :pswitch_27
    const/16 v0, 0x19

    .line 1688
    goto :goto_6

    .line 1690
    :pswitch_2a
    const/16 v0, 0x5d

    .line 1691
    goto :goto_6

    .line 1693
    :pswitch_2d
    const/16 v0, 0x1b

    .line 1694
    goto :goto_6

    .line 1696
    :pswitch_30
    const/16 v0, 0x29

    .line 1697
    goto :goto_6

    .line 1699
    :pswitch_33
    const/16 v0, 0x56

    .line 1700
    goto :goto_6

    .line 1682
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_4
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method

.method private static playCustomSignal()V
    .registers 4

    .prologue
    .line 1714
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 1735
    :cond_4
    :goto_4
    return-void

    .line 1717
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1718
    if-eqz v0, :cond_4

    .line 1721
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 1723
    :try_start_f
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    .line 1724
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1725
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1726
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1727
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalCompletionListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1728
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SignalErrorListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1729
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1730
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_4a} :catch_4b

    goto :goto_4

    .line 1731
    :catch_4b
    move-exception v0

    .line 1732
    const-string v1, "interval_timer_custom_signal"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1733
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    goto :goto_4
.end method

.method private static playSignal()V
    .registers 2

    .prologue
    .line 1670
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    if-nez v0, :cond_5

    .line 1678
    :goto_4
    return-void

    .line 1673
    :cond_5
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_14

    .line 1674
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playCustomSignal()V

    goto :goto_4

    .line 1677
    :cond_14
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBuiltInTone(I)V

    goto :goto_4
.end method

.method private static presetMenu(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V
    .registers 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1056
    iget-object v0, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "Saved program"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 1057
    const-string v1, "\u041f\u0440\u0435\u0438\u043c\u0435\u043d\u0443\u0432\u0430\u0439"

    const-string v2, "Rename"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 1058
    const-string v2, "\u0418\u0437\u0442\u0440\u0438\u0439"

    const-string v3, "Delete"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 1059
    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;

    invoke-direct {v3, v0, p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$19;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;

    invoke-direct {v3, v0, p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$20;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/16 v3, 0xa

    invoke-static {v7, v3, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1089
    return-void
.end method

.method private static promptName(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V
    .registers 11

    .prologue
    const/4 v6, 0x4

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 1096
    const/4 v0, 0x0

    const/16 v1, 0x1cc

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 1097
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1098
    const/16 v2, 0x4001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1099
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1100
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1101
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1102
    const-string v2, "\u043d\u0430\u043f\u0440. \u0421\u0438\u043b\u0430 30/30"

    const-string v3, "e.g. Strength 30/30"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1103
    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1104
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1105
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    if-eqz p2, :cond_6c

    .line 1107
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1110
    :cond_6c
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    const-string v2, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v3, "Save"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 1112
    new-instance v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$21;

    invoke-direct {v3, v1, v0, p3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$21;-><init>(Landroid/widget/EditText;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$NameCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1125
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1126
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1128
    :try_start_9d
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a7} :catch_ab

    .line 1131
    :goto_a7
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1132
    return-void

    .line 1129
    :catch_ab
    move-exception v0

    goto :goto_a7
.end method

.method private static rebuildSheet()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 668
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v2, :cond_7

    .line 707
    :cond_6
    :goto_6
    return-void

    .line 671
    :cond_7
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    .line 672
    if-eqz v2, :cond_6

    .line 675
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    .line 676
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 677
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 679
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const v6, 0x7f0d0161

    .line 680
    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const v6, 0x7f0d0162

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 681
    sget-boolean v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v6, :cond_62

    :goto_36
    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$3;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$3;-><init>()V

    .line 679
    invoke-static {v2, v5, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_64

    .line 690
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildBlockSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 694
    :goto_49
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildPresetSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 695
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildSignalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 696
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildFooter(Landroid/app/Activity;)V

    .line 697
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 699
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$4;

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$4;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_62
    move v0, v1

    .line 681
    goto :goto_36

    .line 692
    :cond_64
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->buildIntervalSection(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    goto :goto_49
.end method

.method public static refreshBlockOverlay()V
    .registers 1

    .prologue
    .line 423
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 424
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 425
    return-void
.end method

.method private static refreshBlockOverlayRing()V
    .registers 8

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1582
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-nez v2, :cond_8

    .line 1601
    :cond_7
    :goto_7
    return-void

    .line 1586
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockTotalMs()J

    move-result-wide v2

    .line 1587
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockRemainingMs()J

    move-result-wide v4

    .line 1588
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_39

    long-to-float v4, v4

    long-to-float v2, v2

    div-float v2, v4, v2

    .line 1589
    :goto_1a
    cmpg-float v3, v2, v0

    if-gez v3, :cond_3b

    .line 1592
    :goto_1e
    cmpl-float v2, v0, v1

    if-lez v2, :cond_23

    move v0, v1

    .line 1595
    :cond_23
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 1596
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 1597
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_36} :catch_37

    goto :goto_7

    .line 1599
    :catch_37
    move-exception v0

    goto :goto_7

    :cond_39
    move v2, v0

    .line 1588
    goto :goto_1a

    :cond_3b
    move v0, v2

    goto :goto_1e
.end method

.method private static refreshOverlayRing()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1604
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v2, :cond_f

    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_10

    .line 1622
    :cond_f
    :goto_f
    return-void

    .line 1608
    :cond_10
    :try_start_10
    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3c

    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 1609
    :goto_18
    long-to-float v2, v2

    sget-wide v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    .line 1610
    cmpg-float v3, v2, v0

    if-gez v3, :cond_3f

    .line 1613
    :goto_21
    cmpl-float v2, v0, v1

    if-lez v2, :cond_26

    move v0, v1

    .line 1616
    :cond_26
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    sub-float/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 1617
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 1618
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    .line 1620
    :catch_3a
    move-exception v0

    goto :goto_f

    .line 1608
    :cond_3c
    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3e} :catch_3a

    goto :goto_18

    :cond_3f
    move v0, v2

    goto :goto_21
.end method

.method private static refreshOverlayText()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 1551
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 1579
    :goto_5
    return-void

    .line 1554
    :cond_6
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v0, :cond_75

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1555
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockRemainingMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateCountdownDisplay(J)V

    .line 1556
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_71

    .line 1557
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1558
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getBlockCount()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1559
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCyclesDone()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 1560
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->getCurrentBlockCycles()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1561
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1563
    :cond_71
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlayRing()V

    goto :goto_5

    .line 1566
    :cond_75
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_96

    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    :goto_7f
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateCountdownDisplay(J)V

    .line 1567
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_91

    .line 1568
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_99

    .line 1569
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1578
    :cond_91
    :goto_91
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayRing()V

    goto/16 :goto_5

    .line 1566
    :cond_96
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    goto :goto_7f

    .line 1570
    :cond_99
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-gtz v0, :cond_be

    .line 1571
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_bc

    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 1572
    :goto_a3
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91

    :cond_bc
    move v0, v2

    .line 1571
    goto :goto_a3

    .line 1574
    :cond_be
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_c4

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 1575
    :cond_c4
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91
.end method

.method private static refreshStatusText()V
    .registers 3

    .prologue
    .line 1234
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_5

    .line 1247
    :goto_4
    return-void

    .line 1237
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1238
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_23

    .line 1239
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const-string v1, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v2, "Off"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_4

    .line 1240
    :cond_23
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_39

    .line 1241
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const-string v1, "\u25cf \u0420\u0430\u0431\u043e\u0442\u0438"

    const-string v2, "\u25cf Running"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_4

    .line 1242
    :cond_39
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-eqz v0, :cond_4f

    .line 1243
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const-string v1, "\u041f\u0430\u0443\u0437\u0430"

    const-string v2, "Paused"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_4

    .line 1245
    :cond_4f
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const-string v1, "\u0413\u043e\u0442\u043e\u0432 \u2014 \u0447\u0430\u043a\u0430 \u0441\u0442\u0430\u0440\u0442"

    const-string v2, "Armed \u2014 waits for start"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_4
.end method

.method private static releaseSignalPlayer()V
    .registers 1

    .prologue
    .line 1738
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 1750
    :goto_4
    return-void

    .line 1742
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_15

    .line 1746
    :goto_a
    :try_start_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_13

    .line 1749
    :goto_f
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->signalPlayer:Landroid/media/MediaPlayer;

    goto :goto_4

    .line 1747
    :catch_13
    move-exception v0

    goto :goto_f

    .line 1743
    :catch_15
    move-exception v0

    goto :goto_a
.end method

.method private static resetAll()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 436
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 437
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 438
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 439
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 440
    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 441
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 442
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 443
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 444
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->releaseSignalPlayer()V

    .line 446
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->reset()V

    .line 447
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissSheet()V

    .line 448
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 449
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 450
    return-void
.end method

.method private static resetCurrentInterval()V
    .registers 2

    .prologue
    .line 1636
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_5

    .line 1656
    :goto_4
    return-void

    .line 1639
    :cond_5
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1640
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resetCurrentBlockCountdown()V

    .line 1644
    :goto_12
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 1645
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 1646
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_33

    .line 1647
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 1648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 1649
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1650
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1652
    :cond_33
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playSignal()V

    .line 1653
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 1654
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 1655
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    goto :goto_4

    .line 1642
    :cond_40
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    goto :goto_12
.end method

.method private static resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 597
    if-eqz p0, :cond_3

    .line 624
    :goto_2
    return-object p0

    .line 600
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 601
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    goto :goto_2

    .line 603
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_27

    .line 604
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 605
    if-eqz p0, :cond_27

    .line 606
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    goto :goto_2

    .line 610
    :cond_27
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_3a

    .line 611
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 612
    if-eqz p0, :cond_3a

    .line 613
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    goto :goto_2

    .line 617
    :cond_3a
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_49

    .line 618
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 619
    if-eqz p0, :cond_49

    .line 620
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    goto :goto_2

    .line 624
    :cond_49
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    goto :goto_2
.end method

.method private static resolveOnOffFromSeed()[I
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 976
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 977
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 978
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 979
    if-eqz v2, :cond_34

    .line 980
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v0, :cond_32

    .line 981
    iget v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 983
    :goto_1f
    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v3, :cond_30

    .line 984
    iget v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    move v2, v1

    .line 988
    :goto_26
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v2, v1, v0

    return-object v1

    :cond_30
    move v2, v1

    goto :goto_26

    :cond_32
    move v0, v1

    goto :goto_1f

    :cond_34
    move v2, v1

    move v0, v1

    goto :goto_26
.end method

.method private static resolveOverlayX(Landroid/app/Activity;I)I
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1772
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 1773
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    const v2, 0x7f090155

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1774
    :goto_14
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_2d

    .line 1775
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1776
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1777
    aget v0, v2, v5

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1782
    :goto_2a
    return v0

    .line 1773
    :cond_2b
    const/4 v0, 0x0

    goto :goto_14

    .line 1779
    :cond_2d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1780
    const v2, 0x412b3333    # 10.7f

    .line 1781
    int-to-float v3, v0

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1782
    sub-int/2addr v0, v2

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2a
.end method

.method private static restoreSheetAfterPick()V
    .registers 2

    .prologue
    .line 1262
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-nez v0, :cond_5

    .line 1272
    :cond_4
    :goto_4
    return-void

    .line 1266
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1267
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_4

    .line 1269
    :catch_17
    move-exception v0

    .line 1270
    const-string v1, "interval_timer_sheet_restore"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static saveSettings(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1305
    if-nez p0, :cond_3

    .line 1327
    :goto_2
    return-void

    .line 1309
    :cond_3
    :try_start_3
    const-string v0, "interval_timer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1310
    const-string v1, "minutes"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    div-int/lit8 v2, v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1311
    const-string v1, "seconds"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalSec:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1312
    const-string v1, "train_sec"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainSec:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1313
    const-string v1, "loops"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1314
    const-string v1, "sound"

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1315
    const-string v1, "block_program_mode"

    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1316
    const-string v1, "block_program_repeat"

    sget-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1317
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz v1, :cond_66

    .line 1318
    const-string v1, "custom_uri"

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1322
    :goto_52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1323
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramRepeat:Z

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramStorage;->save(Landroid/content/Context;ZZLjava/util/ArrayList;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5e} :catch_5f

    goto :goto_2

    .line 1324
    :catch_5f
    move-exception v0

    .line 1325
    const-string v1, "interval_timer_prefs_save"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1320
    :cond_66
    :try_start_66
    const-string v1, "custom_uri"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6b} :catch_5f

    goto :goto_52
.end method

.method private static sequenceSeconds()I
    .registers 4

    .prologue
    .line 969
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveOnOffFromSeed()[I

    move-result-object v0

    .line 970
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockSegments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v0

    return v0
.end method

.method private static showOverlayDialog()Z
    .registers 10

    .prologue
    const/16 v6, 0x124

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 1410
    invoke-static {v9}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v3

    .line 1411
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v0, v1

    .line 1494
    :goto_12
    return v0

    .line 1414
    :cond_13
    sput-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1415
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissOverlayDialog(Z)V

    .line 1418
    :try_start_18
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0b007a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_23} :catch_103

    move-result-object v4

    .line 1423
    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 1424
    const v0, 0x7f090243

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 1425
    const v0, 0x7f090239

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 1426
    const v0, 0x7f09023a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 1427
    const v0, 0x7f090278

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ResetOverlayListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1428
    const v0, 0x7f090292

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    .line 1429
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PauseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$PauseOverlayListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1430
    const v0, 0x7f090293

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$CloseOverlayListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1431
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V

    .line 1432
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    .line 1433
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1434
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 1436
    :try_start_88
    sget-object v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v6, :cond_9a

    .line 1437
    sget-object v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v7, 0x43400000    # 192.0f

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 1438
    sget-object v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxProcess(I)V

    .line 1440
    :cond_9a
    sget-object v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-eqz v6, :cond_b2

    .line 1441
    sget-object v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x42580000    # 54.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1442
    sget-object v6, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    sget-object v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_b2} :catch_160

    .line 1446
    :cond_b2
    :goto_b2
    const v6, 0x7f090294

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1447
    if-eqz v6, :cond_c9

    .line 1448
    invoke-virtual {v6, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1449
    invoke-virtual {v6, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1450
    new-instance v7, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;

    invoke-direct {v7}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1452
    :cond_c9
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1453
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1454
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1458
    :try_start_d9
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1460
    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1461
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1462
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 1463
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1464
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1465
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_fd} :catch_14b

    move-result-object v4

    .line 1466
    if-nez v4, :cond_10c

    move v0, v1

    .line 1467
    goto/16 :goto_12

    .line 1419
    :catch_103
    move-exception v0

    .line 1420
    const-string v2, "interval_timer_overlay_inflate"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 1421
    goto/16 :goto_12

    .line 1469
    :cond_10c
    const v6, 0x106000d

    :try_start_10f
    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1470
    const v6, 0x800033

    invoke-virtual {v4, v6}, Landroid/view/Window;->setGravity(I)V

    .line 1471
    invoke-virtual {v4, v5, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1472
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1473
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1474
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1475
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveOverlayX(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1476
    const/16 v0, 0x12c

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1477
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1478
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x20

    and-int/lit8 v0, v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1482
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1483
    invoke-virtual {v4, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1484
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    :try_end_148
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_148} :catch_14b

    move v0, v2

    .line 1485
    goto/16 :goto_12

    .line 1486
    :catch_14b
    move-exception v0

    .line 1487
    const-string v2, "interval_timer_overlay_show"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1488
    sput-object v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1489
    sput-object v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayContent:Landroid/view/View;

    .line 1490
    sput-object v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 1491
    sput-object v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 1492
    sput-object v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 1493
    sput-object v9, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    move v0, v1

    .line 1494
    goto/16 :goto_12

    .line 1444
    :catch_160
    move-exception v6

    goto/16 :goto_b2
.end method

.method private static showSheet(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 630
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 664
    :goto_e
    return-void

    .line 633
    :cond_f
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 634
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loadSavedSettings(Landroid/app/Activity;)V

    .line 635
    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0421\u0442\u0430\u0440\u0442\u0438\u0440\u0430 \u0441 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u0441\u043f\u0438\u0440\u0430 \u043d\u0430 \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Starts with training, stops on pause"

    .line 636
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x230

    .line 635
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 638
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$1;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 655
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->rebuildSheet()V

    .line 657
    :try_start_4e
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 658
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v1, 0x3f666666    # 0.9f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_5d} :catch_5e

    goto :goto_e

    .line 659
    :catch_5e
    move-exception v0

    .line 660
    const-string v1, "interval_timer_sheet"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 662
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    goto :goto_e
.end method

.method private static startRingtonePick(Landroid/view/View;)V
    .registers 7

    .prologue
    const v5, 0x7f0d0128

    const/4 v4, 0x0

    .line 1332
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1333
    if-nez v0, :cond_e

    .line 1334
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1356
    :goto_d
    return-void

    .line 1337
    :cond_e
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1338
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1340
    :try_start_14
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1341
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1343
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1344
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1345
    const-string v2, "android.intent.extra.ringtone.TITLE"

    const v3, 0x7f0d0155

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1346
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    if-eqz v2, :cond_44

    .line 1347
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->customSignalUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1349
    :cond_44
    const/16 v2, 0x4257

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->launchPicker(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_49} :catch_4a

    goto :goto_d

    .line 1350
    :catch_4a
    move-exception v0

    .line 1351
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1352
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreSheetAfterPick()V

    .line 1353
    const-string v1, "interval_timer_ringtone_pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1354
    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    goto :goto_d
.end method

.method private static startSignalPick(Landroid/view/View;)V
    .registers 5

    .prologue
    const v3, 0x7f0d0128

    .line 1360
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1361
    if-nez v0, :cond_d

    .line 1362
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 1380
    :goto_c
    return-void

    .line 1365
    :cond_d
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 1366
    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->selectedSound:I

    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->soundBeforePick:I

    .line 1368
    :try_start_13
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1369
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1372
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1373
    const/16 v2, 0x4256

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->launchPicker(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_32} :catch_33

    goto :goto_c

    .line 1374
    :catch_33
    move-exception v0

    .line 1375
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z

    .line 1376
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreSheetAfterPick()V

    .line 1377
    const-string v1, "interval_timer_pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1378
    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    goto :goto_c
.end method

.method private static stepFor(I)I
    .registers 2

    .prologue
    .line 794
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_6

    const/4 v0, 0x5

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_d

    const/16 v0, 0xf

    goto :goto_5

    :cond_d
    const/16 v0, 0x1e

    goto :goto_5
.end method

.method public static syncTrainingState()V
    .registers 2

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->syncTrainingStateImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 327
    :goto_3
    return-void

    .line 324
    :catch_4
    move-exception v0

    .line 325
    const-string v1, "IntervalTimerHelper.syncTrainingState"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static syncTrainingStateImpl()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 330
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_6

    .line 351
    :goto_5
    return-void

    .line 335
    :cond_6
    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 336
    if-eqz v3, :cond_39

    move v2, v1

    .line 337
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_39

    .line 338
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 339
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v4, :cond_2b

    .line 337
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    .line 342
    :cond_2b
    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2f} :catch_36

    if-eqz v0, :cond_27

    .line 343
    const/4 v0, 0x1

    .line 350
    :goto_32
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    goto :goto_5

    .line 348
    :catch_36
    move-exception v0

    move v0, v1

    goto :goto_32

    :cond_39
    move v0, v1

    goto :goto_32
.end method

.method private static toast(I)V
    .registers 3

    .prologue
    .line 1830
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1831
    if-nez v0, :cond_8

    .line 1838
    :goto_7
    return-void

    .line 1835
    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_7

    .line 1836
    :catch_11
    move-exception v0

    goto :goto_7
.end method

.method private static toastText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1398
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 1399
    if-eqz v0, :cond_f

    .line 1401
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_10

    .line 1405
    :cond_f
    :goto_f
    return-void

    .line 1402
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 579
    if-nez v0, :cond_e

    .line 580
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 594
    :goto_d
    return-void

    .line 583
    :cond_e
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 584
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_25

    .line 585
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hasLoadedTraining()Z

    move-result v1

    if-nez v1, :cond_21

    .line 586
    const v0, 0x7f0d011a

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    goto :goto_d

    .line 589
    :cond_21
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showSheet(Landroid/app/Activity;)V

    goto :goto_d

    .line 592
    :cond_25
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_2a
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 593
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    goto :goto_d

    .line 592
    :cond_30
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private static toggleTimerPause()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 470
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_7

    .line 489
    :goto_6
    return-void

    .line 473
    :cond_7
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-eqz v0, :cond_31

    .line 474
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 475
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v0, :cond_27

    .line 476
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 478
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 479
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 486
    :cond_27
    :goto_27
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 487
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 488
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updatePauseButtonLabel()V

    goto :goto_6

    .line 481
    :cond_31
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v0, :cond_27

    .line 482
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    .line 483
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 484
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_27
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 192
    :try_start_0
    const-string v0, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_13

    move-result v0

    if-eqz v0, :cond_11

    .line 194
    :goto_10
    return-object p1

    :cond_11
    move-object p1, p0

    .line 192
    goto :goto_10

    .line 193
    :catch_13
    move-exception v0

    move-object p1, p0

    .line 194
    goto :goto_10
.end method

.method public static triggerAllStop()V
    .registers 2

    .prologue
    .line 432
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method private static updateCountdownDisplay(J)V
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 1625
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v2, :cond_7

    .line 1633
    :cond_6
    :goto_6
    return-void

    .line 1628
    :cond_7
    cmp-long v2, p0, v0

    if-lez v2, :cond_f

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 1629
    :cond_f
    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 1630
    long-to-int v2, v0

    sput v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastDisplayedCountdownSec:I

    .line 1631
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatSeconds(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .prologue
    .line 1516
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 1530
    :cond_4
    :goto_4
    return-void

    .line 1520
    :cond_5
    :try_start_5
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    if-eqz v0, :cond_22

    .line 1521
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1522
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 1527
    :catch_1b
    move-exception v0

    .line 1528
    const-string v1, "interval_timer_overlay_visibility"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1524
    :cond_22
    :try_start_22
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1525
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2f} :catch_1b

    goto :goto_4
.end method

.method private static updatePauseButtonLabel()V
    .registers 2

    .prologue
    .line 492
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 503
    :goto_4
    return-void

    .line 496
    :cond_5
    :try_start_5
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z

    if-eqz v0, :cond_13

    .line 497
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    const-string v1, "\u25b6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 501
    :catch_11
    move-exception v0

    goto :goto_4

    .line 499
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pauseBtnView:Landroid/widget/TextView;

    const-string v1, "II"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1a} :catch_11

    goto :goto_4
.end method
