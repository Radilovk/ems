.class public final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;
    }
.end annotation


# static fields
.field static final ALL_STOP_ID:I = 0x7f09003c

.field static final BUTTON_ID:I = 0x7f090230

.field static final DIALOG_LAYOUT_ID:I = 0x7f0b0079

.field private static final ID_ACTIVATE:I = 0x7f090236

.field private static final ID_COUNTDOWN:I = 0x7f090239

.field private static final ID_LOOPS:I = 0x7f090233

.field private static final ID_LOOPS_MINUS:I = 0x7f090234

.field private static final ID_LOOPS_PLUS:I = 0x7f090235

.field private static final ID_LOOP_LABEL:I = 0x7f09023a

.field private static final ID_MINUTES:I = 0x7f090231

.field private static final ID_SECONDS:I = 0x7f090232

.field private static final ID_STATUS:I = 0x7f090237

.field private static final OPACITY_DIALOG_BG:I = 0x7f080069

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007a

.field private static final STR_ERROR:I = 0x7f0d0128

.field private static final STR_INVALID_DURATION:I = 0x7f0d0127

.field private static final STR_STATUS_ARMED:I = 0x7f0d0121

.field private static final STR_STATUS_IDLE:I = 0x7f0d0120

.field private static final STR_STATUS_RUNNING:I = 0x7f0d0122

.field private static final TICK_MS:J = 0xfaL

.field private static allStopButton:Landroid/view/View;

.field private static armed:Z

.field private static configContent:Landroid/view/View;

.field private static configDialog:Landroid/support/v7/app/AlertDialog;

.field private static countdownRunning:Z

.field private static countdownView:Landroid/widget/TextView;

.field private static currentLoop:I

.field private static final handler:Landroid/os/Handler;

.field private static hostActivity:Landroid/app/Activity;

.field private static intervalMs:J

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastTickRealtime:J

.field private static loopLabelView:Landroid/widget/TextView;

.field private static loopsInput:Landroid/widget/EditText;

.field private static maxLoops:I

.field private static minutesView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static overlayRoot:Landroid/view/View;

.field private static overlayTouchDx:F

.field private static overlayTouchDy:F

.field private static overlayVisible:Z

.field private static panelRoot:Landroid/view/View;

.field private static remainingMs:J

.field private static secondsView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;

.field private static final tickRunnable:Ljava/lang/Runnable;

.field private static trainingRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    .line 77
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$000()Landroid/view/View;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    return-void
.end method

