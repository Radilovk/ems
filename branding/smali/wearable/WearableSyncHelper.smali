.class public final Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OpenGadgetbridgeListener;,
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

.method static synthetic access$100(Landroid/app/Activity;I)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$1000(Z)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    return-void
.end method

.method static synthetic access$1100()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    return-void
.end method

.method static synthetic access$1202(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1302(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1402(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1502(Landroid/widget/Switch;)Landroid/widget/Switch;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1602(Landroid/widget/Switch;)Landroid/widget/Switch;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1702(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1802(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1902(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    return-void
.end method

.method static synthetic access$2002(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2100()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2200()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$2202(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$2300()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$2302(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$2400()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$2402(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$2500()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$2502(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$2600()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$2700(Landroid/app/Activity;I)I
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(II)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$2900()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->openOverlaySettings()V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$400()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$500(Landroid/view/View;)Landroid/app/Activity;
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Landroid/app/Activity;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->finishArm(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/Activity;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/Activity;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showInfo(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    return p0
.end method

.method private static applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V
    .registers 2

    .line 651
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 655
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 657
    goto :goto_15

    .line 656
    :catchall_14
    move-exception p0

    .line 658
    :goto_15
    return-void

    .line 652
    :cond_16
    :goto_16
    return-void
.end method

.method private static armFromConfig()V
    .registers 2

    .line 271
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 272
    if-nez v0, :cond_8

    .line 273
    return-void

    .line 275
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    .line 276
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 277
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 279
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 280
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 281
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 282
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 283
    return-void

    .line 285
    :cond_2d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->finishArm(Landroid/app/Activity;)V

    .line 286
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 131
    if-eqz p0, :cond_26

    if-nez p1, :cond_5

    goto :goto_26

    .line 134
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    .line 135
    sput-object p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 136
    const p1, 0x7f090297

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 137
    if-nez p0, :cond_13

    .line 138
    return-void

    .line 140
    :cond_13
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 141
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 143
    new-instance p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;

    invoke-direct {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void

    .line 132
    :cond_26
    :goto_26
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 755
    if-nez p0, :cond_3

    .line 756
    return-void

    .line 758
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 759
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    return-void
.end method

.method private static buildSubLabel(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .line 465
    const v0, 0x7f0d017d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildWaitingLabel(Landroid/app/Activity;)Ljava/lang/String;
    .registers 10

    .line 429
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3d

    .line 430
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getGbHrEventCount()I

    move-result v0

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f0d019c

    new-array v1, v1, [Ljava/lang/Object;

    .line 432
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v6, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    const-string p0, "notify="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleNotifyCount()I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 438
    :cond_3d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getGbHrEventCount()I

    move-result v0

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f0d0196

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    const v6, 0x7f0d0198

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 443
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getGbCommandCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 444
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastEventAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->shortAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    .line 445
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getGbPackageLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 441
    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    if-nez v0, :cond_8e

    .line 447
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_8e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static colorForHeartRate(F)I
    .registers 2

    .line 469
    const v0, 0x3f266666    # 0.65f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_b

    .line 470
    const p0, -0xbc5fb9

    return p0

    .line 472
    :cond_b
    const v0, 0x3f59999a    # 0.85f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_15

    .line 473
    const/16 p0, -0x4d00

    return p0

    .line 475
    :cond_15
    const p0, -0x1ac6cb

    return p0
.end method

.method private static dismissConfigDialog(Z)V
    .registers 2

    .line 615
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 617
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 619
    goto :goto_9

    .line 618
    :catchall_8
    move-exception v0

    .line 620
    :goto_9
    if-nez p0, :cond_1e

    .line 621
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 622
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 623
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 624
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 625
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 626
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 627
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 628
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 629
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 632
    :cond_1e
    return-void
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 2

    .line 635
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 637
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 639
    goto :goto_9

    .line 638
    :catchall_8
    move-exception v0

    .line 640
    :goto_9
    if-nez p0, :cond_16

    .line 641
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 642
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 643
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 644
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 645
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 648
    :cond_16
    return-void
.end method

.method static dismissOverlayForPermissions()V
    .registers 1

    .line 191
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 192
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 193
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 747
    if-nez p0, :cond_3

    .line 748
    return p1

    .line 750
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 751
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static finishArm(Landroid/app/Activity;)V
    .registers 2

    .line 289
    if-nez p0, :cond_3

    .line 290
    return-void

    .line 292
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 293
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z

    move-result v0

    if-nez v0, :cond_13

    .line 294
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 295
    return-void

    .line 297
    :cond_13
    const v0, 0x7f0d0186

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 298
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 300
    return-void
.end method

.method static getContext()Landroid/content/Context;
    .registers 1

    .line 196
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

    .line 204
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method private static layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V
    .registers 12

    .line 688
    if-eqz p0, :cond_59

    if-nez p1, :cond_5

    goto :goto_59

    .line 691
    :cond_5
    const v0, 0x7f09029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 692
    const v0, 0x7f0902a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 693
    const v2, 0x7f09029e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 694
    const/16 v2, 0x124

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 695
    const/16 v3, 0xc0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    .line 696
    const/16 v4, 0x2d

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    .line 697
    const/4 v4, 0x5

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    int-to-float p0, p0

    .line 698
    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, p0

    int-to-float p0, v8

    div-float/2addr p0, v4

    add-float/2addr p0, v3

    .line 699
    int-to-float v2, v2

    div-float v9, v2, v4

    .line 700
    nop

    .line 701
    const/high16 v2, 0x42340000    # 45.0f

    move v3, v9

    move v4, v9

    move v5, p0

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 702
    const/high16 v3, 0x42b40000    # 90.0f

    move-object v2, v0

    move v5, v9

    move v6, p0

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 703
    const/high16 v4, 0x43070000    # 135.0f

    move-object v3, p1

    move v6, v9

    move v7, p0

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 704
    return-void

    .line 689
    :cond_59
    :goto_59
    return-void
.end method

.method private static loadConfigIntoUi(Landroid/app/Activity;)V
    .registers 3

    .line 532
    if-nez p0, :cond_3

    .line 533
    return-void

    .line 535
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_e

    .line 536
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 538
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_19

    .line 539
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 541
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_28

    .line 542
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :cond_28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_37

    .line 545
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_42

    .line 548
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :cond_42
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_4d

    .line 551
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 553
    :cond_4d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    if-eqz v0, :cond_59

    const v1, 0x7f0902a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    .line 554
    :goto_5a
    if-eqz v0, :cond_69

    .line 555
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 556
    const/16 v1, 0x8

    goto :goto_66

    :cond_65
    const/4 v1, 0x0

    .line 555
    :goto_66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 558
    :cond_69
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 559
    if-eqz v0, :cond_74

    .line 560
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 562
    :cond_74
    return-void
.end method

.method private static moveOverlayWindow(II)V
    .registers 3

    .line 661
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 665
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 666
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 667
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 668
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    .line 670
    goto :goto_24

    .line 669
    :catchall_23
    move-exception p0

    .line 671
    :goto_24
    return-void

    .line 662
    :cond_25
    :goto_25
    return-void
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 1

    .line 147
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->trainingRunning:Z

    .line 148
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 151
    return-void
.end method

.method private static openOverlaySettings()V
    .registers 1

    .line 607
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 608
    if-nez v0, :cond_8

    .line 609
    return-void

    .line 611
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 612
    return-void
.end method

.method private static placeDialButton(Landroid/view/View;FFFFI)V
    .registers 12

    .line 708
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 709
    return-void

    .line 711
    :cond_5
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 712
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

    .line 713
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    double-to-float p4, v2

    sub-float/2addr p3, p4

    sub-float/2addr p3, p1

    .line 714
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 715
    float-to-int p2, p2

    const/4 p4, 0x0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 716
    float-to-int p2, p3

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 717
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    return-void
.end method

.method private static readIntField(Landroid/widget/EditText;III)I
    .registers 4

    .line 589
    if-nez p0, :cond_3

    .line 590
    return p1

    .line 593
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

    .line 594
    if-ge p0, p2, :cond_16

    .line 595
    return p2

    .line 597
    :cond_16
    if-le p0, p3, :cond_19

    .line 598
    return p3

    .line 600
    :cond_19
    return p0

    .line 601
    :catchall_1a
    move-exception p0

    .line 602
    return p1
.end method

.method private static refreshOverlayDisplay()V
    .registers 5

    .line 385
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 386
    return-void

    .line 388
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_e

    move-object v1, v0

    goto :goto_12

    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 390
    :goto_12
    if-eqz v1, :cond_19

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    goto :goto_1b

    :cond_19
    const/16 v1, 0xaa

    .line 391
    :goto_1b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v2

    const v3, -0x555556

    const/4 v4, 0x0

    if-nez v2, :cond_49

    .line 392
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_41

    if-eqz v0, :cond_41

    .line 395
    const v2, 0x7f0d017d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    :cond_41
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_48

    .line 398
    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 400
    :cond_48
    return-void

    .line 402
    :cond_49
    sget v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    if-lez v2, :cond_89

    .line 403
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    if-lez v1, :cond_5e

    sget v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v4, v2, v1

    .line 405
    :cond_5e
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v1

    if-lez v2, :cond_66

    .line 406
    const/high16 v4, 0x3f800000    # 1.0f

    .line 408
    :cond_66
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->colorForHeartRate(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v1, :cond_7b

    .line 410
    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 411
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 413
    :cond_7b
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_88

    if-eqz v0, :cond_88

    .line 414
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->buildSubLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :cond_88
    goto :goto_af

    .line 417
    :cond_89
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    if-eqz v2, :cond_98

    const/16 v3, -0x339a

    :cond_98
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v1, :cond_a2

    .line 420
    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 422
    :cond_a2
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_af

    if-eqz v0, :cond_af

    .line 423
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->buildWaitingLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :cond_af
    :goto_af
    return-void
.end method

.method private static refreshStatusText()V
    .registers 6

    .line 495
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 496
    return-void

    .line 498
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 499
    if-nez v0, :cond_d

    .line 500
    return-void

    .line 502
    :cond_d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f0d0178

    if-nez v1, :cond_20

    .line 503
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    return-void

    .line 506
    :cond_20
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 507
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 508
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d019e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    return-void

    .line 511
    :cond_39
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 512
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 513
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d019b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 514
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 513
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_68

    .line 516
    :cond_5c
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d0197

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :goto_68
    return-void

    .line 520
    :cond_69
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->trainingRunning:Z

    if-eqz v1, :cond_80

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 521
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d017a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    return-void

    .line 524
    :cond_80
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 525
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d0179

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    return-void

    .line 528
    :cond_93
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    return-void
.end method

.method private static resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 721
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    .line 722
    :goto_9
    if-nez p0, :cond_15

    .line 723
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_15

    :cond_14
    move-object p0, v0

    .line 725
    :cond_15
    :goto_15
    if-nez p0, :cond_21

    .line 726
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_21

    :cond_20
    move-object p0, v0

    .line 728
    :cond_21
    :goto_21
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_33

    .line 729
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2c

    .line 730
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 732
    :cond_2c
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_21

    .line 734
    :cond_33
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3a

    .line 735
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 738
    :cond_3a
    :try_start_3a
    instance-of v1, p0, Lcom/isaigu/gymapp/MainActivity;

    if-eqz v1, :cond_41

    .line 739
    check-cast p0, Lcom/isaigu/gymapp/MainActivity;
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_42

    return-object p0

    .line 742
    :cond_41
    goto :goto_43

    .line 741
    :catchall_42
    move-exception p0

    .line 743
    :goto_43
    return-object v0
.end method

.method public static resolveActivityForPermissions()Landroid/app/Activity;
    .registers 1

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static resolveOverlayX(Landroid/app/Activity;I)I
    .registers 7

    .line 674
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 675
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v1, :cond_12

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 676
    :goto_13
    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_2b

    .line 677
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 678
    invoke-virtual {v1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 679
    aget p0, p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 681
    :cond_2b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 682
    const v1, 0x412b3333    # 10.7f

    .line 683
    int-to-float v3, p0

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 684
    sub-int/2addr p0, v1

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static saveConfigFromUi(Landroid/app/Activity;)V
    .registers 5

    .line 565
    if-nez p0, :cond_3

    .line 566
    return-void

    .line 568
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_e

    .line 569
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setEnabled(Landroid/content/Context;Z)V

    .line 571
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_19

    .line 572
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 574
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_2a

    .line 575
    const/16 v1, 0xaa

    const/16 v2, 0x50

    const/16 v3, 0xdc

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setHrThreshold(Landroid/content/Context;I)V

    .line 577
    :cond_2a
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_39

    .line 578
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setStrengthStep(Landroid/content/Context;I)V

    .line 580
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    if-eqz v0, :cond_4c

    .line 581
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 583
    :cond_4c
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    if-eqz v0, :cond_5f

    .line 584
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 586
    :cond_5f
    return-void
.end method

.method private static shortAction(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 454
    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_21

    .line 457
    :cond_9
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 458
    if-ltz v0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_20

    .line 459
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 461
    :cond_20
    return-object p0

    .line 455
    :cond_21
    :goto_21
    const-string p0, "--"

    return-object p0
.end method

.method public static showBluetoothPermissionDenied()V
    .registers 3

    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 178
    if-nez v0, :cond_8

    .line 179
    return-void

    .line 181
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$2;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 4

    .line 225
    if-eqz p0, :cond_f7

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_f7

    .line 228
    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 231
    :try_start_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_ef

    .line 235
    nop

    .line 236
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 237
    const v1, 0x7f09029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 238
    const v1, 0x7f0902a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 239
    const v1, 0x7f0902a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 240
    const v1, 0x7f0902a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 241
    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 242
    const v1, 0x7f0902a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandMacView:Landroid/widget/EditText;

    .line 243
    const v1, 0x7f0902aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->authKeyView:Landroid/widget/EditText;

    .line 244
    const v1, 0x7f0902a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 245
    const v1, 0x7f0902a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OpenGadgetbridgeListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OpenGadgetbridgeListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 246
    const v1, 0x7f0902a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 247
    const v1, 0x7f0902a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->loadConfigIntoUi(Landroid/app/Activity;)V

    .line 249
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 250
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 253
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 256
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 257
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 259
    :try_start_d0
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_e7

    .line 261
    const/16 v1, 0x1e0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 263
    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/view/Window;->setGravity(I)V
    :try_end_e7
    .catchall {:try_start_d0 .. :try_end_e7} :catchall_e8

    .line 266
    :cond_e7
    goto :goto_e9

    .line 265
    :catchall_e8
    move-exception p0

    .line 267
    :goto_e9
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 268
    return-void

    .line 232
    :catchall_ef
    move-exception v0

    .line 233
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 234
    return-void

    .line 226
    :cond_f7
    :goto_f7
    return-void
.end method

.method public static showGadgetbridgeMissing()V
    .registers 3

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 165
    if-nez v0, :cond_8

    .line 166
    return-void

    .line 168
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method private static showInfo(Landroid/app/Activity;)V
    .registers 4

    .line 773
    if-nez p0, :cond_3

    .line 774
    return-void

    .line 776
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isDirectBleMode(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0d0185

    if-eqz v0, :cond_3a

    .line 777
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->getRecentText()Ljava/lang/String;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c

    .line 779
    :cond_18
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 781
    :cond_1c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->getLogFileHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 782
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

    .line 784
    return-void

    .line 786
    :cond_3a
    const v0, 0x7f0d0184

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 787
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 788
    return-void
.end method

.method private static showOverlayDialog()Z
    .registers 10

    .line 303
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 304
    const/4 v2, 0x0

    if-eqz v1, :cond_139

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_139

    .line 307
    :cond_10
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 310
    :try_start_13
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007f

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_137

    .line 313
    nop

    .line 314
    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 315
    const v4, 0x7f09029a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 316
    const v4, 0x7f09029b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 317
    const v4, 0x7f09029c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 318
    const v4, 0x7f09029d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 319
    const v4, 0x7f0902a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 320
    const v4, 0x7f09029e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V

    .line 322
    const/16 v4, 0x124

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 323
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 325
    const/4 v6, 0x2

    const/4 v7, 0x1

    :try_start_7e
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v8, :cond_89

    .line 326
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v9, 0x43400000    # 192.0f

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 328
    :cond_89
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-eqz v8, :cond_9f

    .line 329
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 330
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_9f
    .catchall {:try_start_7e .. :try_end_9f} :catchall_a0

    .line 333
    :cond_9f
    goto :goto_a1

    .line 332
    :catchall_a0
    move-exception v8

    .line 334
    :goto_a1
    const v8, 0x7f090299

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 335
    if-eqz v8, :cond_b8

    .line 336
    invoke-virtual {v8, v7}, Landroid/view/View;->setClickable(Z)V

    .line 337
    invoke-virtual {v8, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 338
    new-instance v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;

    invoke-direct {v9}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    :cond_b8
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 342
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :try_start_c8
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {v3, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 349
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 350
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 351
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 352
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 353
    if-nez v3, :cond_ec

    .line 354
    return v2

    .line 356
    :cond_ec
    const v8, 0x106000d

    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 357
    const v8, 0x800033

    invoke-virtual {v3, v8}, Landroid/view/Window;->setGravity(I)V

    .line 358
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 359
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 360
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 361
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 362
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveOverlayX(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 363
    const/16 v4, 0x12c

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 364
    const/4 v1, 0x0

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 365
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x20

    and-int/lit8 v1, v1, -0x3

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 369
    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 370
    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 371
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 372
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V
    :try_end_12a
    .catchall {:try_start_c8 .. :try_end_12a} :catchall_12b

    .line 373
    return v7

    .line 374
    :catchall_12b
    move-exception v1

    .line 375
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 376
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 377
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 378
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 379
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 380
    return v2

    .line 311
    :catchall_137
    move-exception v0

    .line 312
    return v2

    .line 305
    :cond_139
    :goto_139
    return v2
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 763
    if-nez p0, :cond_3

    .line 764
    return-void

    .line 767
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 769
    goto :goto_d

    .line 768
    :catchall_c
    move-exception p0

    .line 770
    :goto_d
    return-void
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .line 208
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 209
    if-nez v0, :cond_8

    .line 210
    return-void

    .line 212
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_19

    .line 214
    :try_start_c
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 215
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_18

    .line 216
    return-void

    .line 219
    :cond_17
    goto :goto_19

    .line 218
    :catchall_18
    move-exception v1

    .line 221
    :cond_19
    :goto_19
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 222
    return-void
.end method

.method public static updateDiagnostics()V
    .registers 3

    .line 160
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public static updateHeartRate(IZ)V
    .registers 3

    .line 154
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    .line 155
    sput-boolean p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    .line 156
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .line 479
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 480
    return-void

    .line 483
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    if-eqz v1, :cond_15

    .line 484
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 485
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_20

    .line 487
    :cond_15
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 488
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    .line 491
    :cond_20
    :goto_20
    goto :goto_22

    .line 490
    :catchall_21
    move-exception v0

    .line 492
    :goto_22
    return-void
.end method
