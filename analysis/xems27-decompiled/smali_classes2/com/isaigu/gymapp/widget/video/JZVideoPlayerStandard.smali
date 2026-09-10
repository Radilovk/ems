.class public Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;
.super Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
.source "JZVideoPlayerStandard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;
    }
.end annotation


# static fields
.field protected static DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

.field public static LAST_GET_BATTERYLEVEL_PERCENT:I

.field public static LAST_GET_BATTERYLEVEL_TIME:J


# instance fields
.field public backButton:Landroid/widget/ImageView;

.field private battertReceiver:Landroid/content/BroadcastReceiver;

.field public batteryLevel:Landroid/widget/ImageView;

.field public batteryTimeLayout:Landroid/widget/LinearLayout;

.field public bottomProgressBar:Landroid/widget/ProgressBar;

.field public clarity:Landroid/widget/TextView;

.field public clarityPopWindow:Landroid/widget/PopupWindow;

.field public close:Landroid/widget/ImageView;

.field downX:F

.field downY:F

.field public loadingProgressBar:Landroid/widget/ProgressBar;

.field protected mBrightnessDialog:Landroid/app/Dialog;

.field protected mDialogBrightnessProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogBrightnessTextView:Landroid/widget/TextView;

.field protected mDialogIcon:Landroid/widget/ImageView;

.field protected mDialogProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogSeekTime:Landroid/widget/TextView;

.field protected mDialogTotalTime:Landroid/widget/TextView;

.field protected mDialogVolumeImageView:Landroid/widget/ImageView;

.field protected mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogVolumeTextView:Landroid/widget/TextView;

.field protected mDismissControlViewTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;

.field protected mProgressDialog:Landroid/app/Dialog;

.field public mRetryBtn:Landroid/widget/TextView;

.field public mRetryLayout:Landroid/widget/LinearLayout;

.field protected mVolumeDialog:Landroid/app/Dialog;

.field public replayTextView:Landroid/widget/TextView;

.field public thumbImageView:Landroid/widget/ImageView;

.field public tinyBackImageView:Landroid/widget/ImageView;

.field public titleTextView:Landroid/widget/TextView;

.field public videoCurrentTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_TIME:J

    .line 75
    const/16 v0, 0x46

    sput v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_PERCENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$1;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    .line 42
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public cancelDismissControlViewTimer()V
    .locals 1

    .line 876
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDismissControlViewTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;

    if-eqz v0, :cond_1

    .line 880
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;->cancel()Z

    .line 883
    :cond_1
    return-void
.end method

.method public changeStartButtonSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    return-void
.end method

.method public changeUiToComplete()V
    .locals 8

    .line 682
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 697
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 690
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 692
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 693
    goto :goto_0

    .line 685
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 687
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 688
    nop

    .line 701
    :goto_0
    return-void
.end method

.method public changeUiToError()V
    .locals 8

    .line 704
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 717
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 719
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 712
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 714
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 715
    goto :goto_0

    .line 707
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 709
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 710
    nop

    .line 723
    :goto_0
    return-void
.end method

.method public changeUiToNormal()V
    .locals 8

    .line 552
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 567
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 560
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 562
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 563
    goto :goto_0

    .line 555
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 557
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 558
    nop

    .line 575
    :goto_0
    return-void
.end method

.method public changeUiToPauseClear()V
    .locals 8

    .line 662
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 675
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 669
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 671
    goto :goto_0

    .line 665
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 667
    nop

    .line 679
    :goto_0
    return-void
.end method

.method public changeUiToPauseShow()V
    .locals 8

    .line 641
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 656
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 649
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 651
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 652
    goto :goto_0

    .line 644
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 646
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 647
    nop

    .line 659
    :goto_0
    return-void
.end method

.method public changeUiToPlayingClear()V
    .locals 8

    .line 622
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    goto :goto_0

    .line 629
    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 631
    goto :goto_0

    .line 625
    :cond_2
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 627
    nop

    .line 638
    :goto_0
    return-void
.end method

.method public changeUiToPlayingShow()V
    .locals 8

    .line 600
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 615
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 608
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 610
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 611
    goto :goto_0

    .line 603
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 605
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 606
    nop

    .line 619
    :goto_0
    return-void
.end method

