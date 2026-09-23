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
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;
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

    .line 117
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Landroid/app/Activity;
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/Activity;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/app/Activity;)Ljava/lang/String;
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Landroid/app/Activity;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showInfo(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1302(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$1400(Z)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    return-void
.end method

.method static synthetic access$1500()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    return-void
.end method

.method static synthetic access$1602(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1702(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1802(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1902(Landroid/widget/Switch;)Landroid/widget/Switch;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Landroid/widget/Switch;)Landroid/widget/Switch;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2102(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2202(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2302(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2402(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2500()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$2502(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$2600()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$2602(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$2700()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$2702(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$2800()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$2802(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$2900()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$2902(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$3000(Landroid/app/Activity;I)I
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(II)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$3200()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->openOverlaySettings()V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/Activity;I)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$600()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$800()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$900(Landroid/app/Activity;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->finishArm(Landroid/app/Activity;)V

    return-void
.end method

.method private static applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V
    .registers 2

    .line 732
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 736
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 738
    goto :goto_15

    .line 737
    :catchall_14
    move-exception p0

    .line 739
    :goto_15
    return-void

    .line 733
    :cond_16
    :goto_16
    return-void
.end method

.method private static armFromConfig()V
    .registers 2

    .line 348
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 349
    if-nez v0, :cond_8

    .line 350
    return-void

    .line 352
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    .line 353
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 354
    if-eqz v1, :cond_15

    .line 355
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 356
    return-void

    .line 358
    :cond_15
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 359
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 361
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 362
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 363
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 364
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 365
    return-void

    .line 367
    :cond_37
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->finishArm(Landroid/app/Activity;)V

    .line 368
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 131
    if-eqz p0, :cond_2f

    if-nez p1, :cond_5

    goto :goto_2f

    .line 134
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissStaleUi()V

    .line 135
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    .line 136
    sput-object p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 137
    const p1, 0x7f090297

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 138
    if-nez p0, :cond_16

    .line 139
    return-void

    .line 141
    :cond_16
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 142
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 145
    new-instance p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;

    invoke-direct {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V

    .line 147
    return-void

    .line 132
    :cond_2f
    :goto_2f
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 836
    if-nez p0, :cond_3

    .line 837
    return-void

    .line 839
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 840
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    return-void
.end method

.method private static buildSubLabel(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .line 529
    const v0, 0x7f0d017d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildWaitingLabel(Landroid/app/Activity;)Ljava/lang/String;
    .registers 5

    .line 511
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getGbHrEventCount()I

    move-result v0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 513
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const v0, 0x7f0d019c

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    const-string v2, "notify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleNotifyCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    const-string v2, " ch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleLastNotifyChar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleBuildTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_58

    .line 522
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    const-string p0, "auth key + MAC \u0437\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u0438"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static colorForHeartRate(F)I
    .registers 2

    .line 533
    const v0, 0x3f266666    # 0.65f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_b

    .line 534
    const p0, -0xbc5fb9

    return p0

    .line 536
    :cond_b
    const v0, 0x3f59999a    # 0.85f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_15

    .line 537
    const/16 p0, -0x4d00

    return p0

    .line 539
    :cond_15
    const p0, -0x1ac6cb

    return p0
.end method

.method public static detachTrainingHost()V
    .registers 1

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissStaleUi()V

    .line 177
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    .line 178
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 179
    return-void
.end method

.method private static dismissConfigDialog(Z)V
    .registers 2

    .line 696
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 698
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 700
    goto :goto_9

    .line 699
    :catchall_8
    move-exception v0

    .line 701
    :goto_9
    if-nez p0, :cond_1e

    .line 702
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 703
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 704
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 705
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 706
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 707
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 708
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 709
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 710
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 713
    :cond_1e
    return-void
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 2

    .line 716
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 718
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 720
    goto :goto_9

    .line 719
    :catchall_8
    move-exception v0

    .line 721
    :goto_9
    if-nez p0, :cond_16

    .line 722
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 723
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 724
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 725
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 726
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 729
    :cond_16
    return-void
.end method

.method static dismissOverlayForPermissions()V
    .registers 1

    .line 269
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 270
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 271
    return-void
.end method

.method private static dismissStaleUi()V
    .registers 2

    .line 182
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 184
    :try_start_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 186
    goto :goto_a

    .line 185
    :catchall_9
    move-exception v0

    .line 187
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 188
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 189
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 190
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 191
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 193
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2f

    .line 195
    :try_start_18
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    .line 197
    goto :goto_1d

    .line 196
    :catchall_1c
    move-exception v0

    .line 198
    :goto_1d
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 199
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 200
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 201
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 202
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 203
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 204
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 205
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 206
    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 208
    :cond_2f
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 828
    if-nez p0, :cond_3

    .line 829
    return p1

    .line 831
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 832
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static finishArm(Landroid/app/Activity;)V
    .registers 2

    .line 371
    if-nez p0, :cond_3

    .line 372
    return-void

    .line 374
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 375
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z

    move-result v0

    if-nez v0, :cond_13

    .line 376
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 377
    return-void

    .line 379
    :cond_13
    const v0, 0x7f0d0186

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 380
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 381
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 382
    return-void
.end method

.method static getContext()Landroid/content/Context;
    .registers 1

    .line 274
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method static getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;
    .registers 1

    .line 282
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method private static layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V
    .registers 12

    .line 769
    if-eqz p0, :cond_59

    if-nez p1, :cond_5

    goto :goto_59

    .line 772
    :cond_5
    const v0, 0x7f09029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 773
    const v0, 0x7f0902a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 774
    const v2, 0x7f09029e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 775
    const/16 v2, 0x124

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 776
    const/16 v3, 0xc0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    .line 777
    const/16 v4, 0x2d

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    .line 778
    const/4 v4, 0x5

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    int-to-float p0, p0

    .line 779
    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, p0

    int-to-float p0, v8

    div-float/2addr p0, v4

    add-float/2addr p0, v3

    .line 780
    int-to-float v2, v2

    div-float v9, v2, v4

    .line 781
    nop

    .line 782
    const/high16 v2, 0x42340000    # 45.0f

    move v3, v9

    move v4, v9

    move v5, p0

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 783
    const/high16 v3, 0x42b40000    # 90.0f

    move-object v2, v0

    move v5, v9

    move v6, p0

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 784
    const/high16 v4, 0x43070000    # 135.0f

    move-object v3, p1

    move v6, v9

    move v7, p0

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 785
    return-void

    .line 770
    :cond_59
    :goto_59
    return-void
.end method

.method private static loadConfigIntoUi(Landroid/app/Activity;)V
    .registers 3

    .line 621
    if-nez p0, :cond_3

    .line 622
    return-void

    .line 624
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_e

    .line 625
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 627
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_19

    .line 628
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 630
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_28

    .line 631
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 633
    :cond_28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_37

    .line 634
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 636
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_42

    .line 637
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 639
    :cond_42
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_4d

    .line 640
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 642
    :cond_4d
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 643
    return-void
.end method

.method private static moveOverlayWindow(II)V
    .registers 3

    .line 742
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 746
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 747
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 748
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 749
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    .line 751
    goto :goto_24

    .line 750
    :catchall_23
    move-exception p0

    .line 752
    :goto_24
    return-void

    .line 743
    :cond_25
    :goto_25
    return-void
.end method

.method public static onTrainingHostReady()V
    .registers 2

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_26

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_26

    .line 155
    :cond_e
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 157
    return-void

    .line 159
    :cond_18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 160
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void

    .line 153
    :cond_26
    :goto_26
    return-void
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 1

    .line 211
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->trainingRunning:Z

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 215
    return-void
.end method

.method private static openOverlaySettings()V
    .registers 1

    .line 688
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 689
    if-nez v0, :cond_8

    .line 690
    return-void

    .line 692
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 693
    return-void
.end method

.method private static placeDialButton(Landroid/view/View;FFFFI)V
    .registers 12

    .line 789
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 790
    return-void

    .line 792
    :cond_5
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 793
    float-to-double v2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-float p1, v4

    add-float/2addr p2, p1

    int-to-float p1, p5

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    sub-float/2addr p2, p1

    .line 794
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    double-to-float p4, v2

    sub-float/2addr p3, p4

    sub-float/2addr p3, p1

    .line 795
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 796
    float-to-int p2, p2

    const/4 p4, 0x0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 797
    float-to-int p2, p3

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 798
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    return-void
.end method

.method private static readIntField(Landroid/widget/EditText;III)I
    .registers 4

    .line 670
    if-nez p0, :cond_3

    .line 671
    return p1

    .line 674
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1a

    .line 675
    if-ge p0, p2, :cond_16

    .line 676
    return p2

    .line 678
    :cond_16
    if-le p0, p3, :cond_19

    .line 679
    return p3

    .line 681
    :cond_19
    return p0

    .line 682
    :catchall_1a
    move-exception p0

    .line 683
    return p1
.end method

.method private static refreshOverlayDisplay()V
    .registers 5

    .line 467
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 468
    return-void

    .line 470
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_e

    move-object v1, v0

    goto :goto_12

    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 472
    :goto_12
    if-eqz v1, :cond_19

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    goto :goto_1b

    :cond_19
    const/16 v1, 0xaa

    .line 473
    :goto_1b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v2

    const v3, -0x555556

    const/4 v4, 0x0

    if-nez v2, :cond_49

    .line 474
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_41

    if-eqz v0, :cond_41

    .line 477
    const v2, 0x7f0d017d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :cond_41
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_48

    .line 480
    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 482
    :cond_48
    return-void

    .line 484
    :cond_49
    sget v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    if-lez v2, :cond_89

    .line 485
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    if-lez v1, :cond_5e

    sget v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v4, v2, v1

    .line 487
    :cond_5e
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v1

    if-lez v2, :cond_66

    .line 488
    const/high16 v4, 0x3f800000    # 1.0f

    .line 490
    :cond_66
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->colorForHeartRate(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v1, :cond_7b

    .line 492
    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 493
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 495
    :cond_7b
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_88

    if-eqz v0, :cond_88

    .line 496
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->buildSubLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_88
    goto :goto_af

    .line 499
    :cond_89
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    if-eqz v2, :cond_98

    const/16 v3, -0x339a

    :cond_98
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 501
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v1, :cond_a2

    .line 502
    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 504
    :cond_a2
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_af

    if-eqz v0, :cond_af

    .line 505
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->buildWaitingLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :cond_af
    :goto_af
    return-void
.end method

.method private static refreshStatusText()V
    .registers 6

    .line 582
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 583
    return-void

    .line 585
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 586
    if-nez v0, :cond_d

    .line 587
    return-void

    .line 589
    :cond_d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f0d0178

    const-string v3, " \u2014 "

    if-nez v1, :cond_38

    .line 590
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleBuildTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    return-void

    .line 594
    :cond_38
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 595
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleBuildTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2014 \u0432\u044a\u0432\u0435\u0434\u0438 auth key + MAC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    return-void

    .line 599
    :cond_59
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 600
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d019e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    return-void

    .line 603
    :cond_6c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 604
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d019b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 605
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 604
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    return-void

    .line 608
    :cond_89
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->trainingRunning:Z

    if-eqz v1, :cond_a0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 609
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d017a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    return-void

    .line 612
    :cond_a0
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 613
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d0179

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    return-void

    .line 616
    :cond_b3
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleBuildTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    return-void
.end method

.method private static resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 802
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    .line 803
    :goto_9
    if-nez p0, :cond_15

    .line 804
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_15

    :cond_14
    move-object p0, v0

    .line 806
    :cond_15
    :goto_15
    if-nez p0, :cond_21

    .line 807
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_21

    :cond_20
    move-object p0, v0

    .line 809
    :cond_21
    :goto_21
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_33

    .line 810
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2c

    .line 811
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 813
    :cond_2c
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_21

    .line 815
    :cond_33
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3a

    .line 816
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 819
    :cond_3a
    :try_start_3a
    instance-of v1, p0, Lcom/isaigu/gymapp/MainActivity;

    if-eqz v1, :cond_41

    .line 820
    check-cast p0, Lcom/isaigu/gymapp/MainActivity;
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_42

    return-object p0

    .line 823
    :cond_41
    goto :goto_43

    .line 822
    :catchall_42
    move-exception p0

    .line 824
    :goto_43
    return-object v0
.end method

.method public static resolveActivityForPermissions()Landroid/app/Activity;
    .registers 1

    .line 278
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static resolveOverlayX(Landroid/app/Activity;I)I
    .registers 7

    .line 755
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 756
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v1, :cond_12

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 757
    :goto_13
    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_2b

    .line 758
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 759
    invoke-virtual {v1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 760
    aget p0, p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 762
    :cond_2b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 763
    const v1, 0x412b3333    # 10.7f

    .line 764
    int-to-float v3, p0

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 765
    sub-int/2addr p0, v1

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static saveConfigFromUi(Landroid/app/Activity;)V
    .registers 5

    .line 646
    if-nez p0, :cond_3

    .line 647
    return-void

    .line 649
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_e

    .line 650
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setEnabled(Landroid/content/Context;Z)V

    .line 652
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_19

    .line 653
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 655
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_2a

    .line 656
    const/16 v1, 0xaa

    const/16 v2, 0x50

    const/16 v3, 0xdc

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setHrThreshold(Landroid/content/Context;I)V

    .line 658
    :cond_2a
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_39

    .line 659
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setStrengthStep(Landroid/content/Context;I)V

    .line 661
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_4c

    .line 662
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 664
    :cond_4c
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_5f

    .line 665
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 667
    :cond_5f
    return-void
.end method

.method public static showAuthKeyRequired()V
    .registers 3

    .line 228
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 229
    if-nez v0, :cond_8

    .line 230
    return-void

    .line 232
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$2;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method public static showBluetoothPermissionDenied()V
    .registers 3

    .line 242
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 243
    if-nez v0, :cond_8

    .line 244
    return-void

    .line 246
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$3;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 4

    .line 303
    if-eqz p0, :cond_e8

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_e8

    .line 306
    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 309
    :try_start_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_e0

    .line 313
    nop

    .line 314
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 315
    const v1, 0x7f09029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 316
    const v1, 0x7f0902a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 317
    const v1, 0x7f0902a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 318
    const v1, 0x7f0902a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 319
    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 320
    const v1, 0x7f0902a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 321
    const v1, 0x7f0902aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 322
    const v1, 0x7f0902a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 323
    const v1, 0x7f0902a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 324
    const v1, 0x7f0902a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 325
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->loadConfigIntoUi(Landroid/app/Activity;)V

    .line 326
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 327
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 330
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 333
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 334
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 336
    :try_start_c1
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_d8

    .line 338
    const/16 v1, 0x1e0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 340
    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/view/Window;->setGravity(I)V
    :try_end_d8
    .catchall {:try_start_c1 .. :try_end_d8} :catchall_d9

    .line 343
    :cond_d8
    goto :goto_da

    .line 342
    :catchall_d9
    move-exception p0

    .line 344
    :goto_da
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 345
    return-void

    .line 310
    :catchall_e0
    move-exception v0

    .line 311
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 312
    return-void

    .line 304
    :cond_e8
    :goto_e8
    return-void
.end method

.method private static showInfo(Landroid/app/Activity;)V
    .registers 4

    .line 864
    if-nez p0, :cond_3

    .line 865
    return-void

    .line 867
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->getRecentText()Ljava/lang/String;

    move-result-object v0

    .line 868
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 869
    :cond_f
    const v0, 0x7f0d0185

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 871
    :cond_16
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->getLogFileHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n---\n\u0424\u0430\u0439\u043b: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLE \u0434\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430"

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 874
    return-void
.end method

.method private static showOverlayDialog()Z
    .registers 10

    .line 385
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 386
    const/4 v2, 0x0

    if-eqz v1, :cond_139

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_139

    .line 389
    :cond_10
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 392
    :try_start_13
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007f

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_137

    .line 395
    nop

    .line 396
    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 397
    const v4, 0x7f09029a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 398
    const v4, 0x7f09029b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 399
    const v4, 0x7f09029c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 400
    const v4, 0x7f09029d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 401
    const v4, 0x7f0902a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 402
    const v4, 0x7f09029e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V

    .line 404
    const/16 v4, 0x124

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 405
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 407
    const/4 v6, 0x2

    const/4 v7, 0x1

    :try_start_7e
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v8, :cond_89

    .line 408
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v9, 0x43400000    # 192.0f

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 410
    :cond_89
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-eqz v8, :cond_9f

    .line 411
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_9f
    .catchall {:try_start_7e .. :try_end_9f} :catchall_a0

    .line 415
    :cond_9f
    goto :goto_a1

    .line 414
    :catchall_a0
    move-exception v8

    .line 416
    :goto_a1
    const v8, 0x7f090299

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 417
    if-eqz v8, :cond_b8

    .line 418
    invoke-virtual {v8, v7}, Landroid/view/View;->setClickable(Z)V

    .line 419
    invoke-virtual {v8, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 420
    new-instance v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;

    invoke-direct {v9}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 422
    :cond_b8
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 424
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :try_start_c8
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    invoke-virtual {v3, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 431
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 432
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 433
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 434
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 435
    if-nez v3, :cond_ec

    .line 436
    return v2

    .line 438
    :cond_ec
    const v8, 0x106000d

    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 439
    const v8, 0x800033

    invoke-virtual {v3, v8}, Landroid/view/Window;->setGravity(I)V

    .line 440
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 441
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 442
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 443
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 444
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveOverlayX(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 445
    const/16 v4, 0x12c

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 446
    const/4 v1, 0x0

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 447
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x20

    and-int/lit8 v1, v1, -0x3

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 451
    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 452
    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 453
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 454
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V
    :try_end_12a
    .catchall {:try_start_c8 .. :try_end_12a} :catchall_12b

    .line 455
    return v7

    .line 456
    :catchall_12b
    move-exception v1

    .line 457
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 458
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 459
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 460
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 461
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 462
    return v2

    .line 393
    :catchall_137
    move-exception v0

    .line 394
    return v2

    .line 387
    :cond_139
    :goto_139
    return v2
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 844
    if-nez p0, :cond_3

    .line 845
    return-void

    .line 848
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 850
    goto :goto_d

    .line 849
    :catchall_c
    move-exception p0

    .line 851
    :goto_d
    return-void
.end method

.method public static toastBleError(Ljava/lang/String;)V
    .registers 4

    .line 256
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1b

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_1b

    .line 260
    :cond_10
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$4;

    invoke-direct {v2, v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$4;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void

    .line 258
    :cond_1b
    :goto_1b
    return-void
.end method

.method private static toastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 854
    if-eqz p0, :cond_16

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_16

    .line 858
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    .line 860
    goto :goto_15

    .line 859
    :catchall_14
    move-exception p0

    .line 861
    :goto_15
    return-void

    .line 855
    :cond_16
    :goto_16
    return-void
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .line 286
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 287
    if-nez v0, :cond_8

    .line 288
    return-void

    .line 290
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_19

    .line 292
    :try_start_c
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 293
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_18

    .line 294
    return-void

    .line 297
    :cond_17
    goto :goto_19

    .line 296
    :catchall_18
    move-exception v1

    .line 299
    :cond_19
    :goto_19
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 300
    return-void
.end method

.method public static updateDiagnostics()V
    .registers 3

    .line 224
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public static updateHeartRate(IZ)V
    .registers 3

    .line 218
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    .line 219
    sput-boolean p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    .line 220
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .line 543
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 544
    return-void

    .line 547
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    if-eqz v1, :cond_15

    .line 548
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 549
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_20

    .line 551
    :cond_15
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 552
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    .line 555
    :cond_20
    :goto_20
    goto :goto_22

    .line 554
    :catchall_21
    move-exception v0

    .line 556
    :goto_22
    return-void
.end method

.method private static validateDirectBleConfig(Landroid/app/Activity;)Ljava/lang/String;
    .registers 6

    .line 559
    if-nez p0, :cond_5

    .line 560
    const-string p0, "\u041d\u044f\u043c\u0430 \u0430\u043a\u0442\u0438\u0432\u0435\u043d \u0435\u043a\u0440\u0430\u043d"

    return-object p0

    .line 562
    :cond_5
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 563
    const-string v1, "-"

    const-string v2, ":"

    const-string v3, ""

    if-eqz v0, :cond_20

    .line 564
    const-string v4, " "

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_20
    move-object v0, v3

    .line 565
    :goto_21
    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    const-string v4, "0X"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 566
    :cond_31
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    :cond_36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3f

    .line 569
    const-string p0, "Auth key \u0437\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u0435\u043d \u2014 32 hex \u043e\u0442 Mi Fitness"

    return-object p0

    .line 571
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_4a

    .line 572
    const-string p0, "Auth key: \u0442\u043e\u0447\u043d\u043e 32 hex \u0441\u0438\u043c\u0432\u043e\u043b\u0430 (0-9, A-F)"

    return-object p0

    .line 574
    :cond_4a
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 575
    if-eqz p0, :cond_67

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_65

    goto :goto_67

    .line 578
    :cond_65
    const/4 p0, 0x0

    return-object p0

    .line 576
    :cond_67
    :goto_67
    const-string p0, "MAC \u0433\u0440\u0438\u0432\u043d\u0430: \u0444\u043e\u0440\u043c\u0430\u0442 AA:BB:CC:DD:EE:FF"

    return-object p0
.end method
