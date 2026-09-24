.class public final Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$PickBandListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$AuthKeyWatcher;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$LiveDataListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$DialTick;
    }
.end annotation


# static fields
.field private static final BTN_ANGLE_CLOSE:F = 45.0f

.field private static final BTN_ANGLE_CONNECT:F = 90.0f

.field private static final BTN_ANGLE_INFO:F = 135.0f

.field static final BUTTON_ID:I = 0x7f090297

.field private static final CONFIG_DIALOG_WIDTH_DP:I = 0x1e0

.field private static final CONTENT_WIDTH_WEIGHT:F = 10.0f

.field private static final COUNTDOWN_TEXT_SP:F = 54.0f

.field static final DIALOG_LAYOUT_ID:I = 0x7f0b007e

.field private static final DIAL_TICK:Ljava/lang/Runnable;

.field private static final ID_ACTIVATE:I = 0x7f0902a4

.field private static final ID_AUTH_KEY:I = 0x7f0902aa

.field private static final ID_AUTO_REDUCE:I = 0x7f0902a1

.field private static final ID_BAND_MAC:I = 0x7f0902a9

.field private static final ID_CLOSE:I = 0x7f09029d

.field private static final ID_CONNECT:I = 0x7f0902a5

.field private static final ID_DIAL_HOST:I = 0x7f090299

.field private static final ID_ENABLED:I = 0x7f0902a0

.field private static final ID_HR_VALUE:I = 0x7f09029b

.field private static final ID_INFO:I = 0x7f0902a6

.field private static final ID_OPEN_GB:I = 0x7f0902a8

.field private static final ID_OVERLAY_INFO:I = 0x7f09029e

.field private static final ID_RING:I = 0x7f09029a

.field private static final ID_STATUS:I = 0x7f09029f

.field private static final ID_STEP:I = 0x7f0902a3

.field private static final ID_SUB_LABEL:I = 0x7f09029c

.field private static final ID_THRESHOLD:I = 0x7f0902a2

.field private static final OPAQUE_DIALOG_BG:I = 0x7f080069

.field private static final OVERLAY_BTN_OUTSIDE_GAP_DP:I = 0x5

.field private static final OVERLAY_CONTROL_BTN_DP:I = 0x2d

.field private static final OVERLAY_FRAME_DP:I = 0x124

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007f

.field private static final OVERLAY_ROW_Y_DP:I = 0x12c

.field private static final OVERLAY_SIDEBAR_GAP_DP:I = 0x28

.field private static final OVERLAY_SIZE_DP:I = 0xc0

.field private static final OVERLAY_TAP_SLOP_DP:F = 10.0f

.field static final RIGHT_LAYOUT_ID:I = 0x7f090155

.field private static final SIDEBAR_WIDTH_WEIGHT:F = 0.7f

.field private static final STR_ACTIVATE:I = 0x7f0d0183

.field private static final STR_AUTH_KEY:I = 0x7f0d019a

.field private static final STR_AUTO_REDUCE:I = 0x7f0d017f

.field private static final STR_BAND_MAC:I = 0x7f0d0195

.field private static final STR_BPM:I = 0x7f0d017d

.field private static final STR_BT_PERMISSION:I = 0x7f0d019d

.field private static final STR_CONNECT:I = 0x7f0d0182

.field private static final STR_DIAG_BLE:I = 0x7f0d019c

.field private static final STR_DIAG_GB:I = 0x7f0d0196

.field private static final STR_DIAG_GB_HINT:I = 0x7f0d0199

.field private static final STR_DIAG_GB_META:I = 0x7f0d0198

.field private static final STR_ENABLED:I = 0x7f0d017e

.field private static final STR_GB_MISSING:I = 0x7f0d0187

.field private static final STR_INFO_BODY:I = 0x7f0d0185

.field private static final STR_INFO_TITLE:I = 0x7f0d0184

.field private static final STR_OPEN_GB:I = 0x7f0d0194

.field private static final STR_STATUS_ACTIVE:I = 0x7f0d017a

.field private static final STR_STATUS_ARMED:I = 0x7f0d0179

.field private static final STR_STATUS_BLE:I = 0x7f0d019b

.field private static final STR_STATUS_BT_PERM:I = 0x7f0d019e

.field private static final STR_STATUS_DISCONNECTED:I = 0x7f0d017c

.field private static final STR_STATUS_GB_LISTENING:I = 0x7f0d0197

.field private static final STR_STATUS_IDLE:I = 0x7f0d0178

.field private static final STR_STATUS_WAITING:I = 0x7f0d017b

.field private static final STR_STEP:I = 0x7f0d0181

.field private static final STR_THRESHOLD:I = 0x7f0d0180

.field private static final STR_TITLE:I = 0x7f0d0177

.field private static final STR_TOAST_ARMED:I = 0x7f0d0186

.field private static authKeyView:Landroid/widget/EditText;

.field private static autoReduceSwitch:Landroid/widget/Switch;

.field private static bandConnected:Z

