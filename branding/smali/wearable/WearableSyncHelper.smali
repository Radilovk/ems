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

    .line 639
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
    .line 846
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    .line 853
    :cond_8
    :goto_8
    return-void

    .line 850
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_8

    .line 851
    :catch_14
    move-exception v0

    goto :goto_8
.end method

.method private static armFromConfig()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 445
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 446
    if-nez v0, :cond_9

    .line 465
    :goto_8
    return-void

    .line 449
    :cond_9
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    .line 450
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 451
    if-eqz v1, :cond_16

    .line 452
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_8

    .line 455
    :cond_16
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 456
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 457
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 458
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 459
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 460
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 461
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_8

    .line 464
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
    .line 950
    if-nez p0, :cond_3

    .line 955
    :goto_2
    return-void

    .line 953
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 954
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private static colorAuthKey(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 404
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 412
    :goto_4
    return-void

    .line 407
    :cond_5
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 408
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_4

    .line 410
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
    .line 653
    const v0, 0x3f266666    # 0.65f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_b

    .line 654
    const v0, -0xbc5fb9

    .line 659
    :goto_a
    return v0

    .line 656
    :cond_b
    const v0, 0x3f59999a    # 0.85f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_15

    .line 657
    const/16 v0, -0x4d00

    goto :goto_a

    .line 659
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

    .line 810
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 812
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_1f

    .line 815
    :goto_a
    if-nez p0, :cond_1e

    .line 816
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 817
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 818
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 819
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 820
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 821
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 822
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 823
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 824
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 827
    :cond_1e
    return-void

    .line 813
    :catch_1f
    move-exception v0

    goto :goto_a
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 830
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 832
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_17

    .line 835
    :goto_a
    if-nez p0, :cond_16

    .line 836
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 837
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 838
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 839
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 840
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 843
    :cond_16
    return-void

    .line 833
    :catch_17
    move-exception v0

    goto :goto_a
.end method

.method static dismissOverlayForPermissions()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 276
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 277
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
    .line 942
    if-nez p0, :cond_3

    .line 946
    :goto_2
    return p1

    .line 945
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 946
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

    .line 356
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 393
    :cond_6
    :goto_6
    return-void

    .line 359
    :cond_7
    const-string v0, "text_primary"

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 361
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_69

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_69

    .line 362
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 363
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 364
    const-string v2, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v3, "Choose"

    .line 365
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xea9a40

    const/4 v4, -0x1

    .line 364
    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 366
    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 367
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 368
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$PickBandListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$PickBandListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x42200000    # 40.0f

    .line 372
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 373
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 374
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_69} :catch_d4

    .line 378
    :cond_69
    :goto_69
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_91

    .line 379
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    const-string v2, "32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v3, "32 chars 0-9 / a-f"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 380
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$AuthKeyWatcher;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$AuthKeyWatcher;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 381
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->colorAuthKey(Ljava/lang/String;)V

    .line 384
    :cond_91
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_d2

    .line 385
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 386
    :goto_a4
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    .line 387
    const-string v2, "\u0414\u0430\u043d\u043d\u0438 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Band data"

    .line 388
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bg_elevated"

    const v4, -0xd5d5d6

    .line 389
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 387
    invoke-static {p0, v2, v3, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 390
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$LiveDataListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$LiveDataListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 385
    :cond_d2
    const/4 v0, 0x0

    goto :goto_a4

    .line 376
    :catch_d4
    move-exception v0

    goto :goto_69
.end method

.method private static finishArm(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 468
    if-nez p0, :cond_3

    .line 479
    :goto_2
    return-void

    .line 471
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 472
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z

    move-result v0

    if-nez v0, :cond_13

    .line 473
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_2

    .line 476
    :cond_13
    const v0, 0x7f0d0186

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 477
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 478
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    goto :goto_2
.end method

.method static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 280
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
    .line 288
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method private static isValidAuthKey(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 396
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

    .line 397
    :goto_1a
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 398
    :cond_2a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_2f
    const-string v1, "[0-9a-fA-F]{32}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 396
    :cond_36
    const-string v0, ""

    goto :goto_1a
.end method

.method private static layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V
    .registers 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 883
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 899
    :cond_6
    :goto_6
    return-void

    .line 886
    :cond_7
    const v0, 0x7f09029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 887
    const v1, 0x7f0902a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 888
    const v1, 0x7f09029e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 889
    const/16 v1, 0x124

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 890
    const/16 v2, 0xc0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 891
    const/16 v3, 0x2d

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 892
    const/4 v3, 0x5

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    .line 893
    int-to-float v2, v2

    div-float/2addr v2, v8

    add-float/2addr v2, v3

    int-to-float v3, v5

    div-float/2addr v3, v8

    add-float v4, v2, v3

    .line 894
    int-to-float v2, v1

    div-float/2addr v2, v8

    .line 895
    int-to-float v1, v1

    div-float v3, v1, v8

    .line 896
    const/high16 v1, 0x42340000    # 45.0f

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 897
    const/high16 v1, 0x42b40000    # 90.0f

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 898
    const/high16 v1, 0x43070000    # 135.0f

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    goto :goto_6
.end method

.method private static loadConfigIntoUi(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 735
    if-nez p0, :cond_3

    .line 757
    :goto_2
    return-void

    .line 738
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_10

    .line 739
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 741
    :cond_10
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1d

    .line 742
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 744
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_2e

    .line 745
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_3f

    .line 748
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 750
    :cond_3f
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_4c

    .line 751
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 753
    :cond_4c
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_59

    .line 754
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 756
    :cond_59
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    goto :goto_2
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .prologue
    .line 856
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    .line 866
    :cond_c
    :goto_c
    return-void

    .line 860
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 861
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 862
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 863
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_24} :catch_25

    goto :goto_c

    .line 864
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
    .line 802
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 803
    if-nez v0, :cond_8

    .line 807
    :goto_7
    return-void

    .line 806
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    goto :goto_7
.end method

.method private static placeDialButton(Landroid/view/View;FFFFI)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 903
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 913
    :goto_7
    return-void

    .line 906
    :cond_8
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 907
    float-to-double v2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v2, p2

    int-to-float v3, p5

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 908
    float-to-double v4, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    sub-float v0, p3, v0

    int-to-float v1, p5

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    .line 909
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 910
    float-to-int v2, v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 911
    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 912
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7
.end method

.method private static readIntField(Landroid/widget/EditText;III)I
    .registers 5

    .prologue
    .line 784
    if-nez p0, :cond_3

    .line 797
    :cond_2
    :goto_2
    return p1

    .line 788
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

    .line 789
    if-ge p1, p2, :cond_17

    move p1, p2

    .line 790
    goto :goto_2

    .line 792
    :cond_17
    if-le p1, p3, :cond_2

    move p1, p3

    .line 793
    goto :goto_2

    .line 796
    :catch_1b
    move-exception v0

    goto :goto_2
.end method

.method private static refreshOverlayDisplay()V
    .registers 14

    .prologue
    const v5, -0x10acb0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, -0x339a

    const v4, -0x555556

    const/4 v8, 0x0

    .line 565
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-nez v0, :cond_10

    .line 619
    :cond_f
    :goto_f
    return-void

    .line 568
    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_49

    move-object v9, v0

    .line 570
    :goto_18
    if-eqz v9, :cond_4f

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v0

    .line 571
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v10

    .line 572
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v1

    if-nez v1, :cond_52

    .line 573
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    const-string v0, "\u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb"

    const-string v1, "tap \u21bb"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    .line 576
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_f

    .line 577
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    goto :goto_f

    .line 569
    :cond_49
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v9, v0

    goto :goto_18

    .line 570
    :cond_4f
    const/16 v0, 0xaa

    goto :goto_1e

    .line 581
    :cond_52
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getInstance()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient;->getLastRealtimeEventMs()J

    move-result-wide v2

    .line 583
    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-lez v1, :cond_c6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v2, v12, v2

    .line 584
    :goto_66
    const-string v1, "streaming"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, "measuring"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    :cond_76
    const/4 v1, 0x1

    .line 585
    :goto_77
    sget v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    if-lez v11, :cond_103

    if-eqz v1, :cond_103

    .line 586
    sget v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v9

    .line 587
    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v5

    .line 588
    const-wide/16 v10, 0x2710

    cmp-long v1, v2, v10

    if-lez v1, :cond_cb

    const/4 v1, 0x1

    .line 589
    :goto_8e
    sget-object v10, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    sget-object v10, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-eqz v1, :cond_cd

    :goto_9d
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 591
    if-lez v0, :cond_cf

    sget v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    int-to-float v4, v4

    int-to-float v0, v0

    div-float v0, v4, v0

    .line 592
    :goto_a8
    cmpl-float v4, v0, v6

    if-lez v4, :cond_ad

    move v0, v6

    .line 595
    :cond_ad
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v4, :cond_bb

    .line 596
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 597
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 599
    :cond_bb
    if-eqz v1, :cond_d1

    .line 600
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->ageText(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_f

    .line 583
    :cond_c6
    const-wide/16 v2, -0x1

    goto :goto_66

    .line 584
    :cond_c9
    const/4 v1, 0x0

    goto :goto_77

    .line 588
    :cond_cb
    const/4 v1, 0x0

    goto :goto_8e

    :cond_cd
    move v4, v5

    .line 590
    goto :goto_9d

    :cond_cf
    move v0, v8

    .line 591
    goto :goto_a8

    .line 602
    :cond_d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v2, "bpm"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 603
    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_f

    .line 607
    :cond_103
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    const-string v0, "!"

    :goto_10d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_147

    move v0, v5

    :goto_119
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 610
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_125

    .line 611
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v0, v8}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 613
    :cond_125
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    if-eqz v9, :cond_139

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_139

    .line 615
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Set up the band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    :cond_139
    invoke-static {v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_149

    :goto_13f
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_f

    .line 607
    :cond_144
    const-string v0, "\u2026"

    goto :goto_10d

    :cond_147
    move v0, v7

    .line 609
    goto :goto_119

    :cond_149
    move v5, v7

    .line 618
    goto :goto_13f
.end method

.method private static refreshStatusText()V
    .registers 6

    .prologue
    const/16 v2, -0x339a

    const v0, -0x10acb0

    const v1, -0x994496

    .line 702
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    if-nez v3, :cond_d

    .line 732
    :cond_c
    :goto_c
    return-void

    .line 705
    :cond_d
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 706
    if-eqz v3, :cond_c

    .line 711
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 712
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    const-string v1, "Off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    const v2, -0x555556

    move-object v3, v0

    .line 730
    :goto_26
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c

    .line 714
    :cond_31
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 715
    const-string v0, "\u0418\u0437\u0431\u0435\u0440\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0438 \u0432\u044a\u0432\u0435\u0434\u0438 auth key"

    const-string v1, "Choose the band and enter the auth key"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_26

    .line 716
    :cond_41
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 717
    const v1, 0x7f0d019e

    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 718
    goto :goto_26

    .line 719
    :cond_51
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 720
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v4

    .line 721
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    :goto_65
    move v2, v0

    .line 724
    goto :goto_26

    .line 723
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

    .line 724
    :cond_73
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 725
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb \u043d\u0430 \u043a\u0440\u044a\u0433\u0430"

    const-string v1, "Ready \u2014 tap \u21bb on the dial"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_26

    .line 727
    :cond_83
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u0437\u0430 \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u043d\u0435"

    const-string v2, "Ready to activate"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v3, v0

    .line 728
    goto :goto_26
.end method

.method private static resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 916
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 917
    :goto_7
    if-nez v0, :cond_13

    .line 918
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 920
    :cond_13
    :goto_13
    if-nez v0, :cond_1f

    .line 921
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 923
    :cond_1f
    :goto_1f
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_37

    .line 924
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_30

    .line 925
    check-cast v0, Landroid/app/Activity;

    .line 938
    :goto_29
    return-object v0

    :cond_2a
    move-object v0, v1

    .line 916
    goto :goto_7

    :cond_2c
    move-object v0, v1

    .line 918
    goto :goto_13

    :cond_2e
    move-object v0, v1

    .line 921
    goto :goto_1f

    .line 927
    :cond_30
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1f

    .line 929
    :cond_37
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3e

    .line 930
    check-cast v0, Landroid/app/Activity;

    goto :goto_29

    .line 933
    :cond_3e
    :try_start_3e
    instance-of v2, v0, Lcom/isaigu/gymapp/MainActivity;

    if-eqz v2, :cond_46

    .line 934
    check-cast v0, Lcom/isaigu/gymapp/MainActivity;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_44} :catch_45

    goto :goto_29

    .line 936
    :catch_45
    move-exception v0

    :cond_46
    move-object v0, v1

    .line 938
    goto :goto_29
.end method

.method public static resolveActivityForPermissions()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static resolveOverlayX(Landroid/app/Activity;I)I
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 869
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 870
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    const v2, 0x7f090155

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 871
    :goto_14
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_2d

    .line 872
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 873
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 874
    aget v0, v2, v5

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 879
    :goto_2a
    return v0

    .line 870
    :cond_2b
    const/4 v0, 0x0

    goto :goto_14

    .line 876
    :cond_2d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 877
    const v2, 0x412b3333    # 10.7f

    .line 878
    int-to-float v3, v0

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 879
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
    .line 760
    if-nez p0, :cond_3

    .line 781
    :cond_2
    :goto_2
    return-void

    .line 763
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_10

    .line 764
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setEnabled(Landroid/content/Context;Z)V

    .line 766
    :cond_10
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1d

    .line 767
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 769
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_30

    .line 770
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    const/16 v1, 0xaa

    const/16 v2, 0x50

    const/16 v3, 0xdc

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setHrThreshold(Landroid/content/Context;I)V

    .line 772
    :cond_30
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_41

    .line 773
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setStrengthStep(Landroid/content/Context;I)V

    .line 775
    :cond_41
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_56

    .line 776
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 778
    :cond_56
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 779
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static scheduleDialTick()V
    .registers 4

    .prologue
    .line 635
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->DIAL_TICK:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 636
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->DIAL_TICK:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 637
    return-void
.end method

.method private static setSubLabel(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 622
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 631
    :goto_4
    return-void

    .line 625
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    const/4 v2, 0x2

    .line 628
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x12

    if-le v0, v3, :cond_3a

    const/high16 v0, 0x41400000    # 12.0f

    .line 627
    :goto_1e
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 629
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 630
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    .line 628
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

    .line 243
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
    .line 246
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 247
    if-nez v0, :cond_8

    .line 259
    :cond_7
    :goto_7
    return-void

    .line 250
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 253
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$3;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 309
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 352
    :cond_9
    :goto_9
    return-void

    .line 312
    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 315
    :try_start_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_19} :catch_e2

    move-result-object v1

    .line 320
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 321
    const v0, 0x7f09029f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f0902a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 323
    const v0, 0x7f0902a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 324
    const v0, 0x7f0902a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 325
    const v0, 0x7f0902a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 326
    const v0, 0x7f0902a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 327
    const v0, 0x7f0902aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 328
    const v0, 0x7f0902a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 329
    const v0, 0x7f0902a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 330
    const v0, 0x7f0902a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->loadConfigIntoUi(Landroid/app/Activity;)V

    .line 332
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enhanceConfigDialog(Landroid/app/Activity;Landroid/view/View;)V

    .line 333
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 334
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 337
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 339
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 340
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 341
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 343
    :try_start_c4
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_db

    .line 345
    const/16 v1, 0x1e0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 347
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_db} :catch_eb

    .line 351
    :cond_db
    :goto_db
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_9

    .line 316
    :catch_e2
    move-exception v0

    .line 317
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    goto/16 :goto_9

    .line 349
    :catch_eb
    move-exception v0

    goto :goto_db
.end method

.method private static showHelp(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 415
    if-nez p0, :cond_3

    .line 442
    :goto_2
    return-void

    .line 418
    :cond_3
    const-string v0, "\u041f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2014 \u043f\u043e\u043c\u043e\u0449"

    const-string v1, "Band heart rate \u2014 help"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1. \u0421\u043f\u0440\u0438 Mi Fitness / Notify / Gadgetbridge (\u043f\u0440\u0438\u043d\u0443\u0434\u0438\u0442\u0435\u043b\u043d\u043e \u0441\u043f\u0438\u0440\u0430\u043d\u0435) \u2014 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043f\u0440\u0438\u0435\u043c\u0430 \u0441\u0430\u043c\u043e \u0435\u0434\u043d\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435.\n2. MAC: \u0431\u0443\u0442\u043e\u043d \u201e\u0418\u0437\u0431\u0435\u0440\u0438\u201c \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u0441\u0434\u0432\u043e\u0435\u043d\u0438\u0442\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430.\n3. Auth key: 32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 \u043e\u0442 Notify \u0438\u043b\u0438 Mi Fitness (\u0441\u0442\u0430\u0432\u0430 \u0437\u0435\u043b\u0435\u043d, \u043a\u043e\u0433\u0430\u0442\u043e \u0435 \u043f\u0440\u0430\u0432\u0438\u043b\u0435\u043d).\n4. \u201e\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0439 \u0446\u0438\u0444\u0435\u0440\u0431\u043b\u0430\u0442\u201c \u2192 \u043a\u0440\u044a\u0433\u044a\u0442 \u0441\u0435 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u0441\u0430\u043c. \u041f\u044a\u0440\u0432\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438\u0434\u0432\u0430 \u0441\u043b\u0435\u0434 \u043e\u043a\u043e\u043b\u043e 10\u201315 s \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0430 \u043a\u0438\u0442\u043a\u0430\u0442\u0430.\n5. \u0426\u0432\u044f\u0442 \u043d\u0430 \u043a\u0440\u044a\u0433\u0430 = \u0437\u043e\u043d\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u201e\u041f\u0440\u0430\u0433 \u043f\u0443\u043b\u0441\u201c: \u0441\u0438\u0432\u043e <60%, \u0437\u0435\u043b\u0435\u043d\u043e 60\u201370%, \u0436\u044a\u043b\u0442\u043e 70\u201380%, \u043e\u0440\u0430\u043d\u0436\u0435\u0432\u043e 80\u201390%, \u0447\u0435\u0440\u0432\u0435\u043d\u043e \u226590%.\n6. \u0410\u0432\u0442\u043e-\u043d\u0430\u043c\u0430\u043b\u044f\u0432\u0430\u043d\u0435: \u043d\u0430\u0434 \u043f\u0440\u0430\u0433\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u043f\u0430\u0434\u0430 \u0441 \u201e\u0421\u0442\u044a\u043f\u043a\u0430\u201c (\u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0432\u0435\u0434\u043d\u044a\u0436 \u043d\u0430 10 s).\n7. \u0411\u0443\u0442\u043e\u043d i \u043d\u0430 \u043a\u0440\u044a\u0433\u0430 \u2192 \u201e\u0414\u0430\u043d\u043d\u0438 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u201c: \u0432\u0441\u0438\u0447\u043a\u0438 \u0441\u0443\u0440\u043e\u0432\u0438 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u0438 \u0441\u043f\u043e\u0434\u0435\u043b\u044f\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430."

    const-string v2, "1. Force-stop Mi Fitness / Notify / Gadgetbridge \u2014 the band accepts one app.\n2. MAC: tap Choose to list paired devices.\n3. Auth key: 32 chars from Notify or Mi Fitness (turns green when valid).\n4. Activate dial \u2192 it connects by itself. First HR after ~10\u201315 s.\n5. Dial colour = zone vs HR limit: grey <60%, green 60\u201370%, yellow 70\u201380%, orange 80\u201390%, red \u226590%.\n6. Auto-reduce: above the limit strength drops by Step (max once per 10 s).\n7. Dial i button \u2192 Band data: every raw value and share recording."

    .line 419
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
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

    .line 482
    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 483
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v0, v1

    .line 560
    :goto_12
    return v0

    .line 486
    :cond_13
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 489
    :try_start_16
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0b007f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_f1

    move-result-object v4

    .line 493
    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 494
    const v0, 0x7f09029a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 495
    const v0, 0x7f09029b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 496
    const v0, 0x7f09029c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 497
    const v0, 0x7f09029d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 498
    const v0, 0x7f0902a5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 499
    const v0, 0x7f09029e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 500
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V

    .line 501
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 502
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 504
    :try_start_7d
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v6, :cond_88

    .line 505
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v7, 0x43400000    # 192.0f

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 507
    :cond_88
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-eqz v6, :cond_a0

    .line 508
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x42580000    # 54.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 509
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget-object v7, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_a0} :catch_148

    .line 513
    :cond_a0
    :goto_a0
    const v6, 0x7f090299

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 514
    if-eqz v6, :cond_b7

    .line 515
    invoke-virtual {v6, v2}, Landroid/view/View;->setClickable(Z)V

    .line 516
    invoke-virtual {v6, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 517
    new-instance v7, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;

    invoke-direct {v7}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 519
    :cond_b7
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 521
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    :try_start_c7
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 527
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 528
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 529
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 530
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 531
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 532
    if-nez v4, :cond_f5

    move v0, v1

    .line 533
    goto/16 :goto_12

    .line 490
    :catch_f1
    move-exception v0

    move v0, v1

    .line 491
    goto/16 :goto_12

    .line 535
    :cond_f5
    const v6, 0x106000d

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 536
    const v6, 0x800033

    invoke-virtual {v4, v6}, Landroid/view/Window;->setGravity(I)V

    .line 537
    invoke-virtual {v4, v5, v0}, Landroid/view/Window;->setLayout(II)V

    .line 538
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 539
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 540
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 541
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveOverlayX(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 542
    const/16 v0, 0x12c

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 543
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 544
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x20

    and-int/lit8 v0, v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 548
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 549
    invoke-virtual {v4, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 550
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 551
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V

    .line 552
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->scheduleDialTick()V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_137} :catch_13a

    move v0, v2

    .line 553
    goto/16 :goto_12

    .line 554
    :catch_13a
    move-exception v0

    .line 555
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 556
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 557
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 558
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 559
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    move v0, v1

    .line 560
    goto/16 :goto_12

    .line 511
    :catch_148
    move-exception v6

    goto/16 :goto_a0
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 958
    if-nez p0, :cond_3

    .line 965
    :goto_2
    return-void

    .line 962
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_2

    .line 963
    :catch_c
    move-exception v0

    goto :goto_2
.end method

.method public static toastBleError(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_f

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 272
    :cond_f
    :goto_f
    return-void

    .line 266
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
    .line 968
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 975
    :cond_a
    :goto_a
    return-void

    .line 972
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_a

    .line 973
    :catch_14
    move-exception v0

    goto :goto_a
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 293
    if-nez v0, :cond_8

    .line 306
    :goto_7
    return-void

    .line 296
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_1a

    .line 298
    :try_start_c
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 299
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_7

    .line 302
    :catch_19
    move-exception v1

    .line 305
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
    .line 663
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 676
    :cond_4
    :goto_4
    return-void

    .line 667
    :cond_5
    :try_start_5
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    if-eqz v0, :cond_19

    .line 668
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 669
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_4

    .line 674
    :catch_17
    move-exception v0

    goto :goto_4

    .line 671
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 672
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_26} :catch_17

    goto :goto_4
.end method

.method private static validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 679
    if-nez p0, :cond_5

    .line 680
    const-string v0, "\u041d\u044f\u043c\u0430 \u0430\u043a\u0442\u0438\u0432\u0435\u043d \u0435\u043a\u0440\u0430\u043d"

    .line 698
    :goto_4
    return-object v0

    .line 682
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_41

    .line 684
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

    .line 685
    :goto_23
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 686
    :cond_33
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_44

    .line 689
    const-string v0, "Auth key \u0437\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u0435\u043d \u2014 32 hex \u043e\u0442 Mi Fitness"

    goto :goto_4

    .line 684
    :cond_41
    const-string v0, ""

    goto :goto_23

    .line 691
    :cond_44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4f

    .line 692
    const-string v0, "Auth key: \u0442\u043e\u0447\u043d\u043e 32 hex \u0441\u0438\u043c\u0432\u043e\u043b\u0430 (0-9, A-F)"

    goto :goto_4

    .line 694
    :cond_4f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_71

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

    if-ge v0, v1, :cond_74

    .line 696
    :cond_71
    const-string v0, "MAC \u0433\u0440\u0438\u0432\u043d\u0430: \u0444\u043e\u0440\u043c\u0430\u0442 AA:BB:CC:DD:EE:FF"

    goto :goto_4

    .line 698
    :cond_74
    const/4 v0, 0x0

    goto :goto_4
.end method
