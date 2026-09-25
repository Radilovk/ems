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
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$DialTick;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$LiveDataListener;
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

    .line 794
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
    .line 1011
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1018
    :cond_8
    :goto_8
    return-void

    .line 1015
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_8

    .line 1016
    :catch_14
    move-exception v0

    goto :goto_8
.end method

.method private static armFromConfig()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 568
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 569
    if-nez v0, :cond_9

    .line 588
    :goto_8
    return-void

    .line 572
    :cond_9
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    .line 573
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_16

    .line 575
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_8

    .line 578
    :cond_16
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 579
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 580
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 581
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 582
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 583
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 584
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_8

    .line 587
    :cond_37
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->finishArm(Landroid/app/Activity;)V

    goto :goto_8
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .prologue
    .line 132
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 136
    :goto_3
    return-void

    .line 133
    :catch_4
    move-exception v0

    .line 134
    const-string v1, "WearableSyncHelper.attachMasterPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 139
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 162
    :cond_5
    :goto_5
    return-void

    .line 142
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissStaleUi()V

    .line 143
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    .line 144
    sput-object p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 146
    :try_start_d
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiSession;->attach(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_34

    .line 151
    :goto_10
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->onTrainingPanel(Landroid/view/View;)V

    .line 152
    const v0, 0x7f090297

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_5

    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 160
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :try_start_ready
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V
    :try_end_ready
    .catch Ljava/lang/Throwable; {:try_start_ready .. :try_end_ready} :catch_ready

    goto :goto_5

    :catch_ready
    move-exception v0

    const-string v1, "WearableSyncHelper.onTrainingHostReady"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 147
    :catch_34
    move-exception v0

    .line 148
    const-string v1, "AiSession.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 1115
    if-nez p0, :cond_3

    .line 1120
    :goto_2
    return-void

    .line 1118
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1119
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private static colorAuthKey(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 522
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 530
    :goto_4
    return-void

    .line 525
    :cond_5
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 526
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_4

    .line 528
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
    .line 812
    const v0, 0x3f266666    # 0.65f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_b

    .line 813
    const v0, -0xbc5fb9

    .line 818
    :goto_a
    return v0

    .line 815
    :cond_b
    const v0, 0x3f59999a    # 0.85f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_15

    .line 816
    const/16 v0, -0x4d00

    goto :goto_a

    .line 818
    :cond_15
    const v0, -0x1ac6cb

    goto :goto_a
.end method

.method public static detachTrainingHost()V
    .registers 2

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->detachTrainingHostImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 200
    :goto_3
    return-void

    .line 197
    :catch_4
    move-exception v0

    .line 198
    const-string v1, "WearableSyncHelper.detachTrainingHost"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static detachTrainingHostImpl()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissStaleUi()V

    .line 204
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    .line 205
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 206
    return-void
.end method

.method private static dismissConfigDialog(Z)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 975
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 977
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_1f

    .line 980
    :goto_a
    if-nez p0, :cond_1e

    .line 981
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 982
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 983
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 984
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 985
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 986
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 987
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 988
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 989
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 992
    :cond_1e
    return-void

    .line 978
    :catch_1f
    move-exception v0

    goto :goto_a
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 995
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 997
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_17

    .line 1000
    :goto_a
    if-nez p0, :cond_16

    .line 1001
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1002
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 1003
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 1004
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 1005
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 1008
    :cond_16
    return-void

    .line 998
    :catch_17
    move-exception v0

    goto :goto_a
.end method

.method static dismissOverlayForPermissions()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 324
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 325
    return-void
.end method

.method private static dismissStaleUi()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 209
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_14

    .line 211
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_32

    .line 214
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 215
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 216
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 217
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 218
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 220
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2f

    .line 222
    :try_start_18
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_30

    .line 225
    :goto_1d
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 226
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 227
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 228
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 229
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 230
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 231
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 232
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 233
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 235
    :cond_2f
    return-void

    .line 223
    :catch_30
    move-exception v0

    goto :goto_1d

    .line 212
    :catch_32
    move-exception v0

    goto :goto_a
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 4

    .prologue
    .line 1107
    if-nez p0, :cond_3

    .line 1111
    :goto_2
    return p1

    .line 1110
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1111
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_2
.end method

.method private static enhanceConfigDialog(Landroid/app/Activity;Landroid/view/View;)V
    .registers 8

    .prologue
    .line 484
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 511
    :cond_4
    :goto_4
    return-void

    .line 488
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_61

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_61

    .line 489
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 490
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 491
    const-string v1, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v2, "Choose"

    .line 492
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, -0xea9a40

    const/4 v3, -0x1

    .line 491
    invoke-static {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 493
    const/4 v2, 0x2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 494
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 495
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$PickBandListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$PickBandListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42200000    # 40.0f

    .line 499
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 500
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 501
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_61} :catch_8b

    .line 505
    :cond_61
    :goto_61
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 506
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    const-string v1, "32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v2, "32 chars 0-9 / a-f"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 507
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$AuthKeyWatcher;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$AuthKeyWatcher;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 508
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->colorAuthKey(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 503
    :catch_8b
    move-exception v0

    goto :goto_61
.end method

.method private static finishArm(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 591
    if-nez p0, :cond_3

    .line 602
    :goto_2
    return-void

    .line 594
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 595
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z

    move-result v0

    if-nez v0, :cond_13

    .line 596
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_2

    .line 599
    :cond_13
    const v0, 0x7f0d0186

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 600
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 601
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    goto :goto_2
.end method

.method static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 328
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

.method public static getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .prologue
    .line 336
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method private static hideBandRows(Landroid/app/Activity;Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 458
    const v1, 0x7f0902a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 459
    const v1, 0x7f0902aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 460
    const/4 v1, 0x0

    .line 461
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    aput-object v2, v4, v0

    aput-object v3, v4, v6

    array-length v3, v4

    move v2, v0

    :goto_1a
    if-ge v2, v3, :cond_45

    aget-object v0, v4, v2

    .line 462
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_68

    .line 463
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 464
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_68

    .line 466
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 461
    :goto_41
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1a

    .line 470
    :cond_45
    if-nez v1, :cond_48

    .line 480
    :cond_47
    :goto_47
    return-void

    .line 474
    :cond_48
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 475
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "Set up the band: Settings \u2192 Band"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    const/16 v3, -0x339a

    invoke-static {p0, v0, v2, v3, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 478
    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_47

    :cond_68
    move-object v0, v1

    goto :goto_41
.end method

.method private static isValidAuthKey(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 514
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

    .line 515
    :goto_1a
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 516
    :cond_2a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    :cond_2f
    const-string v1, "[0-9a-fA-F]{32}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 514
    :cond_36
    const-string v0, ""

    goto :goto_1a
.end method

.method private static layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V
    .registers 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 1048
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 1064
    :cond_6
    :goto_6
    return-void

    .line 1051
    :cond_7
    const v0, 0x7f09029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1052
    const v1, 0x7f0902a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1053
    const v1, 0x7f09029e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1054
    const/16 v1, 0x124

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 1055
    const/16 v2, 0xc0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 1056
    const/16 v3, 0x2d

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 1057
    const/4 v3, 0x5

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    .line 1058
    int-to-float v2, v2

    div-float/2addr v2, v8

    add-float/2addr v2, v3

    int-to-float v3, v5

    div-float/2addr v3, v8

    add-float v4, v2, v3

    .line 1059
    int-to-float v2, v1

    div-float/2addr v2, v8

    .line 1060
    int-to-float v1, v1

    div-float v3, v1, v8

    .line 1061
    const/high16 v1, 0x42340000    # 45.0f

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1062
    const/high16 v1, 0x42b40000    # 90.0f

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 1063
    const/high16 v1, 0x43070000    # 135.0f

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    goto :goto_6
.end method

.method private static loadConfigIntoUi(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 896
    if-nez p0, :cond_3

    .line 922
    :goto_2
    return-void

    .line 899
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_10

    .line 900
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 902
    :cond_10
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1d

    .line 903
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 905
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_3c

    .line 906
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 908
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isHrThresholdManual(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 909
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    const v1, -0x994496

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 912
    :cond_3c
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_4d

    .line 913
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 915
    :cond_4d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_5a

    .line 916
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 918
    :cond_5a
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_67

    .line 919
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 921
    :cond_67
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    goto :goto_2
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .prologue
    .line 1021
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1031
    :cond_c
    :goto_c
    return-void

    .line 1025
    :cond_d
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1026
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1027
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1028
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_24} :catch_25

    goto :goto_c

    .line 1029
    :catch_25
    move-exception v0

    goto :goto_c
.end method

.method public static onTrainingHostReady()V
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 191
    :cond_d
    :goto_d
    return-void

    .line 170
    :cond_e
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    goto :goto_d

    .line 174
    :cond_18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 175
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 3

    .prologue
    .line 239
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingRunningChangedImpl(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 243
    :goto_3
    return-void

    .line 240
    :catch_4
    move-exception v0

    .line 241
    const-string v1, "WearableSyncHelper.onTrainingRunningChanged"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onTrainingRunningChangedImpl(Z)V
    .registers 1

    .prologue
    .line 246
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->trainingRunning:Z

    .line 247
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V

    .line 248
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 249
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 250
    return-void
.end method

.method private static openOverlaySettings()V
    .registers 1

    .prologue
    .line 967
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 968
    if-nez v0, :cond_8

    .line 972
    :goto_7
    return-void

    .line 971
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    goto :goto_7
.end method

.method private static placeDialButton(Landroid/view/View;FFFFI)V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 1068
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 1078
    :goto_7
    return-void

    .line 1071
    :cond_8
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1072
    float-to-double v2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v2, p2

    int-to-float v3, p5

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 1073
    float-to-double v4, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    sub-float v0, p3, v0

    int-to-float v1, p5

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    .line 1074
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1075
    float-to-int v2, v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1076
    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1077
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7
.end method

.method private static readIntField(Landroid/widget/EditText;III)I
    .registers 5

    .prologue
    .line 949
    if-nez p0, :cond_3

    .line 962
    :cond_2
    :goto_2
    return p1

    .line 953
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

    .line 954
    if-ge p1, p2, :cond_17

    move p1, p2

    .line 955
    goto :goto_2

    .line 957
    :cond_17
    if-le p1, p3, :cond_2

    move p1, p3

    .line 958
    goto :goto_2

    .line 961
    :catch_1b
    move-exception v0

    goto :goto_2
.end method

.method private static refreshOverlayDisplay()V
    .registers 14

    .prologue
    .line 688
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 774
    :cond_4
    :goto_4
    return-void

    .line 691
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_4b

    move-object v4, v0

    .line 693
    :goto_d
    if-eqz v4, :cond_51

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v0

    .line 694
    :goto_13
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v5

    .line 695
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v1

    if-nez v1, :cond_54

    .line 696
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 698
    const-string v0, "\u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb"

    const-string v1, "tap \u21bb"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x555556

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    .line 699
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_4

    .line 700
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setBeatBpm(I)V

    .line 701
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    goto :goto_4

    .line 692
    :cond_4b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, v0

    goto :goto_d

    .line 693
    :cond_51
    const/16 v0, 0xaa

    goto :goto_13

    .line 705
    :cond_54
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v1

    .line 706
    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastRealtimeEventMs()J

    move-result-wide v2

    .line 707
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_ae

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 708
    :goto_68
    const-string v1, "streaming"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string v1, "measuring"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    :cond_78
    const/4 v1, 0x1

    .line 709
    :goto_79
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 711
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const v1, -0x10acb0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 713
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_9e

    .line 714
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setBeatBpm(I)V

    .line 715
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 717
    :cond_9e
    const-string v0, "\u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430"

    const-string v1, "band not worn"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x10acb0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 707
    :cond_ae
    const-wide/16 v2, -0x1

    goto :goto_68

    .line 708
    :cond_b1
    const/4 v1, 0x0

    goto :goto_79

    .line 720
    :cond_b3
    sget v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    if-lez v6, :cond_266

    if-eqz v1, :cond_266

    .line 721
    sget v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v6

    .line 722
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v5

    .line 723
    const-wide/16 v8, 0x2710

    cmp-long v1, v2, v8

    if-lez v1, :cond_145

    const/4 v1, 0x1

    .line 724
    :goto_ca
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget v7, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    sget-object v7, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-eqz v1, :cond_147

    const v4, -0x555556

    :goto_dc
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 727
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuard;->core()Lcom/isaigu/gymapp/wearable/HrGuardCore;

    move-result-object v7

    .line 728
    const/high16 v8, 0x42200000    # 40.0f

    .line 729
    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v4

    add-int/lit8 v9, v0, 0xc

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x41000000    # 8.0f

    add-float/2addr v9, v4

    .line 730
    const/4 v4, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    sget v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    int-to-float v11, v11

    sub-float/2addr v11, v8

    sub-float v12, v9, v8

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 731
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v4, :cond_138

    .line 732
    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v4

    if-eqz v4, :cond_149

    .line 733
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/16 v8, -0x339a

    invoke-virtual {v4, v8}, Lcom/isaigu/gymapp/widget/TimerRingView;->setProgressColor(I)V

    .line 734
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v4, v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setBand(FF)V

    .line 735
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v4, v8}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMarker(F)V

    .line 736
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCalibProgress()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v4, v8}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 744
    :goto_130
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v1, :cond_184

    const/4 v4, 0x0

    :goto_135
    invoke-virtual {v8, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setBeatBpm(I)V

    .line 746
    :cond_138
    if-eqz v1, :cond_187

    .line 747
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->ageText(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x339a

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 723
    :cond_145
    const/4 v1, 0x0

    goto :goto_ca

    :cond_147
    move v4, v5

    .line 725
    goto :goto_dc

    .line 738
    :cond_149
    sget-object v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v1, :cond_17f

    const v4, -0x555556

    :goto_150
    invoke-virtual {v11, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setProgressColor(I)V

    .line 739
    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v4

    if-lez v4, :cond_181

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v4

    .line 740
    :goto_15d
    sget-object v11, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    int-to-float v4, v4

    sub-float/2addr v4, v8

    sub-float v12, v9, v8

    div-float/2addr v4, v12

    int-to-float v12, v0

    sub-float/2addr v12, v8

    sub-float v13, v9, v8

    div-float/2addr v12, v13

    invoke-virtual {v11, v4, v12}, Lcom/isaigu/gymapp/widget/TimerRingView;->setBand(FF)V

    .line 741
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    add-int/lit8 v11, v0, 0xc

    int-to-float v11, v11

    sub-float/2addr v11, v8

    sub-float v8, v9, v8

    div-float v8, v11, v8

    invoke-virtual {v4, v8}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMarker(F)V

    .line 742
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v4, v10}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    goto :goto_130

    :cond_17f
    move v4, v5

    .line 738
    goto :goto_150

    .line 739
    :cond_181
    const/16 v4, 0x3c

    goto :goto_15d

    .line 744
    :cond_184
    sget v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    goto :goto_135

    .line 748
    :cond_187
    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isCalibrating()Z

    move-result v1

    if-eqz v1, :cond_1b5

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 "

    const-string v2, "calibrating "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 750
    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCalibLeftMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->ageTextShort(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x339a

    .line 749
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 752
    :cond_1b5
    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/HrGuard;->actionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getLastActionMs()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7530

    cmp-long v1, v8, v10

    if-gez v1, :cond_25d

    const/4 v1, 0x1

    .line 754
    :goto_1cd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getKcal()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " kcal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 755
    if-eqz v1, :cond_260

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_260

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1ff
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Z"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v1

    if-lez v1, :cond_263

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getRestHr()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u2013"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_239
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

    .line 757
    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->isHold()Z

    move-result v1

    if-eqz v1, :cond_258

    const v5, -0x10acb0

    .line 756
    :cond_258
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 753
    :cond_25d
    const/4 v1, 0x0

    goto/16 :goto_1cd

    .line 755
    :cond_260
    const-string v1, ""

    goto :goto_1ff

    .line 756
    :cond_263
    const-string v1, ""

    goto :goto_239

    .line 761
    :cond_266
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b3

    const-string v0, "!"

    :goto_270
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b6

    .line 763
    const v0, -0x10acb0

    .line 762
    :goto_27e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_291

    .line 765
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setBeatBpm(I)V

    .line 766
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 768
    :cond_291
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 769
    if-eqz v4, :cond_2a5

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a5

    .line 770
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Set up the band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    :cond_2a5
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b9

    .line 773
    const v1, -0x10acb0

    .line 772
    :goto_2ae
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->setSubLabel(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 761
    :cond_2b3
    const-string v0, "\u2026"

    goto :goto_270

    .line 763
    :cond_2b6
    const/16 v0, -0x339a

    goto :goto_27e

    .line 773
    :cond_2b9
    const/16 v1, -0x339a

    goto :goto_2ae
.end method

.method private static refreshStatusText()V
    .registers 6

    .prologue
    const/16 v2, -0x339a

    const v0, -0x10acb0

    const v1, -0x994496

    .line 864
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    if-nez v3, :cond_d

    .line 893
    :cond_c
    :goto_c
    return-void

    .line 867
    :cond_d
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 868
    if-eqz v3, :cond_c

    .line 873
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 874
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    const-string v1, "Off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    const v2, -0x555556

    move-object v3, v0

    .line 892
    :goto_26
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    invoke-static {v0, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_c

    .line 876
    :cond_2c
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 877
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430: \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "Set up the band: Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_26

    .line 878
    :cond_3c
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 879
    const v1, 0x7f0d019e

    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v0

    move-object v3, v1

    .line 880
    goto :goto_26

    .line 881
    :cond_4c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 882
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v4

    .line 883
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v5

    const-string v0, "streaming"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    if-lez v5, :cond_62

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move v2, v1

    goto :goto_26

    .line 884
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    :goto_60
    move v2, v0

    .line 886
    goto :goto_26

    .line 885
    :cond_62
    const-string v0, "streaming"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    move v0, v1

    goto :goto_60

    :cond_6c
    move v0, v2

    goto :goto_60

    .line 886
    :cond_6e
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 887
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438 \u21bb \u043d\u0430 \u043a\u0440\u044a\u0433\u0430"

    const-string v1, "Ready \u2014 tap \u21bb on the dial"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_26

    .line 889
    :cond_7e
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u0437\u0430 \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u043d\u0435"

    const-string v2, "Ready to activate"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move-object v3, v0

    .line 890
    goto :goto_26
.end method

.method private static resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1081
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1082
    :goto_7
    if-nez v0, :cond_13

    .line 1083
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1085
    :cond_13
    :goto_13
    if-nez v0, :cond_1f

    .line 1086
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1088
    :cond_1f
    :goto_1f
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_37

    .line 1089
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_30

    .line 1090
    check-cast v0, Landroid/app/Activity;

    .line 1103
    :goto_29
    return-object v0

    :cond_2a
    move-object v0, v1

    .line 1081
    goto :goto_7

    :cond_2c
    move-object v0, v1

    .line 1083
    goto :goto_13

    :cond_2e
    move-object v0, v1

    .line 1086
    goto :goto_1f

    .line 1092
    :cond_30
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1f

    .line 1094
    :cond_37
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3e

    .line 1095
    check-cast v0, Landroid/app/Activity;

    goto :goto_29

    .line 1098
    :cond_3e
    :try_start_3e
    instance-of v2, v0, Lcom/isaigu/gymapp/MainActivity;

    if-eqz v2, :cond_46

    .line 1099
    check-cast v0, Lcom/isaigu/gymapp/MainActivity;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_44} :catch_45

    goto :goto_29

    .line 1101
    :catch_45
    move-exception v0

    :cond_46
    move-object v0, v1

    .line 1103
    goto :goto_29
.end method

.method public static resolveActivityForPermissions()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static resolveOverlayX(Landroid/app/Activity;I)I
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1034
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 1035
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    const v2, 0x7f090155

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1036
    :goto_14
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_2d

    .line 1037
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1038
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1039
    aget v0, v2, v5

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1044
    :goto_2a
    return v0

    .line 1035
    :cond_2b
    const/4 v0, 0x0

    goto :goto_14

    .line 1041
    :cond_2d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1042
    const v2, 0x412b3333    # 10.7f

    .line 1043
    int-to-float v3, v0

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1044
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

    .line 925
    if-nez p0, :cond_4

    .line 946
    :cond_3
    :goto_3
    return-void

    .line 928
    :cond_4
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_11

    .line 929
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setEnabled(Landroid/content/Context;Z)V

    .line 931
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1e

    .line 932
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 934
    :cond_1e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_2d

    .line 935
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    const/16 v1, 0xdc

    invoke-static {v0, v2, v2, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setHrThresholdFromField(Landroid/content/Context;I)V

    .line 937
    :cond_2d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_3e

    .line 938
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setStrengthStep(Landroid/content/Context;I)V

    .line 940
    :cond_3e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_53

    .line 941
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 943
    :cond_53
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 944
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
    .line 790
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->DIAL_TICK:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 791
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->DIAL_TICK:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 792
    return-void
.end method

.method private static setSubLabel(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 777
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 786
    :goto_4
    return-void

    .line 780
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 782
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    const/4 v2, 0x2

    .line 783
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x12

    if-le v0, v3, :cond_3a

    const/high16 v0, 0x41400000    # 12.0f

    .line 782
    :goto_1e
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 784
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 785
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    .line 783
    :cond_3a
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_1e
.end method

.method public static showAuthKeyRequired()V
    .registers 3

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 280
    if-nez v0, :cond_8

    .line 291
    :goto_7
    return-void

    .line 283
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
    .line 294
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 295
    if-nez v0, :cond_8

    .line 307
    :cond_7
    :goto_7
    return-void

    .line 298
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 301
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

    .line 357
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 403
    :cond_a
    :goto_a
    return-void

    .line 360
    :cond_b
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 363
    :try_start_f
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1a} :catch_d7

    move-result-object v1

    .line 368
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 369
    const v0, 0x7f09029f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 370
    const v0, 0x7f0902a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 371
    const v0, 0x7f0902a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 372
    const v0, 0x7f0902a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 373
    const v0, 0x7f0902a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 375
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hideBandRows(Landroid/app/Activity;Landroid/view/View;)V

    .line 376
    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 377
    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 378
    const v0, 0x7f0902a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 379
    const v0, 0x7f0902a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 380
    const v0, 0x7f0902a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 381
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->loadConfigIntoUi(Landroid/app/Activity;)V

    .line 382
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enhanceConfigDialog(Landroid/app/Activity;Landroid/view/View;)V

    .line 383
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->styleConfigDialog(Landroid/app/Activity;Landroid/view/View;)V

    .line 384
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 385
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 388
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 390
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 391
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 392
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 394
    :try_start_b9
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_d0

    .line 396
    const/16 v1, 0x1e0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 398
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_d0} :catch_e0

    .line 402
    :cond_d0
    :goto_d0
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_a

    .line 364
    :catch_d7
    move-exception v0

    .line 365
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    goto/16 :goto_a

    .line 400
    :catch_e0
    move-exception v0

    goto :goto_d0
.end method

.method private static showHelp(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 533
    if-nez p0, :cond_3

    .line 565
    :goto_2
    return-void

    .line 536
    :cond_3
    const-string v0, "\u041f\u0443\u043b\u0441 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2014 \u043f\u043e\u043c\u043e\u0449"

    const-string v1, "Band heart rate \u2014 help"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1. \u0421\u043f\u0440\u0438 Mi Fitness / Notify / Gadgetbridge (\u043f\u0440\u0438\u043d\u0443\u0434\u0438\u0442\u0435\u043b\u043d\u043e \u0441\u043f\u0438\u0440\u0430\u043d\u0435) \u2014 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043f\u0440\u0438\u0435\u043c\u0430 \u0441\u0430\u043c\u043e \u0435\u0434\u043d\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435.\n2\u20133. MAC \u0438 \u043a\u043b\u044e\u0447 (32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 \u043e\u0442 Notify / Mi Fitness) \u0441\u0435 \u0432\u044a\u0432\u0435\u0436\u0434\u0430\u0442 \u0432\u0435\u0434\u043d\u044a\u0436 \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430 \u0438 \u0432\u0430\u0436\u0430\u0442 \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u043c\u043e\u0434\u0443\u043b\u0438.\n4. \u201e\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0439 \u0446\u0438\u0444\u0435\u0440\u0431\u043b\u0430\u0442\u201c \u2192 \u043a\u0440\u044a\u0433\u044a\u0442 \u0441\u0435 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u0441\u0430\u043c. \u041f\u044a\u0440\u0432\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438\u0434\u0432\u0430 \u0441\u043b\u0435\u0434 \u043e\u043a\u043e\u043b\u043e 10\u201315 s \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0430 \u043a\u0438\u0442\u043a\u0430\u0442\u0430.\n5. \u0426\u0432\u044f\u0442 \u043d\u0430 \u043a\u0440\u044a\u0433\u0430 = \u0437\u043e\u043d\u0430 \u0441\u043f\u0440\u044f\u043c\u043e \u201e\u041f\u0440\u0430\u0433 \u043f\u0443\u043b\u0441\u201c: \u0441\u0438\u0432\u043e <60%, \u0437\u0435\u043b\u0435\u043d\u043e 60\u201370%, \u0436\u044a\u043b\u0442\u043e 70\u201380%, \u043e\u0440\u0430\u043d\u0436\u0435\u0432\u043e 80\u201390%, \u0447\u0435\u0440\u0432\u0435\u043d\u043e \u226590%.\n6. \u21bb = \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 30 s \u0432 \u043f\u043e\u043a\u043e\u0439 \u2192 \u0434\u043e\u043b\u043d\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430. \u201e\u041f\u0440\u0430\u0433 \u043f\u0443\u043b\u0441\u201c \u0441\u0435 \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430 \u0441\u0430\u043c (\u0437\u0435\u043b\u0435\u043d\u043e); \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430 \u0435 \u0441 \u043f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442 (0 = \u043f\u0430\u043a \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e).\n7. \u0410\u0432\u0442\u043e-\u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435: \u043f\u0440\u0438 \u043f\u043e\u043a\u0430\u0447\u0432\u0430\u043d\u0435 \u043a\u044a\u043c \u043f\u0440\u0430\u0433\u0430 \u043b\u043e\u0433\u0438\u043a\u0430\u0442\u0430 \u0441\u0432\u0430\u043b\u044f \u043f\u044a\u0440\u0432\u043e \u0441\u0438\u043b\u0430\u0442\u0430, \u043f\u043e\u0441\u043b\u0435 \u0448\u0438\u0440\u0438\u043d\u0430\u0442\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430, \u043f\u043e\u0441\u043b\u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430; \u043d\u0430\u0434 \u0442\u0430\u0432\u0430\u043d\u0430 (+12) \u0441\u043f\u0438\u0440\u0430 \u0438\u0437\u0445\u043e\u0434\u0430. \u0412\u0440\u044a\u0449\u0430 \u043f\u043b\u0430\u0432\u043d\u043e, \u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0430\u0434 \u0437\u0430\u0434\u0430\u0434\u0435\u043d\u043e\u0442\u043e. \u041d\u0430 \u043a\u0440\u044a\u0433\u0430: \u0437\u043e\u043d\u0430, \u0433\u0440\u0430\u043d\u0438\u0446\u0438, kcal.\n8. \u0411\u0443\u0442\u043e\u043d i \u043d\u0430 \u043a\u0440\u044a\u0433\u0430 \u2192 \u201e\u0414\u0430\u043d\u043d\u0438 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u201c: \u0432\u0441\u0438\u0447\u043a\u0438 \u0441\u0443\u0440\u043e\u0432\u0438 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u0438 \u0441\u043f\u043e\u0434\u0435\u043b\u044f\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u0430."

    const-string v2, "1. Force-stop Mi Fitness / Notify / Gadgetbridge \u2014 the band accepts one app.\n2\u20133. MAC and key (32 chars from Notify / Mi Fitness) are entered once in Settings \u2192 Band and used by every module.\n4. Activate dial \u2192 it connects by itself. First HR after ~10\u201315 s.\n5. Dial colour = zone vs HR limit: grey <60%, green 60\u201370%, yellow 70\u201380%, orange 80\u201390%, red \u226590%.\n6. \u21bb = 30 s resting calibration \u2192 lower limit. The HR limit is suggested (green); a trainer value has priority (0 = automatic again).\n7. Auto control: when HR heads for the limit it lowers strength first, then pulse width, then frequency; above the ceiling (+12) output stops. It gives back gradually, never above the set values. Dial: zone, limits, kcal.\n8. Dial i button \u2192 Band data: every raw value and share recording."

    .line 537
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
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

    .line 605
    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 606
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v0, v1

    .line 683
    :goto_12
    return v0

    .line 609
    :cond_13
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 612
    :try_start_16
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0b007f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_f1

    move-result-object v4

    .line 616
    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 617
    const v0, 0x7f09029a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 618
    const v0, 0x7f09029b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 619
    const v0, 0x7f09029c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 620
    const v0, 0x7f09029d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 621
    const v0, 0x7f0902a5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 622
    const v0, 0x7f09029e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 623
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V

    .line 624
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 625
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 627
    :try_start_7d
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v6, :cond_88

    .line 628
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v7, 0x43400000    # 192.0f

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 630
    :cond_88
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-eqz v6, :cond_a0

    .line 631
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x42580000    # 54.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 632
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget-object v7, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_a0} :catch_148

    .line 636
    :cond_a0
    :goto_a0
    const v6, 0x7f090299

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 637
    if-eqz v6, :cond_b7

    .line 638
    invoke-virtual {v6, v2}, Landroid/view/View;->setClickable(Z)V

    .line 639
    invoke-virtual {v6, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 640
    new-instance v7, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;

    invoke-direct {v7}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 642
    :cond_b7
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 643
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 644
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    :try_start_c7
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 650
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 651
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 652
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 653
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 654
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 655
    if-nez v4, :cond_f5

    move v0, v1

    .line 656
    goto/16 :goto_12

    .line 613
    :catch_f1
    move-exception v0

    move v0, v1

    .line 614
    goto/16 :goto_12

    .line 658
    :cond_f5
    const v6, 0x106000d

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 659
    const v6, 0x800033

    invoke-virtual {v4, v6}, Landroid/view/Window;->setGravity(I)V

    .line 660
    invoke-virtual {v4, v5, v0}, Landroid/view/Window;->setLayout(II)V

    .line 661
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 662
    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 663
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 664
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveOverlayX(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 665
    const/16 v0, 0x12c

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 666
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 667
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x20

    and-int/lit8 v0, v0, -0x3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 671
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 672
    invoke-virtual {v4, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 673
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 674
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V

    .line 675
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->scheduleDialTick()V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_137} :catch_13a

    move v0, v2

    .line 676
    goto/16 :goto_12

    .line 677
    :catch_13a
    move-exception v0

    .line 678
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 679
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 680
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 681
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 682
    sput-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    move v0, v1

    .line 683
    goto/16 :goto_12

    .line 634
    :catch_148
    move-exception v6

    goto/16 :goto_a0
.end method

.method private static styleConfigDialog(Landroid/app/Activity;Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 408
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 409
    const v1, 0x7f0902a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 410
    const v2, 0x7f0902a4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 412
    if-eqz v1, :cond_19

    .line 413
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :cond_19
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_3e

    .line 417
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 418
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setEnabled(Landroid/content/Context;Z)V

    .line 419
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_3e

    .line 420
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_3e
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v1, :cond_6e

    .line 425
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 426
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6e

    .line 427
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 428
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 429
    if-lez v4, :cond_6e

    .line 430
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :cond_6e
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_7a

    .line 435
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->styleKitButton(Landroid/widget/TextView;I)V

    .line 437
    :cond_7a
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_9b

    .line 438
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 440
    :cond_9b
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/widget/EditText;

    const/4 v1, 0x0

    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    aput-object v4, v2, v1

    const/4 v1, 0x1

    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    aput-object v4, v2, v1

    array-length v4, v2

    move v1, v3

    :goto_aa
    if-ge v1, v4, :cond_cc

    aget-object v3, v2, v1

    .line 441
    if-eqz v3, :cond_c8

    .line 442
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v6, 0x41400000    # 12.0f

    .line 443
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 442
    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c8} :catch_cb

    .line 440
    :cond_c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    .line 446
    :catch_cb
    move-exception v1

    .line 448
    :cond_cc
    return-void
.end method

.method private static styleKitButton(Landroid/widget/TextView;I)V
    .registers 4

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 455
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 1123
    if-nez p0, :cond_3

    .line 1130
    :goto_2
    return-void

    .line 1127
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_2

    .line 1128
    :catch_c
    move-exception v0

    goto :goto_2
.end method

.method public static toastBleError(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_f

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 320
    :cond_f
    :goto_f
    return-void

    .line 314
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
    .line 1133
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 1140
    :cond_a
    :goto_a
    return-void

    .line 1137
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_a

    .line 1138
    :catch_14
    move-exception v0

    goto :goto_a
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 341
    if-nez v0, :cond_8

    .line 354
    :goto_7
    return-void

    .line 344
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_1a

    .line 346
    :try_start_c
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 347
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_7

    .line 350
    :catch_19
    move-exception v1

    .line 353
    :cond_1a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    goto :goto_7
.end method

.method public static updateDiagnostics()V
    .registers 2

    .prologue
    .line 268
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateDiagnosticsImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 272
    :goto_3
    return-void

    .line 269
    :catch_4
    move-exception v0

    .line 270
    const-string v1, "WearableSyncHelper.updateDiagnostics"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static updateDiagnosticsImpl()V
    .registers 3

    .prologue
    .line 275
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method public static updateHeartRate(IZ)V
    .registers 4

    .prologue
    .line 254
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateHeartRateImpl(IZ)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 258
    :goto_3
    return-void

    .line 255
    :catch_4
    move-exception v0

    .line 256
    const-string v1, "WearableSyncHelper.updateHeartRate"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static updateHeartRateImpl(IZ)V
    .registers 5

    .prologue
    .line 261
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    .line 262
    sput-boolean p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    .line 263
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 1

    .prologue
    .line 822
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 835
    :cond_4
    :goto_4
    return-void

    .line 826
    :cond_5
    :try_start_5
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    if-eqz v0, :cond_19

    .line 827
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 828
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_4

    .line 833
    :catch_17
    move-exception v0

    goto :goto_4

    .line 830
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 831
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_26} :catch_17

    goto :goto_4
.end method

.method private static validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 838
    if-nez p0, :cond_b

    .line 839
    const-string v0, "\u041d\u044f\u043c\u0430 \u0430\u043a\u0442\u0438\u0432\u0435\u043d \u0435\u043a\u0440\u0430\u043d"

    const-string v1, "No active screen"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    :goto_a
    return-object v0

    .line 841
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 842
    if-eqz v0, :cond_4d

    .line 843
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

    .line 844
    :goto_29
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 845
    :cond_39
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 847
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_50

    .line 848
    const-string v0, "\u041d\u044f\u043c\u0430 \u043a\u043b\u044e\u0447 \u2014 \u0432\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "No key \u2014 enter it in Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 843
    :cond_4d
    const-string v0, ""

    goto :goto_29

    .line 851
    :cond_50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_61

    .line 852
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0435 \u043d\u0435\u0432\u0430\u043b\u0438\u0434\u0435\u043d \u2014 \u043f\u043e\u043f\u0440\u0430\u0432\u0438 \u0433\u043e \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "Invalid key \u2014 fix it in Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 855
    :cond_61
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_83

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

    if-ge v0, v1, :cond_8d

    .line 857
    :cond_83
    const-string v0, "\u041d\u044f\u043c\u0430 MAC \u2014 \u0432\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "No MAC \u2014 enter it in Settings \u2192 Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 860
    :cond_8d
    const/4 v0, 0x0

    goto/16 :goto_a
.end method