.method public changeUiToPreparing()V
    .locals 8

    .line 578
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 593
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 586
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 588
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 589
    goto :goto_0

    .line 581
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 583
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    .line 584
    nop

    .line 597
    :goto_0
    return-void
.end method

.method public createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;
    .locals 4
    .param p1, "localView"    # Landroid/view/View;

    .line 855
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e018b

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 856
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 857
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 858
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 859
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 860
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 861
    const/4 v2, -0x2

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 862
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 863
    .local v2, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 864
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 865
    return-object v0
.end method

.method public dismissBrightnessDialog()V
    .locals 1

    .line 848
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissBrightnessDialog()V

    .line 849
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 852
    :cond_0
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .line 782
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissProgressDialog()V

    .line 783
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 786
    :cond_0
    return-void
.end method

.method public dismissVolumeDialog()V
    .locals 1

    .line 818
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissVolumeDialog()V

    .line 819
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 822
    :cond_0
    return-void
.end method

.method public dissmissControlView()V
    .locals 2

    .line 901
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 904
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$6;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->post(Ljava/lang/Runnable;)Z

    .line 919
    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 189
    const v0, 0x7f0b003b

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->init(Landroid/content/Context;)V

    .line 102
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    .line 104
    const v0, 0x7f0901af

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->titleTextView:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f0901a9

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 108
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f0901e6

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->videoCurrentTime:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mRetryBtn:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f090153

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mRetryLayout:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->close:Landroid/widget/ImageView;

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->videoCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mRetryBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingShow()V

    .line 128
    return-void
.end method

.method public onAutoCompletion()V
    .locals 0

    .line 887
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onAutoCompletion()V

    .line 888
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 889
    return-void
.end method

