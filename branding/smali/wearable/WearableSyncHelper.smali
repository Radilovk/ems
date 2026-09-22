.class public final Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OpenNotifyListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;,
        Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;,
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

.field private static final ID_AUTO_REDUCE:I = 0x7f0902a1

.field private static final ID_CLOSE:I = 0x7f09029d

.field private static final ID_CONNECT:I = 0x7f0902a5

.field private static final ID_DIAL_HOST:I = 0x7f090299

.field private static final ID_ENABLED:I = 0x7f0902a0

.field private static final ID_HR_VALUE:I = 0x7f09029b

.field private static final ID_INFO:I = 0x7f0902a6

.field private static final ID_OPEN_NOTIFY:I = 0x7f0902a7

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

.field private static final STR_AUTO_REDUCE:I = 0x7f0d017f

.field private static final STR_BPM:I = 0x7f0d017d

.field private static final STR_CONNECT:I = 0x7f0d0182

.field private static final STR_DIAG_HA:I = 0x7f0d018d

.field private static final STR_DIAG_HINT:I = 0x7f0d018c

.field private static final STR_DIAG_WAITING:I = 0x7f0d018b

.field private static final STR_ENABLED:I = 0x7f0d017e

.field private static final STR_INFO_BODY:I = 0x7f0d0185

.field private static final STR_INFO_TITLE:I = 0x7f0d0184

.field private static final STR_NOTIFY_MISSING:I = 0x7f0d0187

.field private static final STR_OPEN_NOTIFY:I = 0x7f0d018a

.field private static final STR_STATUS_ACTIVE:I = 0x7f0d017a

.field private static final STR_STATUS_ARMED:I = 0x7f0d0179

.field private static final STR_STATUS_CONNECTED:I = 0x7f0d0189

.field private static final STR_STATUS_DISCONNECTED:I = 0x7f0d017c

.field private static final STR_STATUS_HA_LISTENING:I = 0x7f0d018e

.field private static final STR_STATUS_IDLE:I = 0x7f0d0178

.field private static final STR_STATUS_LISTENING:I = 0x7f0d0188

.field private static final STR_STATUS_WAITING:I = 0x7f0d017b

.field private static final STR_STEP:I = 0x7f0d0181

.field private static final STR_THRESHOLD:I = 0x7f0d0180

.field private static final STR_TITLE:I = 0x7f0d0177

.field private static final STR_TOAST_ARMED:I = 0x7f0d0186

.field private static autoReduceSwitch:Landroid/widget/Switch;

.field private static bandConnected:Z

.field private static configContent:Landroid/view/View;

.field private static configDialog:Landroid/support/v7/app/AlertDialog;