.field private static bandMacView:Landroid/widget/EditText;

.field private static configContent:Landroid/view/View;

.field private static configDialog:Landroid/support/v7/app/AlertDialog;

.field private static displayedHr:I

.field private static enabledSwitch:Landroid/widget/Switch;

.field private static final handler:Landroid/os/Handler;

.field private static hrValueView:Landroid/widget/TextView;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static overlayContent:Landroid/view/View;

.field private static overlayDialog:Landroid/support/v7/app/AlertDialog;

.field private static overlayDownRawX:F

.field private static overlayDownRawY:F

.field private static overlayMoved:Z

.field private static overlayTouchDx:F

.field private static overlayTouchDy:F

.field private static overlayVisible:Z

.field private static panelRoot:Landroid/view/View;

.field private static ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

.field private static statusView:Landroid/widget/TextView;

.field private static stepView:Landroid/widget/EditText;

.field private static subLabelView:Landroid/widget/TextView;

.field private static thresholdView:Landroid/widget/EditText;

.field private static trainingRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 117
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    .line 685
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$DialTick;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$DialTick;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->DIAL_TICK:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000()V
    .registers 0

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$1100()V
    .registers 0

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->finishArm(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showHelp(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1600()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1700(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->colorAuthKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1802(Z)Z
    .registers 1

    .prologue
    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$1900(Z)V
    .registers 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()V
    .registers 0

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    return-void
.end method

.method static synthetic access$2102(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2202(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2302(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2402(Landroid/widget/Switch;)Landroid/widget/Switch;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2502(Landroid/widget/Switch;)Landroid/widget/Switch;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2602(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2702(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2802(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2900()F
    .registers 1

    .prologue
    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$2902(F)F
    .registers 1

    .prologue
    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$3000()F
    .registers 1

    .prologue
    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$3002(F)F
    .registers 1

    .prologue
    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$3100()F
    .registers 1

    .prologue
    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$3102(F)F
    .registers 1

    .prologue
    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$3200()F
    .registers 1

    .prologue
    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$3202(F)F
    .registers 1

    .prologue
    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$3300()Z
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$3302(Z)Z
    .registers 1

    .prologue
    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$3400(Landroid/app/Activity;I)I
    .registers 3

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(II)V
    .registers 2

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$3600()V
    .registers 0

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->openOverlaySettings()V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/Activity;I)V
    .registers 2

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$700()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800()V
    .registers 0

    .prologue
    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    return-void
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V
    .registers 3

    .prologue
    .line 899
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    .line 906
    :cond_8
    :goto_8
    return-void

    .line 903
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_8

    .line 904
    :catch_14
    move-exception v0

    goto :goto_8
.end method

.method private static armFromConfig()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 480
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 481
    if-nez v0, :cond_9

    .line 500
    :goto_8
    return-void

    .line 484
    :cond_9
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    .line 485
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 486
    if-eqz v1, :cond_16

    .line 487
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_8

    .line 490
    :cond_16
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 491
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 492
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 493
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 494
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 495
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 496
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_8

    .line 499
    :cond_37
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->finishArm(Landroid/app/Activity;)V

    goto :goto_8
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 131
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 151
    :cond_5
    :goto_5
    return-void

    .line 134
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissStaleUi()V

    .line 135
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    .line 136
    sput-object p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 138
    :try_start_d
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->attach(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_31

    .line 141
    :goto_10
    const v0, 0x7f090297

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_5

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 149
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V

    goto :goto_5

    .line 139
    :catch_31
    move-exception v0

    goto :goto_10
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 1003
    if-nez p0, :cond_3

    .line 1008
    :goto_2
    return-void

    .line 1006
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1007
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private static colorAuthKey(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 434
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 442
    :goto_4
    return-void

    .line 437
    :cond_5
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 438
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_4

    .line 440
    :cond_16
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->isValidAuthKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const v0, -0x994496

    :goto_21
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_4

    :cond_25
    const v0, -0x10acb0

    goto :goto_21
.end method

.method private static colorForHeartRate(F)I
    .registers 2

    .prologue
    .line 699
    const v0, 0x3f266666    # 0.65f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_b

    .line 700
    const v0, -0xbc5fb9

    .line 705
    :goto_a
    return v0

    .line 702
    :cond_b
    const v0, 0x3f59999a    # 0.85f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_15

    .line 703
    const/16 v0, -0x4d00

    goto :goto_a

    .line 705
    :cond_15
    const v0, -0x1ac6cb

    goto :goto_a
.end method

.method public static detachTrainingHost()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissStaleUi()V

    .line 181
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    .line 182
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 183
    return-void
.end method

.method private static dismissConfigDialog(Z)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 863
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 865
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_1f

    .line 868
    :goto_a
    if-nez p0, :cond_1e

    .line 869
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 870
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 871
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 872
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 873
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 874
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 875
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 876
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 877
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 880
    :cond_1e
    return-void

    .line 866
    :catch_1f
    move-exception v0

    goto :goto_a
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 883
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 885
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_17

    .line 888
    :goto_a
    if-nez p0, :cond_16

    .line 889
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 890
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 891
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 892
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 893
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 896
    :cond_16
    return-void

    .line 886
    :catch_17
    move-exception v0

    goto :goto_a
.end method

.method static dismissOverlayForPermissions()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 277
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 278
    return-void
.end method

.method private static dismissStaleUi()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_14

    .line 188
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_32

    .line 191
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 192
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 193
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 194
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 195
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 197
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2f

    .line 199
    :try_start_18
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_30

    .line 202
    :goto_1d
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 203
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 204
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 205
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 206
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 207
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 208
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 209
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 210
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 212
    :cond_2f
    return-void

    .line 200
    :catch_30
    move-exception v0

    goto :goto_1d

    .line 189
    :catch_32
    move-exception v0

    goto :goto_a
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 4

    .prologue
    .line 995
    if-nez p0, :cond_3

    .line 999
    :goto_2
    return p1

    .line 998
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 999
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_2
.end method

.method private static enhanceConfigDialog(Landroid/app/Activity;Landroid/view/View;)V
    .registers 10

    .prologue
    const/4 v1, -0x1

    const/4 v7, 0x0

    .line 386
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 423
    :cond_6
    :goto_6
    return-void

    .line 389
    :cond_7
    const-string v0, "text_primary"

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 391
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_69

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_69

    .line 392
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 393
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 394
    const-string v2, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v3, "Choose"

    .line 395
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xea9a40

    const/4 v4, -0x1

    .line 394
    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 396
    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 397
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 398
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$PickBandListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$PickBandListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x42200000    # 40.0f

    .line 402
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 403
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 404
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_69} :catch_d4

    .line 408
    :cond_69
    :goto_69
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_91

    .line 409
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    const-string v2, "32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v3, "32 chars 0-9 / a-f"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 410
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$AuthKeyWatcher;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$AuthKeyWatcher;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 411
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->colorAuthKey(Ljava/lang/String;)V

    .line 414
    :cond_91
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_d2

    .line 415
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 416
    :goto_a4
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    .line 417
    const-string v2, "\u0414\u0430\u043d\u043d\u0438 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Band data"

    .line 418
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bg_elevated"

    const v4, -0xd5d5d6

    .line 419
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 417
    invoke-static {p0, v2, v3, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 420
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$LiveDataListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$LiveDataListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 415
    :cond_d2
    const/4 v0, 0x0

    goto :goto_a4

    .line 406
    :catch_d4
    move-exception v0

    goto :goto_69
.end method

.method private static finishArm(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 503
    if-nez p0, :cond_3

    .line 514
    :goto_2
    return-void

    .line 506
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 507
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z

    move-result v0

    if-nez v0, :cond_13

    .line 508
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_2

    .line 511
    :cond_13
    const v0, 0x7f0d0186

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 512
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 513
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    goto :goto_2
.end method

.method static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 281
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .prologue
    .line 289
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method private static hideBandRows(Landroid/app/Activity;Landroid/view/View;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 358
    const v1, 0x7f0902a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 359
    const v1, 0x7f0902aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 360
    const/4 v1, 0x0

    .line 361
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    aput-object v2, v4, v0

    aput-object v3, v4, v7

    array-length v3, v4

    move v2, v0

    :goto_1a
    if-ge v2, v3, :cond_45

    aget-object v0, v4, v2

    .line 362
    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_bb

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 364
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 365
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_bb

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 361
    :goto_41
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1a

    .line 370
    :cond_45
    if-nez v1, :cond_48

    .line 382
    :goto_47
    return-void

    .line 373
    :cond_48
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v2

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_af

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0413\u0440\u0438\u0432\u043d\u0430: "

    const-string v6, "Band: "

    .line 376
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u00b7 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u043a\u043b\u044e\u0447 \u2713"

    const-string v5, "key \u2713"

    .line 377
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  \u00b7  MAC \u0438 \u043a\u043b\u044e\u0447: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v4, "  \u00b7  MAC and key: Settings \u2192 Band"

    .line 379
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    .line 380
    if-eqz v2, :cond_b8

    const v0, -0x994496

    .line 375
    :goto_a1
    invoke-static {p0, v3, v4, v0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 381
    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_47

    .line 378
    :cond_af
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430"

    const-string v4, "Band not set up"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_86

    .line 380
    :cond_b8
    const/16 v0, -0x339a

    goto :goto_a1

    :cond_bb
    move-object v0, v1

    goto :goto_41
.end method

.method private static isValidAuthKey(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 426
    if-eqz p0, :cond_36

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_1a
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 428
    :cond_2a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_2f
    const-string v1, "[0-9a-fA-F]{32}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 426
    :cond_36
    const-string v0, ""

    goto :goto_1a
.end method

.method private static layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V
    .registers 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 936
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 952
    :cond_6
    :goto_6
    return-void

    .line 939
    :cond_7
    const v0, 0x7f09029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 940
    const v1, 0x7f0902a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 941
    const v1, 0x7f09029e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 942
    const/16 v1, 0x124

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 943
    const/16 v2, 0xc0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 944
    const/16 v3, 0x2d

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 945
    const/4 v3, 0x5

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    .line 946
    int-to-float v2, v2

    div-float/2addr v2, v8

    add-float/2addr v2, v3

    int-to-float v3, v5

    div-float/2addr v3, v8

    add-float v4, v2, v3

    .line 947
    int-to-float v2, v1

    div-float/2addr v2, v8

    .line 948
    int-to-float v1, v1

    div-float v3, v1, v8

    .line 949
    const/high16 v1, 0x42340000    # 45.0f

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 950
    const/high16 v1, 0x42b40000    # 90.0f

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 951
    const/high16 v1, 0x43070000    # 135.0f

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    goto :goto_6
.end method

.method private static loadConfigIntoUi(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 784
    if-nez p0, :cond_3

    .line 810
    :goto_2
    return-void

    .line 787
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_10

    .line 788
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 790
    :cond_10
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1d

    .line 791
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 793
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_3c

    .line 794
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 796
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isHrThresholdManual(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 797
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    const v1, -0x994496

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 800
    :cond_3c
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_4d

    .line 801
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 803
    :cond_4d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_5a

    .line 804
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 806
    :cond_5a
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_67

    .line 807
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 809
    :cond_67
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    goto :goto_2
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .prologue
    .line 909
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    .line 919
    :cond_c
    :goto_c
    return-void

    .line 913
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 914
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 915
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 916
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_24} :catch_25

    goto :goto_c

    .line 917
    :catch_25
    move-exception v0

    goto :goto_c
.end method

.method public static onTrainingHostReady()V
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 176
    :cond_d
    :goto_d
    return-void

    .line 159
    :cond_e
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    goto :goto_d

    .line 163
    :cond_18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 164
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 1

    .prologue
    .line 215
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->trainingRunning:Z

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V

    .line 217
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 218
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 219
    return-void
.end method

.method private static openOverlaySettings()V
    .registers 1

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 856
    if-nez v0, :cond_8

    .line 860
    :goto_7
    return-void

    .line 859
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    goto :goto_7
.end method

.method private static placeDialButton(Landroid/view/View;FFFFI)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 956
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 966
    :goto_7
    return-void

    .line 959
    :cond_8
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 960
    float-to-double v2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v2, p2

    int-to-float v3, p5

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 961
    float-to-double v4, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    sub-float v0, p3, v0

    int-to-float v1, p5

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    .line 962
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 963
    float-to-int v2, v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 964
    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 965
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7
.end method

.method private static readIntField(Landroid/widget/EditText;III)I
    .registers 5

    .prologue
    .line 837
    if-nez p0, :cond_3

    .line 850
    :cond_2
    :goto_2
    return p1

    .line 841
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_12} :catch_1b

    move-result p1

    .line 842
    if-ge p1, p2, :cond_17

    move p1, p2

    .line 843
    goto :goto_2

    .line 845
    :cond_17
    if-le p1, p3, :cond_2

    move p1, p3

    .line 846
    goto :goto_2

    .line 849
    :catch_1b
    move-exception v0

    goto :goto_2
.end method

.method private static refreshOverlayDisplay()V
    .registers 14

    .prologue
    const/4 v4, 0x0

    const v7, -0x10acb0

    const v5, -0x555556

    const/4 v9, 0x0

    const/16 v8, -0x339a

    .line 600
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 665
    :cond_e
    :goto_e
    return-void

    .line 603
    :cond_f
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_48

    move-object v6, v0

    .line 605
    :goto_17
    if-eqz v6, :cond_4e

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v0

    .line 606
    :goto_1d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v10

    .line 607
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v1

    if-nez v1, :cond_51

    .line 608
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    const-string v0, "\u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb"

    const-string v1, "tap \u21bb"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    .line 611
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_e

    .line 612
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    goto :goto_e

    .line 604
    :cond_48
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v6, v0

    goto :goto_17

    .line 605
    :cond_4e
    const/16 v0, 0xaa

    goto :goto_1d

    .line 616
    :cond_51
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getLastRealtimeEventMs()J

    move-result-wide v2

    .line 618
    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-lez v1, :cond_d6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v2, v12, v2

    .line 619
    :goto_65
    const-string v1, "streaming"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "measuring"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    :cond_75
    const/4 v1, 0x1

    .line 620
    :goto_76
    sget v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    if-lez v11, :cond_1b9

    if-eqz v1, :cond_1b9

    .line 621
    sget v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v10

    .line 622
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v6

    .line 623
    const-wide/16 v12, 0x2710

    cmp-long v1, v2, v12

    if-lez v1, :cond_db

    const/4 v1, 0x1

    .line 624
    :goto_8d
    sget-object v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget v12, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    sget-object v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-eqz v1, :cond_dd

    :goto_9c
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 626
    if-lez v0, :cond_df

    sget v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    int-to-float v5, v5

    int-to-float v9, v0

    div-float/2addr v5, v9

    .line 627
    :goto_a6
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v5, v9

    if-lez v9, :cond_ae

    .line 628
    const/high16 v5, 0x3f800000    # 1.0f

    .line 630
    :cond_ae
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v9

    .line 631
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 632
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCalibProgress()D

    move-result-wide v12

    double-to-float v5, v12

    .line 634
    :cond_bd
    sget-object v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v11, :cond_cb

    .line 635
    sget-object v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v11, v5}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 636
    sget-object v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 638
    :cond_cb
    if-eqz v1, :cond_e1

    .line 639
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->ageText(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_e

    .line 618
    :cond_d6
    const-wide/16 v2, -0x1

    goto :goto_65

    :cond_d9
    move v1, v4

    .line 619
    goto :goto_76

    :cond_db
    move v1, v4

    .line 623
    goto :goto_8d

    :cond_dd
    move v5, v6

    .line 625
    goto :goto_9c

    :cond_df
    move v5, v9

    .line 626
    goto :goto_a6

    .line 640
    :cond_e1
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 "

    const-string v2, "calibrating "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 642
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCalibLeftMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->ageTextShort(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_e

    .line 644
    :cond_10d
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->actionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastActionMs()J

    move-result-wide v12

    sub-long/2addr v2, v12

    const-wide/16 v12, 0x7530

    cmp-long v2, v2, v12

    if-gez v2, :cond_125

    const/4 v4, 0x1

    .line 646
    :cond_125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " kcal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 647
    if-eqz v4, :cond_1b3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1b3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_157
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Z"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v1

    if-lez v1, :cond_1b6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u2013"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_191
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isHold()Z

    move-result v1

    if-eqz v1, :cond_1ae

    move v6, v7

    .line 648
    :cond_1ae
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_e

    .line 647
    :cond_1b3
    const-string v1, ""

    goto :goto_157

    .line 648
    :cond_1b6
    const-string v1, ""

    goto :goto_191

    .line 653
    :cond_1b9
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    const-string v0, "!"

    :goto_1c3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    move v0, v7

    :goto_1cf
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_1db

    .line 657
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v0, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 659
    :cond_1db
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    if-eqz v6, :cond_1ef

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1ef

    .line 661
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Set up the band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    :cond_1ef
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ff

    :goto_1f5
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_e

    .line 653
    :cond_1fa
    const-string v0, "\u2026"

    goto :goto_1c3

    :cond_1fd
    move v0, v8

    .line 655
    goto :goto_1cf

    :cond_1ff
    move v7, v8

    .line 664
    goto :goto_1f5
.end method

.method private static refreshStatusText()V
    .registers 6

    .prologue
    const/16 v2, -0x339a

    const v0, -0x10acb0

    const v1, -0x994496

    .line 751
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    if-nez v3, :cond_d

    .line 781
    :cond_c
    :goto_c
    return-void

    .line 754
    :cond_d
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 755
    if-eqz v3, :cond_c

    .line 760
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 761
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    const-string v1, "Off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    const v2, -0x555556

    move-object v3, v0

    .line 779
    :goto_26
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c

    .line 763
    :cond_31
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 764
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "Set up the band: Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_26

    .line 765
    :cond_41
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 766
    const v1, 0x7f0d019e

    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 767
    goto :goto_26

    .line 768
    :cond_51
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 769
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v4

    .line 770
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    :goto_65
    move v2, v0

    .line 773
    goto :goto_26

    .line 772
    :cond_67
    const-string v0, "streaming"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    move v0, v1

    goto :goto_65

    :cond_71
    move v0, v2

    goto :goto_65

    .line 773
    :cond_73
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 774
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb \u043d\u0430 \u043a\u0440\u044a\u0433\u0430"

    const-string v1, "Ready \u2014 tap \u21bb on the dial"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_26

    .line 776
    :cond_83
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u0437\u0430 \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u043d\u0435"

    const-string v2, "Ready to activate"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v3, v0

    .line 777
    goto :goto_26
.end method

.method private static resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 969
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 970
    :goto_7
    if-nez v0, :cond_13

    .line 971
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 973
    :cond_13
    :goto_13
    if-nez v0, :cond_1f

    .line 974
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 976
    :cond_1f
    :goto_1f
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_37

    .line 977
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_30

    .line 978
    check-cast v0, Landroid/app/Activity;

    .line 991
    :goto_29
    return-object v0

    :cond_2a
    move-object v0, v1

    .line 969
    goto :goto_7

    :cond_2c
    move-object v0, v1

    .line 971
    goto :goto_13

    :cond_2e
    move-object v0, v1

    .line 974
    goto :goto_1f

    .line 980
    :cond_30
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1f

    .line 982
    :cond_37
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3e

    .line 983
    check-cast v0, Landroid/app/Activity;

    goto :goto_29

    .line 986
    :cond_3e
    :try_start_3e
    instance-of v2, v0, Lcom/isaigu/gymapp/MainActivity;

    if-eqz v2, :cond_46

    .line 987
    check-cast v0, Lcom/isaigu/gymapp/MainActivity;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_44} :catch_45

    goto :goto_29

    .line 989
    :catch_45
    move-exception v0

    :cond_46
    move-object v0, v1

    .line 991
    goto :goto_29
.end method

.method public static resolveActivityForPermissions()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static resolveOverlayX(Landroid/app/Activity;I)I
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 922
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 923
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    const v2, 0x7f090155

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 924
    :goto_14
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_2d

    .line 925
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 926
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 927
    aget v0, v2, v5

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 932
    :goto_2a
    return v0

    .line 923
    :cond_2b
    const/4 v0, 0x0

    goto :goto_14

    .line 929
    :cond_2d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 930
    const v2, 0x412b3333    # 10.7f

    .line 931
    int-to-float v3, v0

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 932
    sub-int/2addr v0, v2

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2a
.end method

.method private static saveConfigFromUi(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 813
    if-nez p0, :cond_4

    .line 834
    :cond_3
    :goto_3
    return-void

    .line 816
    :cond_4
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_11

    .line 817
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setEnabled(Landroid/content/Context;Z)V

    .line 819
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1e

    .line 820
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 822
    :cond_1e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_2d

    .line 823
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    const/16 v1, 0xdc

    invoke-static {v0, v2, v2, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setHrThresholdFromField(Landroid/content/Context;I)V

    .line 825
    :cond_2d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_3e

    .line 826
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setStrengthStep(Landroid/content/Context;I)V

    .line 828
    :cond_3e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_53

    .line 829
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 831
    :cond_53
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 832
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static scheduleDialTick()V
    .registers 4

    .prologue
    .line 681
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->DIAL_TICK:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->DIAL_TICK:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 683
    return-void
.end method

.method private static setSubLabel(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 668
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 677
    :goto_4
    return-void

    .line 671
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 673
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    const/4 v2, 0x2

    .line 674
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x12

    if-le v0, v3, :cond_3a

    const/high16 v0, 0x41400000    # 12.0f

    .line 673
    :goto_1e
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 675
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 676
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    .line 674
    :cond_3a
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_1e
.end method

.method public static showAuthKeyRequired()V
    .registers 3

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 233
    if-nez v0, :cond_8

    .line 244
    :goto_7
    return-void

    .line 236
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$2;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method

.method public static showBluetoothPermissionDenied()V
    .registers 3

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 248
    if-nez v0, :cond_8

    .line 260
    :cond_7
    :goto_7
    return-void

    .line 251
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 254
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$3;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 355
    :cond_a
    :goto_a
    return-void

    .line 313
    :cond_b
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 316
    :try_start_f
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1a} :catch_d4

    move-result-object v1

    .line 321
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 322
    const v0, 0x7f09029f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f0902a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 324
    const v0, 0x7f0902a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 325
    const v0, 0x7f0902a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 326
    const v0, 0x7f0902a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 328
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hideBandRows(Landroid/app/Activity;Landroid/view/View;)V

    .line 329
    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 330
    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 331
    const v0, 0x7f0902a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 332
    const v0, 0x7f0902a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 333
    const v0, 0x7f0902a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->loadConfigIntoUi(Landroid/app/Activity;)V

    .line 335
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enhanceConfigDialog(Landroid/app/Activity;Landroid/view/View;)V

    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 337
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 340
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 342
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 343
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 344
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 346
    :try_start_b6
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_cd

    .line 348
    const/16 v1, 0x1e0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 350
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_cd} :catch_dd

    .line 354
    :cond_cd
    :goto_cd
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_a

    .line 317
    :catch_d4
    move-exception v0

    .line 318
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    goto/16 :goto_a

    .line 352
    :catch_dd
    move-exception v0

    goto :goto_cd
.end method

.method private static showHelp(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 445
    if-nez p0, :cond_3

    .line 477
    :goto_2
    return-void

    .line 448
    :cond_3
    const-string v0, "\u041f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2014 \u043f\u043e\u043c\u043e\u0449"

    const-string v1, "Band heart rate \u2014 help"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1. \u0421\u043f\u0440\u0438 Mi Fitness / Notify / Gadgetbridge (\u043f\u0440\u0438\u043d\u0443\u0434\u0438\u0442\u0435\u043b\u043d\u043e \u0441\u043f\u0438\u0440\u0430\u043d\u0435) \u2014 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043f\u0440\u0438\u0435\u043c\u0430 \u0441\u0430\u043c\u043e \u0435\u0434\u043d\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435.\n2\u20133. MAC \u0438 \u043a\u043b\u044e\u0447 (32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 \u043e\u0442 Notify / Mi Fitness) \u0441\u0435 \u0432\u044a\u0432\u0435\u0436\u0434\u0430\u0442 \u0432\u0435\u0434\u043d\u044a\u0436 \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430 \u0438 \u0432\u0430\u0436\u0430\u0442 \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u043c\u043e\u0434\u0443\u043b\u0438.\n4. \u201e\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0439 \u0446\u0438\u0444\u0435\u0440\u0431\u043b\u0430\u0442\u201c \u2192 \u043a\u0440\u044a\u0433\u044a\u0442 \u0441\u0435 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u0441\u0430\u043c. \u041f\u044a\u0440\u0432\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438\u0434\u0432\u0430 \u0441\u043b\u0435\u0434 \u043e\u043a\u043e\u043b\u043e 10\u201315 s \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0430 \u043a\u0438\u0442\u043a\u0430\u0442\u0430.\n5. \u0426\u0432\u044f\u0442 \u043d\u0430 \u043a\u0440\u044a\u0433\u0430 = \u0437\u043e\u043d\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u201e\u041f\u0440\u0430\u0433 \u043f\u0443\u043b\u0441\u201c: \u0441\u0438\u0432\u043e <60%, \u0437\u0435\u043b\u0435\u043d\u043e 60\u201370%, \u0436\u044a\u043b\u0442\u043e 70\u201380%, \u043e\u0440\u0430\u043d\u0436\u0435\u0432\u043e 80\u201390%, \u0447\u0435\u0440\u0432\u0435\u043d\u043e \u226590%.\n6. \u21bb = \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 30 s \u0432 \u043f\u043e\u043a\u043e\u0439 \u2192 \u0434\u043e\u043b\u043d\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430. \u201e\u041f\u0440\u0430\u0433 \u043f\u0443\u043b\u0441\u201c \u0441\u0435 \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430 \u0441\u0430\u043c (\u0437\u0435\u043b\u0435\u043d\u043e); \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430 \u0435 \u0441 \u043f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442 (0 = \u043f\u0430\u043a \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e).\n7. \u0410\u0432\u0442\u043e-\u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435: \u043f\u0440\u0438 \u043f\u043e\u043a\u0430\u0447\u0432\u0430\u043d\u0435 \u043a\u044a\u043c \u043f\u0440\u0430\u0433\u0430 \u043b\u043e\u0433\u0438\u043a\u0430\u0442\u0430 \u0441\u0432\u0430\u043b\u044f \u043f\u044a\u0440\u0432\u043e \u0441\u0438\u043b\u0430\u0442\u0430, \u043f\u043e\u0441\u043b\u0435 \u0448\u0438\u0440\u0438\u043d\u0430\u0442\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430, \u043f\u043e\u0441\u043b\u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430; \u043d\u0430\u0434 \u0442\u0430\u0432\u0430\u043d\u0430 (+12) \u0441\u043f\u0438\u0440\u0430 \u0438\u0437\u0445\u043e\u0434\u0430. \u0412\u0440\u044a\u0449\u0430 \u043f\u043b\u0430\u0432\u043d\u043e, \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0430\u0434 \u0437\u0430\u0434\u0430\u0434\u0435\u043d\u043e\u0442\u043e. \u041d\u0430 \u043a\u0440\u044a\u0433\u0430: \u0437\u043e\u043d\u0430, \u0433\u0440\u0430\u043d\u0438\u0446\u0438, kcal.\n8. \u0411\u0443\u0442\u043e\u043d i \u043d\u0430 \u043a\u0440\u044a\u0433\u0430 \u2192 \u201e\u0414\u0430\u043d\u043d\u0438 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u201c: \u0432\u0441\u0438\u0447\u043a\u0438 \u0441\u0443\u0440\u043e\u0432\u0438 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u0438 \u0441\u043f\u043e\u0434\u0435\u043b\u044f\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430."

    const-string v2, "1. Force-stop Mi Fitness / Notify / Gadgetbridge \u2014 the band accepts one app.\n2\u20133. MAC and key (32 chars from Notify / Mi Fitness) are entered once in Settings \u2192 Band and used by every module.\n4. Activate dial \u2192 it connects by itself. First HR after ~10\u201315 s.\n5. Dial colour = zone vs HR limit: grey <60%, green 60\u201370%, yellow 70\u201380%, orange 80\u201390%, red \u226590%.\n6. \u21bb = 30 s resting calibration \u2192 lower limit. The HR limit is suggested (green); a trainer value has priority (0 = automatic again).\n7. Auto control: when HR heads for the limit it lowers strength first, then pulse width, then frequency; above the ceiling (+12) output stops. It gives back gradually, never above the set values. Dial: zone, limits, kcal.\n8. Dial i button \u2192 Band data: every raw value and share recording."

    .line 449
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private static showOverlayDialog()Z
    .registers 10

    .prologue
    const/16 v6, 0x124

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 517
    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 518
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v0, v1

    .line 595
    :goto_12
    return v0

    .line 521
    :cond_13
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 524
    :try_start_16
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0b007f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_f1

    move-result-object v4

    .line 528
    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 529
    const v0, 0x7f09029a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 530
    const v0, 0x7f09029b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 531
    const v0, 0x7f09029c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 532
    const v0, 0x7f09029d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 533
    const v0, 0x7f0902a5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 534
    const v0, 0x7f09029e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 535
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V

    .line 536
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 537
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 539
    :try_start_7d
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v6, :cond_88

    .line 540
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v7, 0x43400000    # 192.0f

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 542
    :cond_88
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-eqz v6, :cond_a0

    .line 543
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x42580000    # 54.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 544
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget-object v7, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_a0} :catch_148

    .line 548
    :cond_a0
    :goto_a0
    const v6, 0x7f090299

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 549
    if-eqz v6, :cond_b7

    .line 550
    invoke-virtual {v6, v2}, Landroid/view/View;->setClickable(Z)V

    .line 551
    invoke-virtual {v6, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 552
    new-instance v7, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;

    invoke-direct {v7}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 554
    :cond_b7
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 555
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 556
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    :try_start_c7
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 561
    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 563
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 564
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 565
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 566
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 567
    if-nez v4, :cond_f5

    move v0, v1

    .line 568
    goto/16 :goto_12

    .line 525
    :catch_f1
    move-exception v0

    move v0, v1

    .line 526
    goto/16 :goto_12

    .line 570
    :cond_f5
    const v6, 0x106000d

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 571
    const v6, 0x800033

    invoke-virtual {v4, v6}, Landroid/view/Window;->setGravity(I)V

    .line 572
    invoke-virtual {v4, v5, v0}, Landroid/view/Window;->setLayout(II)V

    .line 573
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 574
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 575
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 576
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveOverlayX(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 577
    const/16 v0, 0x12c

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 578
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 579
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x20

    and-int/lit8 v0, v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 583
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 584
    invoke-virtual {v4, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 585
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 586
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V

    .line 587
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->scheduleDialTick()V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_137} :catch_13a

    move v0, v2

    .line 588
    goto/16 :goto_12

    .line 589
    :catch_13a
    move-exception v0

    .line 590
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 591
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 592
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 593
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 594
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    move v0, v1

    .line 595
    goto/16 :goto_12

    .line 546
    :catch_148
    move-exception v6

    goto/16 :goto_a0
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 1011
    if-nez p0, :cond_3

    .line 1018
    :goto_2
    return-void

    .line 1015
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_2

    .line 1016
    :catch_c
    move-exception v0

    goto :goto_2
.end method

.method public static toastBleError(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_f

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 273
    :cond_f
    :goto_f
    return-void

    .line 267
    :cond_10
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$4;

    invoke-direct {v2, v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$4;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method private static toastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1021
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 1028
    :cond_a
    :goto_a
    return-void

    .line 1025
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_a

    .line 1026
    :catch_14
    move-exception v0

    goto :goto_a
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 294
    if-nez v0, :cond_8

    .line 307
    :goto_7
    return-void

    .line 297
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_1a

    .line 299
    :try_start_c
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 300
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_7

    .line 303
    :catch_19
    move-exception v1

    .line 306
    :cond_1a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    goto :goto_7
.end method

.method public static updateDiagnostics()V
    .registers 3

    .prologue
    .line 228
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method public static updateHeartRate(IZ)V
    .registers 5

    .prologue
    .line 222
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    .line 223
    sput-boolean p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    .line 224
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 1

    .prologue
    .line 709
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 722
    :cond_4
    :goto_4
    return-void

    .line 713
    :cond_5
    :try_start_5
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    if-eqz v0, :cond_19

    .line 714
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 715
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_4

    .line 720
    :catch_17
    move-exception v0

    goto :goto_4

    .line 717
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 718
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_26} :catch_17

    goto :goto_4
.end method

.method private static validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 725
    if-nez p0, :cond_5

    .line 726
    const-string v0, "\u041d\u044f\u043c\u0430 \u0430\u043a\u0442\u0438\u0432\u0435\u043d \u0435\u043a\u0440\u0430\u043d"

    .line 747
    :goto_4
    return-object v0

    .line 728
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 729
    if-eqz v0, :cond_47

    .line 730
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 731
    :goto_23
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 732
    :cond_33
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4a

    .line 735
    const-string v0, "\u041d\u044f\u043c\u0430 \u043a\u043b\u044e\u0447 \u2014 \u0432\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "No key \u2014 enter it in Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 730
    :cond_47
    const-string v0, ""

    goto :goto_23

    .line 738
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5b

    .line 739
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0435 \u043d\u0435\u0432\u0430\u043b\u0438\u0434\u0435\u043d \u2014 \u043f\u043e\u043f\u0440\u0430\u0432\u0438 \u0433\u043e \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "Invalid key \u2014 fix it in Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 742
    :cond_5b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_7d

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_87

    .line 744
    :cond_7d
    const-string v0, "\u041d\u044f\u043c\u0430 MAC \u2014 \u0432\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "No MAC \u2014 enter it in Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 747
    :cond_87
    const/4 v0, 0x0

    goto/16 :goto_4
.end method