.method public onCLickUiToggleToClear()V
    .locals 2

    .line 509
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 511
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPreparing()V

    goto :goto_0

    .line 514
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 516
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingClear()V

    goto :goto_0

    .line 519
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 520
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 521
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPauseClear()V

    goto :goto_0

    .line 524
    :cond_2
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 525
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 526
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToComplete()V

    .line 530
    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .line 286
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onClick(Landroid/view/View;)V

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 288
    .local v0, "i":I
    const-string v1, "/"

    const-string v2, "file"

    const v3, 0x7f0d007f

    const/4 v4, 0x0

    const v5, 0x7f0901a9

    if-ne v0, v5, :cond_4

    .line 289
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    if-nez v3, :cond_2

    .line 294
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    .line 295
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v1, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->showWifiDialog()V

    .line 298
    return-void

    .line 300
    :cond_1
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onEvent(I)V

    .line 301
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startVideo()V

    goto/16 :goto_3

    .line 302
    :cond_2
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_11

    .line 303
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onClickUiToggle()V

    goto/16 :goto_3

    .line 290
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 291
    return-void

    .line 305
    :cond_4
    const v5, 0x7f090191

    if-ne v0, v5, :cond_5

    .line 306
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startDismissControlViewTimer()V

    goto/16 :goto_3

    .line 307
    :cond_5
    const v5, 0x7f090046

    if-ne v0, v5, :cond_6

    .line 308
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backPress()Z

    goto/16 :goto_3

    .line 309
    :cond_6
    const v5, 0x7f090047

    const/4 v6, 0x1

    if-ne v0, v5, :cond_8

    .line 310
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v1, v6, :cond_7

    .line 311
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->quitFullscreenOrTinyWindow()V

    goto/16 :goto_3

    .line 313
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backPress()Z

    goto/16 :goto_3

    .line 315
    :cond_8
    const v5, 0x7f090075

    if-ne v0, v5, :cond_b

    .line 316
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 317
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 318
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0b0039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 320
    .local v2, "layout":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;

    invoke-direct {v5, p0, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;Landroid/widget/LinearLayout;)V

    .line 338
    .local v5, "mQualityListener":Landroid/view/View$OnClickListener;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    aget-object v8, v8, v4

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 339
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    invoke-static {v8, v7}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getKeyFromDataSource([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b003a

    invoke-static {v9, v10, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 341
    .local v9, "clarityItem":Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 343
    invoke-virtual {v2, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 344
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget v10, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    if-ne v7, v10, :cond_9

    .line 346
    const-string v10, "#fff85959"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "clarityItem":Landroid/widget/TextView;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 350
    .end local v7    # "j":I
    :cond_a
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-direct {v3, v2, v7, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    .line 351
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 352
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 353
    invoke-virtual {v2, v4, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 354
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    const/16 v9, -0x28

    const/16 v10, 0x2e

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 355
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "layout":Landroid/widget/LinearLayout;
    .end local v5    # "mQualityListener":Landroid/view/View$OnClickListener;
    goto/16 :goto_3

    :cond_b
    const v5, 0x7f090152

    if-ne v0, v5, :cond_f

    .line 356
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_2

    .line 360
    :cond_c
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    .line 361
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 362
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v1, :cond_d

    .line 363
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->showWifiDialog()V

    .line 364
    return-void

    .line 366
    :cond_d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->initTextureView()V

    .line 367
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->addTextureView()V

    .line 368
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->setDataSource([Ljava/lang/Object;)V

    .line 369
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->setCurrentDataSource(Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onStatePreparing()V

    .line 371
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onEvent(I)V

    goto :goto_3

    .line 357
    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 358
    return-void

    .line 372
    :cond_f
    const v1, 0x7f090078

    if-ne v0, v1, :cond_10

    .line 373
    iput-boolean v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->enlarge:Z

    .line 378
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onClickClose()V

    goto :goto_3

    .line 379
    :cond_10
    nop

    .line 398
    :cond_11
    :goto_3
    return-void
.end method

.method protected onClickClose()V
    .locals 0

    .line 402
    return-void
.end method

.method public onClickUiToggle()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getKeyFromDataSource([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPreparing()V

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    goto :goto_0

    .line 461
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 462
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingClear()V

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingShow()V

    goto :goto_0

    .line 467
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 468
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 469
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPauseClear()V

    goto :goto_0

    .line 471
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPauseShow()V

    .line 474
    :cond_5
    :goto_0
    return-void
.end method

.method public onCompletion()V
    .locals 1

    .line 893
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onCompletion()V

    .line 894
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 895
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 898
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 435
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 436
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 437
    return-void
.end method

.method public onStateAutoComplete()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateAutoComplete()V

    .line 233
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToComplete()V

    .line 234
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 236
    return-void
.end method

.method public onStateError()V
    .locals 0

    .line 226
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateError()V

    .line 227
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToError()V

    .line 228
    return-void
.end method

.method public onStateNormal()V
    .locals 0

    .line 194
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 195
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToNormal()V

    .line 196
    return-void
.end method

.method public onStatePause()V
    .locals 0

    .line 219
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePause()V

    .line 220
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPauseShow()V

    .line 221
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 222
    return-void
.end method

.method public onStatePlaying()V
    .locals 0

    .line 213
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePlaying()V

    .line 214
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPlayingClear()V

    .line 215
    return-void
.end method

.method public onStatePreparing()V
    .locals 0

    .line 200
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePreparing()V

    .line 201
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeUiToPreparing()V

    .line 202
    return-void
.end method

.method public onStatePreparingChangingUrl(IJ)V
    .locals 2
    .param p1, "urlMapIndex"    # I
    .param p2, "seekToInAdvance"    # J

    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePreparingChangingUrl(IJ)V

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 441
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 447
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startDismissControlViewTimer()V

    .line 448
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 241
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 242
    .local v1, "id":I
    const/4 v2, 0x1

    const v3, 0x7f090191

    if-ne v1, v3, :cond_5

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 252
    .local v2, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 253
    .local v3, "y":F
    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->downX:F

    sub-float v4, v2, v4

    .line 254
    .local v4, "deltaX":F
    iget v5, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->downY:F

    sub-float v5, v3, v5

    .line 255
    .local v5, "deltaY":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 256
    .local v6, "absDeltaX":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 257
    .local v7, "absDeltaY":F
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startDismissControlViewTimer()V

    .line 258
    iget-boolean v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mChangePosition:Z

    if-eqz v8, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getDuration()J

    move-result-wide v8

    .line 260
    .local v8, "duration":J
    iget-wide v10, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mSeekTimePosition:J

    const-wide/16 v12, 0x64

    mul-long v10, v10, v12

    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-nez v14, :cond_1

    const-wide/16 v12, 0x1

    goto :goto_0

    :cond_1
    move-wide v12, v8

    :goto_0
    div-long/2addr v10, v12

    long-to-int v11, v10

    .line 261
    .local v11, "progress":I
    iget-object v10, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 263
    .end local v8    # "duration":J
    .end local v11    # "progress":I
    :cond_2
    iget-boolean v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mChangePosition:Z

    if-nez v8, :cond_4

    iget-boolean v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mChangeVolume:Z

    if-nez v8, :cond_4

    .line 264
    const/16 v8, 0x66

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onEvent(I)V

    .line 265
    const/high16 v8, 0x40a00000    # 5.0f

    cmpg-float v9, v6, v8

    if-gez v9, :cond_4

    cmpg-float v8, v7, v8

    if-gez v8, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onClickUiToggle()V

    goto :goto_1

    .line 245
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "absDeltaX":F
    .end local v7    # "absDeltaY":F
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->downX:F

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->downY:F

    .line 247
    nop

    .line 269
    :cond_4
    :goto_1
    goto :goto_2

    .line 271
    :cond_5
    const v3, 0x7f09004f

    if-ne v1, v3, :cond_8

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_7

    if-eq v3, v2, :cond_6

    goto :goto_2

    .line 277
    :cond_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startDismissControlViewTimer()V

    goto :goto_2

    .line 274
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 281
    :cond_8
    :goto_2
    invoke-super/range {p0 .. p2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public resetProgressAndTime()V
    .locals 2

    .line 546
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->resetProgressAndTime()V

    .line 547
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 548
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 549
    return-void
.end method

.method public setAllControlsVisiblity(IIIIIII)V
    .locals 1
    .param p1, "topCon"    # I
    .param p2, "bottomCon"    # I
    .param p3, "startBtn"    # I
    .param p4, "loadingPro"    # I
    .param p5, "thumbImg"    # I
    .param p6, "bottomPro"    # I
    .param p7, "retryLayout"    # I

    .line 727
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->topContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mRetryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 734
    return-void
.end method

.method public setBatteryLevel()V
    .locals 3

    .line 492
    sget v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_PERCENT:I

    .line 493
    .local v0, "percent":I
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 495
    :cond_0
    const/16 v2, 0x28

    if-lt v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 496
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 497
    :cond_1
    const/16 v1, 0x3c

    if-lt v0, v2, :cond_2

    if-ge v0, v1, :cond_2

    .line 498
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 499
    :cond_2
    const/16 v2, 0x50

    if-lt v0, v1, :cond_3

    if-ge v0, v2, :cond_3

    .line 500
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c002b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 501
    :cond_3
    const/16 v1, 0x5f

    if-lt v0, v2, :cond_4

    if-ge v0, v1, :cond_4

    .line 502
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c002c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 503
    :cond_4
    if-lt v0, v1, :cond_5

    const/16 v1, 0x64

    if-gt v0, v1, :cond_5

    .line 504
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 506
    :cond_5
    :goto_0
    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1
    .param p1, "bufferProgress"    # I

    .line 540
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setBufferProgress(I)V

    .line 541
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 542
    :cond_0
    return-void
.end method

.method public setProgressAndText(IJJ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "position"    # J
    .param p4, "duration"    # J

    .line 534
    invoke-super/range {p0 .. p5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setProgressAndText(IJJ)V

    .line 535
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public setSystemTimeAndBattery()V
    .locals 7

    .line 477
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "dateFormater":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 479
    .local v1, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->videoCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_TIME:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->LAST_GET_BATTERYLEVEL_TIME:J

    .line 482
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setBatteryLevel()V

    .line 489
    :goto_0
    return-void
.end method

.method public varargs setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V
    .locals 14
    .param p1, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p2, "defaultUrlMapIndex"    # I
    .param p3, "screen"    # I
    .param p4, "objects"    # [Ljava/lang/Object;

    .line 131
    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p4

    invoke-super/range {p0 .. p4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 132
    array-length v0, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->titleTextView:Landroid/widget/TextView;

    aget-object v1, v10, v11

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    iget v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const v3, 0x7f0c0033

    const/4 v12, 0x4

    const/16 v13, 0x8

    if-ne v0, v1, :cond_2

    .line 134
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    aget-object v0, v9, v11

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 139
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    iget v1, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getKeyFromDataSource([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeStartButtonSize(I)V

    goto :goto_2

    .line 145
    :cond_2
    iget v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_4

    iget v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 155
    :cond_3
    iget v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 157
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 160
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->close:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->updateStartImage()V

    goto :goto_2

    .line 147
    :cond_4
    :goto_1
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->changeStartButtonSize(I)V

    .line 151
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    iget-object v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 168
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->setSystemTimeAndBattery()V

    .line 171
    iget-boolean v0, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tmp_test_back:Z

    if-eqz v0, :cond_6

    .line 172
    iput-boolean v11, v8, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->tmp_test_back:Z

    .line 173
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->setFirstFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->backPress()Z

    .line 176
    :cond_6
    return-void
.end method

.method public showBrightnessDialog(I)V
    .locals 3
    .param p1, "brightnessPercent"    # I

    .line 826
    invoke-super {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showBrightnessDialog(I)V

    .line 827
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 829
    .local v0, "localView":Landroid/view/View;
    const v1, 0x7f0901c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogBrightnessTextView:Landroid/widget/TextView;

    .line 830
    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogBrightnessProgressBar:Landroid/widget/ProgressBar;

    .line 831
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    .line 833
    .end local v0    # "localView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 836
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    .line 837
    const/16 p1, 0x64

    goto :goto_0

    .line 838
    :cond_2
    if-gez p1, :cond_3

    .line 839
    const/4 p1, 0x0

    .line 841
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogBrightnessTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogBrightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 843
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onCLickUiToggleToClear()V

    .line 844
    return-void
.end method

.method public showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V
    .locals 4
    .param p1, "deltaX"    # F
    .param p2, "seekTime"    # Ljava/lang/String;
    .param p3, "seekTimePosition"    # J
    .param p5, "totalTime"    # Ljava/lang/String;
    .param p6, "totalTimeDuration"    # J

    .line 756
    invoke-super/range {p0 .. p7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V

    .line 757
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 759
    .local v0, "localView":Landroid/view/View;
    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogProgressBar:Landroid/widget/ProgressBar;

    .line 760
    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogSeekTime:Landroid/widget/TextView;

    .line 761
    const v1, 0x7f0901c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogTotalTime:Landroid/widget/TextView;

    .line 762
    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    .line 763
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    .line 765
    .end local v0    # "localView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogSeekTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogTotalTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v1, 0x0

    cmp-long v3, p6, v1

    if-gtz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x64

    mul-long v1, v1, p3

    div-long/2addr v1, p6

    long-to-int v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 772
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    .line 773
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 775
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 777
    :goto_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onCLickUiToggleToClear()V

    .line 778
    return-void
.end method

.method public showVolumeDialog(FI)V
    .locals 3
    .param p1, "deltaY"    # F
    .param p2, "volumePercent"    # I

    .line 790
    invoke-super {p0, p1, p2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showVolumeDialog(FI)V

    .line 791
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 793
    .local v0, "localView":Landroid/view/View;
    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeImageView:Landroid/widget/ImageView;

    .line 794
    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeTextView:Landroid/widget/TextView;

    .line 795
    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    .line 796
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    .line 798
    .end local v0    # "localView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 801
    :cond_1
    if-gtz p2, :cond_2

    .line 802
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeImageView:Landroid/widget/ImageView;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeImageView:Landroid/widget/ImageView;

    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 806
    :goto_0
    const/16 v0, 0x64

    if-le p2, v0, :cond_3

    .line 807
    const/16 p2, 0x64

    goto :goto_1

    .line 808
    :cond_3
    if-gez p2, :cond_4

    .line 809
    const/4 p2, 0x0

    .line 811
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 813
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onCLickUiToggleToClear()V

    .line 814
    return-void
.end method

.method public showWifiDialog()V
    .locals 3

    .line 405
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showWifiDialog()V

    .line 406
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$3;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$3;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$4;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$4;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$5;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$5;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 431
    return-void
.end method

.method public startDismissControlViewTimer()V
    .locals 4

    .line 869
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 870
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    .line 871
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->mDismissControlViewTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$DismissControlViewTimerTask;

    .line 872
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 873
    return-void
.end method

.method public updateStartImage()V
    .locals 4

    .line 737
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 738
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 740
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 741
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    .line 742
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 744
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentState:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    .line 745
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const v2, 0x7f08007e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 750
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    :goto_0
    return-void
.end method