.method static synthetic access$1002(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/view/View;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$1202(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$1300()F
    .registers 1

    .line 28
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$1302(F)F
    .registers 1

    .line 28
    sput p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    return v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    return v0
.end method

.method static synthetic access$1700()J
    .registers 2

    .line 28
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide v0
.end method

.method static synthetic access$1702(J)J
    .registers 2

    .line 28
    sput-wide p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    return-wide p0
.end method

.method static synthetic access$1800()J
    .registers 2

    .line 28
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$1822(J)J
    .registers 4

    .line 28
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    sub-long/2addr v0, p0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    return-wide v0
.end method

.method static synthetic access$1900()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleMasterPanel()V

    return-void
.end method

.method static synthetic access$2000()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/Runnable;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/os/Handler;
    .registers 1

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armFromConfig()V

    return-void
.end method

.method static synthetic access$400(I)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->adjustLoops(I)V

    return-void
.end method

.method static synthetic access$502(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$602(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Lcom/isaigu/gymapp/widget/AmountView;)Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/isaigu/gymapp/widget/AmountView;)Lcom/isaigu/gymapp/widget/AmountView;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    return-object p0
.end method

.method static synthetic access$902(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 28
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    return-object p0
.end method

.method private static adjustLoops(I)V
    .registers 2

    .line 436
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result v0

    add-int/2addr v0, p0

    .line 437
    if-gez v0, :cond_8

    .line 438
    const/4 v0, 0x0

    .line 440
    :cond_8
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    if-eqz p0, :cond_13

    .line 441
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_13
    return-void
.end method

.method private static applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V
    .registers 2

    .line 264
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 268
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    .line 270
    goto :goto_15

    .line 269
    :catchall_14
    move-exception p0

    .line 271
    :goto_15
    return-void

    .line 265
    :cond_16
    :goto_16
    return-void
.end method

.method private static armFromConfig()V
    .registers 7

    .line 154
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I

    move-result v0

    .line 155
    sget-object v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {v3, v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I

    move-result v2

    .line 156
    if-nez v0, :cond_1a

    if-nez v2, :cond_1a

    .line 157
    const v0, 0x7f0d0127

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 158
    return-void

    .line 160
    :cond_1a
    int-to-long v3, v0

    const-wide/16 v5, 0x3c

    mul-long v3, v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    sput-wide v3, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->readLoopsInput()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    .line 162
    sput v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 163
    sget-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 164
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 165
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 166
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 168
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ensureOverlay()Z

    move-result v2

    if-nez v2, :cond_51

    .line 170
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 171
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 172
    const v0, 0x7f0d0128

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 173
    return-void

    .line 175
    :cond_51
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 177
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    if-eqz v1, :cond_5e

    .line 178
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onTrainingRunningChanged(Z)V

    .line 180
    :cond_5e
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 90
    if-eqz p0, :cond_35

    if-nez p1, :cond_5

    goto :goto_35

    .line 93
    :cond_5
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    .line 94
    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 95
    const p1, 0x7f09003c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;

    .line 96
    const p1, 0x7f090230

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 97
    if-nez p1, :cond_1c

    .line 98
    return-void

    .line 100
    :cond_1c
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 101
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    .line 102
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 104
    new-instance p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;

    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$MasterToggleListener;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void

    .line 91
    :cond_35
    :goto_35
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 479
    if-nez p0, :cond_3

    .line 480
    return-void

    .line 482
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 483
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 484
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    return-void
.end method

.method private static configureDurationPicker(Lcom/isaigu/gymapp/widget/AmountView;IIII)V
    .registers 5

    .line 465
    if-nez p0, :cond_3

    .line 466
    return-void

    .line 469
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 470
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 471
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 472
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0, p4}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_15

    .line 475
    goto :goto_16

    .line 474
    :catchall_15
    move-exception p0

    .line 476
    :goto_16
    return-void
.end method

.method private static detachOverlay()V
    .registers 2

    .line 314
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 316
    :try_start_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 317
    if-eqz v0, :cond_11

    .line 318
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_12

    .line 321
    :cond_11
    goto :goto_13

    .line 320
    :catchall_12
    move-exception v0

    .line 323
    :cond_13
    :goto_13
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    .line 324
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 325
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 326
    return-void
.end method

.method private static dismissConfigDialog(Z)V
    .registers 2

    .line 251
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 253
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 255
    goto :goto_9

    .line 254
    :catchall_8
    move-exception v0

    .line 256
    :goto_9
    if-nez p0, :cond_10

    .line 257
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 258
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 261
    :cond_10
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 488
    if-nez p0, :cond_3

    .line 489
    return p1

    .line 491
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 492
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static ensureOverlay()Z
    .registers 6

    .line 275
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity()Landroid/app/Activity;

    move-result-object v0

    .line 276
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 277
    return v1

    .line 279
    :cond_8
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 280
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 281
    return v3

    .line 283
    :cond_16
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->detachOverlay()V

    .line 284
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 285
    instance-of v4, v2, Landroid/widget/FrameLayout;

    if-nez v4, :cond_26

    .line 286
    return v1

    .line 288
    :cond_26
    check-cast v2, Landroid/widget/FrameLayout;

    .line 290
    :try_start_28
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b007a

    invoke-virtual {v4, v5, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_86

    .line 294
    nop

    .line 295
    if-nez v4, :cond_39

    .line 296
    return v1

    .line 298
    :cond_39
    const v5, 0x7f090239

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    .line 299
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    const v5, 0x7f09023a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    .line 300
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    .line 301
    sget-object v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 302
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 306
    const v4, 0x800033

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 307
    const/16 v4, 0x18

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 308
    const/16 v4, 0x60

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 309
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return v3

    .line 291
    :catchall_86
    move-exception v0

    .line 292
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    .line 293
    return v1
.end method

.method private static formatRemaining(J)Ljava/lang/String;
    .registers 6

    .line 411
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 412
    move-wide p0, v0

    .line 414
    :cond_7
    const-wide/16 v0, 0x3e7

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    .line 415
    const-wide/16 v0, 0x3c

    div-long v2, p0, v0

    .line 416
    rem-long/2addr p0, v0

    .line 417
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

.method private static onIntervalFinished()V
    .registers 2

    .line 367
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    if-lez v0, :cond_c

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lt v1, v0, :cond_c

    .line 368
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 369
    return-void

    .line 371
    :cond_c
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 372
    sget-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 373
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBeep()V

    .line 374
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 375
    return-void
.end method

.method public static onTrainingRunningChanged(Z)V
    .registers 4

    .line 109
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 110
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v0, :cond_a

    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 112
    return-void

    .line 114
    :cond_a
    if-eqz p0, :cond_35

    .line 115
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-nez p0, :cond_43

    .line 116
    sget p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    const/4 v0, 0x1

    if-gtz p0, :cond_1e

    .line 117
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 118
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 119
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBeep()V

    .line 121
    :cond_1e
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J

    .line 123
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43

    .line 126
    :cond_35
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz p0, :cond_43

    .line 127
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 128
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    :cond_43
    :goto_43
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 131
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 133
    return-void
.end method

.method public static onTrainingStop()V
    .registers 0

    .line 137
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V

    .line 138
    return-void
.end method

.method private static playBeep()V
    .registers 5

    .line 395
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 396
    const/16 v1, 0x18

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 397
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$2;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 407
    goto :goto_1d

    .line 406
    :catchall_1c
    move-exception v0

    .line 408
    :goto_1d
    return-void
.end method

.method private static readAmount(Lcom/isaigu/gymapp/widget/AmountView;II)I
    .registers 3

    .line 446
    if-nez p0, :cond_3

    .line 447
    return p1

    .line 450
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 451
    if-ge p0, p1, :cond_a

    .line 452
    return p1

    .line 454
    :cond_a
    if-le p0, p2, :cond_d

    .line 455
    return p2

    .line 457
    :cond_d
    return p0

    .line 458
    :catchall_e
    move-exception p0

    .line 459
    return p1
.end method

.method private static readLoopsInput()I
    .registers 3

    .line 421
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    if-nez v0, :cond_7

    .line 422
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    return v0

    .line 425
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1b

    .line 427
    return v1

    .line 429
    :cond_1b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_24

    return v0

    .line 430
    :catchall_24
    move-exception v0

    .line 431
    return v1
.end method

.method private static refreshOverlayText()V
    .registers 6

    .line 336
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 337
    return-void

    .line 339
    :cond_5
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_e

    goto :goto_10

    :cond_e
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    :goto_10
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->formatRemaining(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_6b

    .line 341
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_25

    .line 342
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6b

    .line 343
    :cond_25
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    const/4 v1, 0x1

    if-gtz v0, :cond_46

    .line 344
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_2f

    move v1, v0

    .line 345
    :cond_2f
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u221e  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    goto :goto_6b

    .line 347
    :cond_46
    sget v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    if-lez v0, :cond_4b

    move v1, v0

    .line 348
    :cond_4b
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopLabelView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :cond_6b
    :goto_6b
    return-void
.end method

.method private static refreshStatusText()V
    .registers 2

    .line 354
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 355
    return-void

    .line 357
    :cond_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_10

    .line 358
    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 359
    :cond_10
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    if-eqz v1, :cond_1b

    .line 360
    const v1, 0x7f0d0122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_21

    .line 362
    :cond_1b
    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 364
    :goto_21
    return-void
.end method

.method private static resetAll()V
    .registers 3

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    .line 142
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z

    .line 143
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z

    .line 144
    sput v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->currentLoop:I

    .line 145
    sget-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->intervalMs:J

    sput-wide v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J

    .line 146
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 147
    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->detachOverlay()V

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 151
    return-void
.end method

.method private static resolveActivity()Landroid/app/Activity;
    .registers 2

    .line 204
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 205
    if-nez v0, :cond_c

    sget-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->panelRoot:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 206
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 208
    :cond_c
    if-nez v0, :cond_12

    .line 209
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    .line 211
    :cond_12
    return-object v0
.end method

.method private static showConfigDialog(Landroid/app/Activity;)V
    .registers 7

    .line 215
    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->dismissConfigDialog(Z)V

    .line 219
    :try_start_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_bc

    .line 223
    nop

    .line 224
    sput-object v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configContent:Landroid/view/View;

    .line 225
    const v2, 0x7f090231

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 226
    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 227
    const v2, 0x7f090233

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    .line 228
    const v2, 0x7f090237

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->statusView:Landroid/widget/TextView;

    .line 229
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->minutesView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configureDurationPicker(Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 230
    sget-object v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->secondsView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v5, 0x5

    invoke-static {v2, v0, v3, v5, v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configureDurationPicker(Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 231
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    if-eqz v0, :cond_62

    .line 232
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 233
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->loopsInput:Landroid/widget/EditText;

    sget v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->maxLoops:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_62
    const v0, 0x7f090234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;-><init>(I)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 236
    const v0, 0x7f090235

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$LoopsAdjustListener;-><init>(I)V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 237
    const v0, 0x7f090236

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ActivateListener;-><init>()V

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshStatusText()V

    .line 239
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 242
    new-instance p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;

    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$ConfigDismissListener;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    .line 244
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 245
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 246
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyOpaqueWindow(Landroid/support/v7/app/AlertDialog;)V

    .line 247
    sget-object p0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 248
    return-void

    .line 220
    :catchall_bc
    move-exception p0

    .line 221
    const p0, 0x7f0d0128

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V

    .line 222
    return-void
.end method

.method private static toast(I)V
    .registers 3

    .line 496
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity()Landroid/app/Activity;

    move-result-object v0

    .line 497
    if-nez v0, :cond_7

    .line 498
    return-void

    .line 501
    :cond_7
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    .line 503
    goto :goto_11

    .line 502
    :catchall_10
    move-exception p0

    .line 504
    :goto_11
    return-void
.end method

.method private static toggleMasterPanel()V
    .registers 2

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resolveActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    if-nez v0, :cond_7

    .line 185
    return-void

    .line 187
    :cond_7
    sput-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;

    .line 188
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-nez v1, :cond_11

    .line 189
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->showConfigDialog(Landroid/app/Activity;)V

    .line 190
    return-void

    .line 192
    :cond_11
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    .line 193
    if-eqz v0, :cond_26

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->ensureOverlay()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 195
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    goto :goto_29

    .line 199
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->updateOverlayVisibility()V

    .line 201
    :cond_29
    :goto_29
    return-void
.end method

.method private static triggerAllStop()V
    .registers 2

    .line 378
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$1;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method private static updateOverlayVisibility()V
    .registers 2

    .line 329
    sget-object v0, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayRoot:Landroid/view/View;

    if-nez v0, :cond_5

    .line 330
    return-void

    .line 332
    :cond_5
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->overlayVisible:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_11

    :cond_f
    const/16 v1, 0x8

    :goto_11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    return-void
.end method