.field private static displayedBattery:I

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

    .line 109
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    .line 110
    sput v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedBattery:I

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;I)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/app/Activity;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1102(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1202(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1302(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1402(Landroid/widget/Switch;)Landroid/widget/Switch;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1502(Landroid/widget/Switch;)Landroid/widget/Switch;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1602(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1702(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1800()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1900()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$1902(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    return-void
.end method

.method static synthetic access$2000()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$2002(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$2100()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$2102(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$2200()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$2202(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$2300()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$2400(Landroid/app/Activity;I)I
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(II)V
    .registers 2

    .line 28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$2600()V
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
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showInfo(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$800(Z)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    return-void
.end method

.method static synthetic access$900()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    return-void
.end method

.method private static applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V
    .registers 2

    .line 573
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 577
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 579
    goto :goto_15

    .line 578
    :catchall_14
    move-exception p0

    .line 580
    :goto_15
    return-void

    .line 574
    :cond_16
    :goto_16
    return-void
.end method

.method private static armFromConfig()V
    .registers 2

    .line 244
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 245
    if-nez v0, :cond_8

    .line 246
    return-void

    .line 248
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->saveConfigFromUi(Landroid/app/Activity;)V

    .line 249
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setArmed(Landroid/content/Context;Z)V

    .line 250
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 251
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 252
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z

    move-result v1

    if-nez v1, :cond_21

    .line 253
    const v1, 0x7f0d0178

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 254
    return-void

    .line 256
    :cond_21
    const v1, 0x7f0d0186

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 257
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect()V

    .line 258
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 260
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 124
    if-eqz p0, :cond_26

    if-nez p1, :cond_5

    goto :goto_26

    .line 127
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    .line 128
    sput-object p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 129
    const p1, 0x7f090297

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 130
    if-nez p0, :cond_13

    .line 131
    return-void

    .line 133
    :cond_13
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 136
    new-instance p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;

    invoke-direct {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void

    .line 125
    :cond_26
    :goto_26
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 677
    if-nez p0, :cond_3

    .line 678
    return-void

    .line 680
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 681
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    return-void
.end method

.method private static buildSubLabel(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    .line 405
    const v0, 0x7f0d017d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 406
    sget v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedBattery:I

    if-ltz v0, :cond_2b

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2b

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u00b7 "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedBattery:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 409
    :cond_2b
    return-object p0
.end method

.method private static buildWaitingLabel(Landroid/app/Activity;)Ljava/lang/String;
    .registers 9

    .line 389
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    if-nez v0, :cond_c

    .line 390
    const v0, 0x7f0d017c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 392
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getHrEventCount()I

    move-result v0

    .line 393
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->getHaHrCount()I

    move-result v1

    .line 394
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->getPostCount()I

    move-result v2

    .line 395
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastBattery()I

    move-result v3

    .line 396
    if-ltz v3, :cond_30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :cond_30
    const-string v3, "--"

    .line 397
    :goto_32
    const v4, 0x7f0d018d

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object v3, v5, v2

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 398
    if-nez v0, :cond_7a

    if-nez v1, :cond_7a

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBatteryEventCount()I

    move-result v0

    if-nez v0, :cond_7a

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0d018c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 401
    :cond_7a
    return-object v2
.end method

.method private static colorForHeartRate(F)I
    .registers 2

    .line 413
    const v0, 0x3f266666    # 0.65f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_b

    .line 414
    const p0, -0xbc5fb9

    return p0

    .line 416
    :cond_b
    const v0, 0x3f59999a    # 0.85f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_15

    .line 417
    const/16 p0, -0x4d00

    return p0

    .line 419
    :cond_15
    const p0, -0x1ac6cb

    return p0
.end method

.method private static dismissConfigDialog(Z)V
    .registers 2

    .line 539
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1a

    .line 541
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 543
    goto :goto_9

    .line 542
    :catchall_8
    move-exception v0

    .line 544
    :goto_9
    if-nez p0, :cond_1a

    .line 545
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 546
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 547
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 548
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 549
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 550
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 551
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 554
    :cond_1a
    return-void
.end method

.method private static dismissOverlayDialog(Z)V
    .registers 2

    .line 557
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 559
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 561
    goto :goto_9

    .line 560
    :catchall_8
    move-exception v0

    .line 562
    :goto_9
    if-nez p0, :cond_16

    .line 563
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 564
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 565
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 566
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 567
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 570
    :cond_16
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 669
    if-nez p0, :cond_3

    .line 670
    return p1

    .line 672
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 673
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static getContext()Landroid/content/Context;
    .registers 1

    .line 175
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

    .line 179
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    return-object v0
.end method

.method private static layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V
    .registers 12

    .line 610
    if-eqz p0, :cond_59

    if-nez p1, :cond_5

    goto :goto_59

    .line 613
    :cond_5
    const v0, 0x7f09029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 614
    const v0, 0x7f0902a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 615
    const v2, 0x7f09029e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 616
    const/16 v2, 0x124

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 617
    const/16 v3, 0xc0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    .line 618
    const/16 v4, 0x2d

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    .line 619
    const/4 v4, 0x5

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    int-to-float p0, p0

    .line 620
    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, p0

    int-to-float p0, v8

    div-float/2addr p0, v4

    add-float/2addr p0, v3

    .line 621
    int-to-float v2, v2

    div-float v9, v2, v4

    .line 622
    nop

    .line 623
    const/high16 v2, 0x42340000    # 45.0f

    move v3, v9

    move v4, v9

    move v5, p0

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 624
    const/high16 v3, 0x42b40000    # 90.0f

    move-object v2, v0

    move v5, v9

    move v6, p0

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 625
    const/high16 v4, 0x43070000    # 135.0f

    move-object v3, p1

    move v6, v9

    move v7, p0

    invoke-static/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->placeDialButton(Landroid/view/View;FFFFI)V

    .line 626
    return-void

    .line 611
    :cond_59
    :goto_59
    return-void
.end method

.method private static loadConfigIntoUi(Landroid/app/Activity;)V
    .registers 3

    .line 473
    if-nez p0, :cond_3

    .line 474
    return-void

    .line 476
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_e

    .line 477
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 479
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_19

    .line 480
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 482
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_28

    .line 483
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 485
    :cond_28
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_37

    .line 486
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getStrengthStep(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 488
    :cond_37
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    .line 489
    if-eqz v0, :cond_42

    .line 490
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->beginListening(Landroid/content/Context;)V

    .line 492
    :cond_42
    return-void
.end method

.method private static moveOverlayWindow(II)V
    .registers 3

    .line 583
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 587
    :cond_b
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 588
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 589
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 590
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    .line 592
    goto :goto_24

    .line 591
    :catchall_23
    move-exception p0

    .line 593
    :goto_24
    return-void

    .line 584
    :cond_25
    :goto_25
    return-void
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 1

    .line 140
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->trainingRunning:Z

    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V

    .line 142
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 144
    return-void
.end method

.method private static openOverlaySettings()V
    .registers 1

    .line 531
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 532
    if-nez v0, :cond_8

    .line 533
    return-void

    .line 535
    :cond_8
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 536
    return-void
.end method

.method private static placeDialButton(Landroid/view/View;FFFFI)V
    .registers 12

    .line 630
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 631
    return-void

    .line 633
    :cond_5
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 634
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

    .line 635
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    double-to-float p4, v2

    sub-float/2addr p3, p4

    sub-float/2addr p3, p1

    .line 636
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 637
    float-to-int p2, p2

    const/4 p4, 0x0

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 638
    float-to-int p2, p3

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 639
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    return-void
.end method

.method private static readIntField(Landroid/widget/EditText;III)I
    .registers 4

    .line 513
    if-nez p0, :cond_3

    .line 514
    return p1

    .line 517
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

    .line 518
    if-ge p0, p2, :cond_16

    .line 519
    return p2

    .line 521
    :cond_16
    if-le p0, p3, :cond_19

    .line 522
    return p3

    .line 524
    :cond_19
    return p0

    .line 525
    :catchall_1a
    move-exception p0

    .line 526
    return p1
.end method

.method private static refreshOverlayDisplay()V
    .registers 5

    .line 345
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 346
    return-void

    .line 348
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_e

    move-object v1, v0

    goto :goto_12

    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 350
    :goto_12
    if-eqz v1, :cond_19

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v1

    goto :goto_1b

    :cond_19
    const/16 v1, 0xaa

    .line 351
    :goto_1b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v2

    const v3, -0x555556

    const/4 v4, 0x0

    if-nez v2, :cond_49

    .line 352
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_41

    if-eqz v0, :cond_41

    .line 355
    const v2, 0x7f0d017d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_41
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v0, :cond_48

    .line 358
    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 360
    :cond_48
    return-void

    .line 362
    :cond_49
    sget v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    if-lez v2, :cond_89

    .line 363
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    if-lez v1, :cond_5e

    sget v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v4, v2, v1

    .line 365
    :cond_5e
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v1

    if-lez v2, :cond_66

    .line 366
    const/high16 v4, 0x3f800000    # 1.0f

    .line 368
    :cond_66
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->colorForHeartRate(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v1, :cond_7b

    .line 370
    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 371
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 373
    :cond_7b
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_88

    if-eqz v0, :cond_88

    .line 374
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->buildSubLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_88
    goto :goto_af

    .line 377
    :cond_89
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    if-eqz v2, :cond_98

    const/16 v3, -0x339a

    :cond_98
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v1, :cond_a2

    .line 380
    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/widget/TimerRingView;->setElapsedFraction(F)V

    .line 382
    :cond_a2
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    if-eqz v1, :cond_af

    if-eqz v0, :cond_af

    .line 383
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->buildWaitingLabel(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :cond_af
    :goto_af
    return-void
.end method

.method private static refreshStatusText()V
    .registers 6

    .line 439
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 440
    return-void

    .line 442
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 443
    if-nez v0, :cond_d

    .line 444
    return-void

    .line 446
    :cond_d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f0d0178

    if-nez v1, :cond_20

    .line 447
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    return-void

    .line 450
    :cond_20
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 451
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 452
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d018e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 453
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->getLocalUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 452
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 454
    :cond_43
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    if-eqz v1, :cond_54

    .line 455
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d0189

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 457
    :cond_54
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d0188

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    :goto_60
    return-void

    .line 461
    :cond_61
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->trainingRunning:Z

    if-eqz v1, :cond_78

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 462
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d017a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    return-void

    .line 465
    :cond_78
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isArmed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 466
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0d0179

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    return-void

    .line 469
    :cond_8b
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    return-void
.end method

.method private static resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 643
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    .line 644
    :goto_9
    if-nez p0, :cond_15

    .line 645
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_15

    :cond_14
    move-object p0, v0

    .line 647
    :cond_15
    :goto_15
    if-nez p0, :cond_21

    .line 648
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_21

    :cond_20
    move-object p0, v0

    .line 650
    :cond_21
    :goto_21
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_33

    .line 651
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2c

    .line 652
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 654
    :cond_2c
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_21

    .line 656
    :cond_33
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3a

    .line 657
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 660
    :cond_3a
    :try_start_3a
    instance-of v1, p0, Lcom/isaigu/gymapp/MainActivity;

    if-eqz v1, :cond_41

    .line 661
    check-cast p0, Lcom/isaigu/gymapp/MainActivity;
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_42

    return-object p0

    .line 664
    :cond_41
    goto :goto_43

    .line 663
    :catchall_42
    move-exception p0

    .line 665
    :goto_43
    return-object v0
.end method

.method private static resolveOverlayX(Landroid/app/Activity;I)I
    .registers 7

    .line 596
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 597
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->panelRoot:Landroid/view/View;

    if-eqz v1, :cond_12

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 598
    :goto_13
    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_2b

    .line 599
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 600
    invoke-virtual {v1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 601
    aget p0, p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 603
    :cond_2b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 604
    const v1, 0x412b3333    # 10.7f

    .line 605
    int-to-float v3, p0

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 606
    sub-int/2addr p0, v1

    sub-int/2addr p0, p1

    sub-int/2addr p0, v0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static saveConfigFromUi(Landroid/app/Activity;)V
    .registers 5

    .line 495
    if-nez p0, :cond_3

    .line 496
    return-void

    .line 498
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_e

    .line 499
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setEnabled(Landroid/content/Context;Z)V

    .line 501
    :cond_e
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_19

    .line 502
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAutoReduceEnabled(Landroid/content/Context;Z)V

    .line 504
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    if-eqz v0, :cond_2a

    .line 505
    const/16 v1, 0xaa

    const/16 v2, 0x50

    const/16 v3, 0xdc

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setHrThreshold(Landroid/content/Context;I)V

    .line 507
    :cond_2a
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    if-eqz v0, :cond_39

    .line 508
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->readIntField(Landroid/widget/EditText;III)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setStrengthStep(Landroid/content/Context;I)V

    .line 510
    :cond_39
    return-void
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 4

    .line 200
    if-eqz p0, :cond_e1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_e1

    .line 203
    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V

    .line 206
    :try_start_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_d9

    .line 210
    nop

    .line 211
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configContent:Landroid/view/View;

    .line 212
    const v1, 0x7f09029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->statusView:Landroid/widget/TextView;

    .line 213
    const v1, 0x7f0902a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->enabledSwitch:Landroid/widget/Switch;

    .line 214
    const v1, 0x7f0902a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->autoReduceSwitch:Landroid/widget/Switch;

    .line 215
    const v1, 0x7f0902a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->thresholdView:Landroid/widget/EditText;

    .line 216
    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->stepView:Landroid/widget/EditText;

    .line 217
    const v1, 0x7f0902a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConnectListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 218
    const v1, 0x7f0902a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OpenNotifyListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OpenNotifyListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 219
    const v1, 0x7f0902a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigInfoListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 220
    const v1, 0x7f0902a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;-><init>()V

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->loadConfigIntoUi(Landroid/app/Activity;)V

    .line 222
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshStatusText()V

    .line 223
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 226
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 229
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 232
    :try_start_ba
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_d1

    .line 234
    const/16 v1, 0x1e0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 236
    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/view/Window;->setGravity(I)V
    :try_end_d1
    .catchall {:try_start_ba .. :try_end_d1} :catchall_d2

    .line 239
    :cond_d1
    goto :goto_d3

    .line 238
    :catchall_d2
    move-exception p0

    .line 240
    :goto_d3
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 241
    return-void

    .line 207
    :catchall_d9
    move-exception v0

    .line 208
    const v0, 0x7f0d0178

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V

    .line 209
    return-void

    .line 201
    :cond_e1
    :goto_e1
    return-void
.end method

.method private static showInfo(Landroid/app/Activity;)V
    .registers 3

    .line 695
    if-nez p0, :cond_3

    .line 696
    return-void

    .line 698
    :cond_3
    const v0, 0x7f0d0184

    const v1, 0x7f0d0185

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;II)V

    .line 699
    return-void
.end method

.method public static showNotifyMissing()V
    .registers 3

    .line 162
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 163
    if-nez v0, :cond_8

    .line 164
    return-void

    .line 166
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method private static showOverlayDialog()Z
    .registers 10

    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 264
    const/4 v2, 0x0

    if-eqz v1, :cond_139

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_139

    .line 267
    :cond_10
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayDialog(Z)V

    .line 270
    :try_start_13
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007f

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_137

    .line 273
    nop

    .line 274
    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 275
    const v4, 0x7f09029a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/widget/TimerRingView;

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 276
    const v4, 0x7f09029b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 277
    const v4, 0x7f09029c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 278
    const v4, 0x7f09029d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$CloseOverlayListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 279
    const v4, 0x7f0902a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayConnectListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 280
    const v4, 0x7f09029e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayInfoListener;-><init>()V

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 281
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->layoutDialControlButtons(Landroid/app/Activity;Landroid/view/View;)V

    .line 282
    const/16 v4, 0x124

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 283
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 285
    const/4 v6, 0x2

    const/4 v7, 0x1

    :try_start_7e
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    if-eqz v8, :cond_89

    .line 286
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    const/high16 v9, 0x43400000    # 192.0f

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMaxDiameterDp(F)V

    .line 288
    :cond_89
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    if-eqz v8, :cond_9f

    .line 289
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    const/high16 v9, 0x42580000    # 54.0f

    invoke-virtual {v8, v6, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    sget-object v8, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    sget-object v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_9f
    .catchall {:try_start_7e .. :try_end_9f} :catchall_a0

    .line 293
    :cond_9f
    goto :goto_a1

    .line 292
    :catchall_a0
    move-exception v8

    .line 294
    :goto_a1
    const v8, 0x7f090299

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 295
    if-eqz v8, :cond_b8

    .line 296
    invoke-virtual {v8, v7}, Landroid/view/View;->setClickable(Z)V

    .line 297
    invoke-virtual {v8, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 298
    new-instance v9, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;

    invoke-direct {v9}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    :cond_b8
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 301
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 302
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    :try_start_c8
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v3, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 309
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 310
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 311
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 312
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 313
    if-nez v3, :cond_ec

    .line 314
    return v2

    .line 316
    :cond_ec
    const v8, 0x106000d

    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 317
    const v8, 0x800033

    invoke-virtual {v3, v8}, Landroid/view/Window;->setGravity(I)V

    .line 318
    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 319
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 320
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 321
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 322
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveOverlayX(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 323
    const/16 v4, 0x12c

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 324
    const/4 v1, 0x0

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 325
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v1, v1, 0x20

    and-int/lit8 v1, v1, -0x3

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 329
    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 330
    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->refreshOverlayDisplay()V

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->updateOverlayVisibility()V
    :try_end_12a
    .catchall {:try_start_c8 .. :try_end_12a} :catchall_12b

    .line 333
    return v7

    .line 334
    :catchall_12b
    move-exception v1

    .line 335
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 336
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayContent:Landroid/view/View;

    .line 337
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->ringView:Lcom/isaigu/gymapp/widget/TimerRingView;

    .line 338
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->hrValueView:Landroid/widget/TextView;

    .line 339
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->subLabelView:Landroid/widget/TextView;

    .line 340
    return v2

    .line 271
    :catchall_137
    move-exception v0

    .line 272
    return v2

    .line 265
    :cond_139
    :goto_139
    return v2
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 685
    if-nez p0, :cond_3

    .line 686
    return-void

    .line 689
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 691
    goto :goto_d

    .line 690
    :catchall_c
    move-exception p0

    .line 692
    :goto_d
    return-void
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .line 183
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 184
    if-nez v0, :cond_8

    .line 185
    return-void

    .line 187
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_19

    .line 189
    :try_start_c
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 190
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissConfigDialog(Z)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_18

    .line 191
    return-void

    .line 194
    :cond_17
    goto :goto_19

    .line 193
    :catchall_18
    move-exception v1

    .line 196
    :cond_19
    :goto_19
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 197
    return-void
.end method

.method public static updateBattery(I)V
    .registers 3

    .line 153
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedBattery:I

    .line 154
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public static updateDiagnostics()V
    .registers 3

    .line 158
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public static updateHeartRate(IZ)V
    .registers 3

    .line 147
    sput p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->displayedHr:I

    .line 148
    sput-boolean p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->bandConnected:Z

    .line 149
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$RefreshOverlayRunnable;-><init>(Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .line 423
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_5

    .line 424
    return-void

    .line 427
    :cond_5
    :try_start_5
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayVisible:Z

    if-eqz v1, :cond_15

    .line 428
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 429
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_20

    .line 431
    :cond_15
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 432
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    .line 435
    :cond_20
    :goto_20
    goto :goto_22

    .line 434
    :catchall_21
    move-exception v0

    .line 436
    :goto_22
    return-void
.end method
