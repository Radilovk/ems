.class public abstract Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
.super Landroid/widget/FrameLayout;
.source "JZVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;,
        Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$JZAutoFullscreenListener;
    }
.end annotation


# static fields
.field public static ACTION_BAR_EXIST:Z = false

.field public static CLICK_QUIT_FULLSCREEN_TIME:J = 0x0L

.field public static final CURRENT_STATE_AUTO_COMPLETE:I = 0x6

.field public static final CURRENT_STATE_ERROR:I = 0x7

.field public static final CURRENT_STATE_NORMAL:I = 0x0

.field public static final CURRENT_STATE_PAUSE:I = 0x5

.field public static final CURRENT_STATE_PLAYING:I = 0x3

.field public static final CURRENT_STATE_PREPARING:I = 0x1

.field public static final CURRENT_STATE_PREPARING_CHANGING_URL:I = 0x2

.field public static FULLSCREEN_ORIENTATION:I = 0x0

.field public static final FULL_SCREEN_NORMAL_DELAY:I = 0x12c

.field protected static JZ_USER_EVENT:Lcom/isaigu/gymapp/widget/video/JZUserAction; = null

.field public static NORMAL_ORIENTATION:I = 0x0

.field public static SAVE_PROGRESS:Z = false

.field public static final SCREEN_WINDOW_FULLSCREEN:I = 0x2

.field public static final SCREEN_WINDOW_LIST:I = 0x1

.field public static final SCREEN_WINDOW_NORMAL:I = 0x0

.field public static final SCREEN_WINDOW_TINY:I = 0x3

.field public static final TAG:Ljava/lang/String; = "JiaoZiVideoPlayer"

.field public static final THRESHOLD:I = 0x50

.field public static TOOL_BAR_EXIST:Z = false

.field protected static UPDATE_PROGRESS_TIMER:Ljava/util/Timer; = null

.field public static final URL_KEY_DEFAULT:Ljava/lang/String; = "URL_KEY_DEFAULT"

.field public static VIDEO_IMAGE_DISPLAY_TYPE:I = 0x0

.field public static final VIDEO_IMAGE_DISPLAY_TYPE_ADAPTER:I = 0x0

.field public static final VIDEO_IMAGE_DISPLAY_TYPE_FILL_PARENT:I = 0x1

.field public static final VIDEO_IMAGE_DISPLAY_TYPE_FILL_SCROP:I = 0x2

.field public static final VIDEO_IMAGE_DISPLAY_TYPE_ORIGINAL:I = 0x3

.field public static WIFI_TIP_DIALOG_SHOWED:Z

.field public static lastAutoFullscreenTime:J

.field public static onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public bottomContainer:Landroid/view/ViewGroup;

.field public currentScreen:I

.field public currentState:I

.field public currentTimeTextView:Landroid/widget/TextView;

.field public currentUrlMapIndex:I

.field public dataSourceObjects:[Ljava/lang/Object;

.field enlarge:Z

.field public fullscreenButton:Landroid/widget/ImageView;

.field public heightRatio:I

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mChangeBrightness:Z

.field protected mChangePosition:Z

.field protected mChangeVolume:Z

.field protected mDownX:F

.field protected mDownY:F

.field protected mGestureDownBrightness:F

.field protected mGestureDownPosition:J

.field protected mGestureDownVolume:I

.field protected mProgressTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSeekTimePosition:J

.field protected mTouchingProgressBar:Z

.field public objects:[Ljava/lang/Object;

.field public positionInList:I

.field public progressBar:Landroid/widget/SeekBar;

.field public seekToInAdvance:J

.field public startButton:Landroid/widget/ImageView;

.field public textureViewContainer:Landroid/view/ViewGroup;

.field tmp_test_back:Z

.field public topContainer:Landroid/view/ViewGroup;

.field public totalTimeTextView:Landroid/widget/TextView;

.field public videoRotation:I

.field public widthRatio:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->ACTION_BAR_EXIST:Z

    .line 68
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->TOOL_BAR_EXIST:Z

    .line 69
    const/4 v2, 0x4

    sput v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->FULLSCREEN_ORIENTATION:I

    .line 70
    sput v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I

    .line 71
    sput-boolean v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->SAVE_PROGRESS:Z

    .line 72
    sput-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    .line 73
    sput v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->VIDEO_IMAGE_DISPLAY_TYPE:I

    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 75
    sput-wide v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->lastAutoFullscreenTime:J

    .line 76
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 104
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    .line 106
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->widthRatio:I

    .line 114
    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->heightRatio:I

    .line 116
    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 117
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->positionInList:I

    .line 118
    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->videoRotation:I

    .line 133
    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->tmp_test_back:Z

    .line 135
    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->enlarge:Z

    .line 139
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->init(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 104
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    .line 106
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->widthRatio:I

    .line 114
    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->heightRatio:I

    .line 116
    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 117
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->positionInList:I

    .line 118
    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->videoRotation:I

    .line 133
    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->tmp_test_back:Z

    .line 135
    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->enlarge:Z

    .line 144
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->init(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method public static backPress()Z
    .locals 6

    .line 193
    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "backPress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 195
    return v2

    .line 197
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    .line 201
    .local v0, "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v4, v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    :goto_0
    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 204
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setVisibility(I)V

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->playOnThisJzvd()V

    .line 206
    .end local v0    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    goto :goto_1

    .line 207
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setVisibility(I)V

    .line 208
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->quitFullscreenOrTinyWindow()V

    .line 210
    :goto_1
    return v1

    .line 211
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-eq v0, v3, :cond_4

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 214
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setVisibility(I)V

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->quitFullscreenOrTinyWindow()V

    .line 217
    return v1

    .line 219
    :cond_5
    return v2
.end method

.method public static clearSavedProgress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 259
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->clearSavedProgress(Landroid/content/Context;Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public static goOnPlayOnPause()V
    .locals 3

    .line 277
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    .line 279
    .local v0, "jzvd":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    iget v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePause()V

    .line 285
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->pause()V

    .line 288
    .end local v0    # "jzvd":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    :cond_1
    :goto_0
    return-void
.end method

.method public static goOnPlayOnResume()V
    .locals 3

    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    .line 269
    .local v0, "jzvd":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    iget v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePlaying()V

    .line 271
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->start()V

    .line 274
    .end local v0    # "jzvd":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    :cond_0
    return-void
.end method

.method public static hideSupportActionBar(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 245
    sget-boolean v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->ACTION_BAR_EXIST:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 247
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 249
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 252
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_0
    sget-boolean v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->TOOL_BAR_EXIST:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 256
    :cond_1
    return-void
.end method

.method public static onChildViewAttachedToWindow(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "jzvdId"    # I

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 332
    .local v0, "videoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->backPress()Z

    .line 336
    .end local v0    # "videoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    :cond_0
    return-void
.end method

.method public static onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 340
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    .line 341
    .local v0, "videoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 342
    iget v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 343
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowTiny()V

    .line 349
    .end local v0    # "videoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    :cond_1
    :goto_0
    return-void
.end method

.method public static onScrollAutoTiny(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 291
    add-int v0, p1, p2

    .line 292
    .local v0, "lastVisibleItem":I
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->positionInList:I

    .line 293
    .local v1, "currentPlayPosition":I
    if-ltz v1, :cond_3

    .line 294
    const-string v2, "JiaoZiVideoPlayer"

    const/4 v3, 0x3

    if-lt v1, p1, :cond_1

    add-int/lit8 v4, v0, -0x1

    if-le v1, v4, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 307
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v4

    iget v4, v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v4, v3, :cond_3

    .line 308
    const-string v3, "onScroll: into screen"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->backPress()Z

    goto :goto_1

    .line 295
    :cond_1
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v4

    iget v4, v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-eq v4, v3, :cond_3

    .line 297
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v3

    iget v3, v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    goto :goto_1

    .line 301
    :cond_2
    const-string v3, "onScroll: out screen"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowTiny()V

    .line 313
    :cond_3
    :goto_1
    return-void
.end method

.method public static onScrollReleaseAllVideos(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 316
    add-int v0, p1, p2

    .line 317
    .local v0, "lastVisibleItem":I
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->positionInList:I

    .line 318
    .local v1, "currentPlayPosition":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollReleaseAllVideos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JiaoZiVideoPlayer"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-ltz v1, :cond_1

    .line 321
    if-lt v1, p1, :cond_0

    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_1

    .line 322
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 323
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    .line 327
    :cond_1
    return-void
.end method

.method public static quitFullscreenOrTinyWindow()V
    .locals 1

    .line 224
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->clearFloatScreen()V

    .line 225
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->releaseMediaPlayer()V

    .line 226
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->completeAll()V

    .line 227
    return-void
.end method

.method public static releaseAllVideos()V
    .locals 5

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 149
    const-string v0, "JiaoZiVideoPlayer"

    const-string v1, "releaseAllVideos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->completeAll()V

    .line 151
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->positionInList:I

    .line 152
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->releaseMediaPlayer()V

    .line 154
    :cond_0
    return-void
.end method

.method public static setJzUserAction(Lcom/isaigu/gymapp/widget/video/JZUserAction;)V
    .locals 0
    .param p0, "jzUserEvent"    # Lcom/isaigu/gymapp/widget/video/JZUserAction;

    .line 263
    sput-object p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->JZ_USER_EVENT:Lcom/isaigu/gymapp/widget/video/JZUserAction;

    .line 264
    return-void
.end method

.method public static setMediaInterface(Lcom/isaigu/gymapp/widget/video/JZMediaInterface;)V
    .locals 1
    .param p0, "mediaInterface"    # Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    .line 1172
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iput-object p0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    .line 1173
    return-void
.end method

.method public static setTextureViewRotation(I)V
    .locals 2
    .param p0, "rotation"    # I

    .line 352
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    int-to-float v1, p0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->setRotation(F)V

    .line 355
    :cond_0
    return-void
.end method

.method public static setVideoImageDisplayType(I)V
    .locals 1
    .param p0, "type"    # I

    .line 358
    sput p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->VIDEO_IMAGE_DISPLAY_TYPE:I

    .line 359
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    if-eqz v0, :cond_0

    .line 360
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->requestLayout()V

    .line 362
    :cond_0
    return-void
.end method

.method public static showSupportActionBar(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 231
    sget-boolean v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->ACTION_BAR_EXIST:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 233
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 235
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 238
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_0
    sget-boolean v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->TOOL_BAR_EXIST:Z

    if-eqz v0, :cond_1

    .line 239
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 241
    :cond_1
    return-void
.end method

.method public static varargs startFullscreen(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_class"    # Ljava/lang/Class;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    .local v0, "map":Ljava/util/LinkedHashMap;
    const-string v1, "URL_KEY_DEFAULT"

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 160
    .local v1, "dataSourceObjects":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 161
    invoke-static {p0, p1, v1, v2, p3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startFullscreen(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public static varargs startFullscreen(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_class"    # Ljava/lang/Class;
    .param p2, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p3, "defaultUrlMapIndex"    # I
    .param p4, "objects"    # [Ljava/lang/Object;

    .line 165
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 166
    sget v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 167
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 168
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 169
    .local v0, "vp":Landroid/view/ViewGroup;
    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "old":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 175
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 176
    .local v3, "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    invoke-virtual {v3, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setId(I)V

    .line 177
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    const/4 v5, 0x2

    invoke-virtual {v3, p2, p3, v5, p4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 184
    iget-object v5, v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->performClick()Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    nop

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 189
    .end local v1    # "e":Ljava/lang/InstantiationException;
    nop

    .line 190
    :goto_0
    return-void
.end method


# virtual methods
.method public addTextureView()V
    .locals 3

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTextureView ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 890
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    return-void
.end method

.method public autoFullscreen(F)V
    .locals 3
    .param p1, "x"    # F

    .line 1141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 1145
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    goto :goto_0

    .line 1148
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 1150
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowFullscreen()V

    .line 1153
    :cond_1
    return-void
.end method

.method public autoQuitFullscreen()V
    .locals 5

    .line 1156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->lastAutoFullscreenTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1157
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->lastAutoFullscreenTime:J

    .line 1161
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->backPress()Z

    .line 1163
    :cond_0
    return-void
.end method

.method public cancelProgressTimer()V
    .locals 1

    .line 954
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mProgressTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    if-eqz v0, :cond_1

    .line 958
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->cancel()Z

    .line 960
    :cond_1
    return-void
.end method

.method public clearFloatScreen()V
    .locals 5

    .line 915
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 916
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showSupportActionBar(Landroid/content/Context;)V

    .line 917
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 918
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 919
    .local v0, "vp":Landroid/view/ViewGroup;
    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 920
    .local v1, "fullJzvd":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    const v2, 0x7f0900d0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 922
    .local v2, "tinyJzvd":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    if-eqz v1, :cond_0

    .line 923
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 924
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 925
    sget-object v4, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 927
    :cond_0
    if-eqz v2, :cond_1

    .line 928
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 929
    iget-object v3, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 930
    sget-object v4, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 932
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->setSecondFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    .line 933
    return-void
.end method

.method public clearFullscreenLayout()V
    .locals 4

    .line 901
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 902
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 903
    .local v0, "vp":Landroid/view/ViewGroup;
    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 904
    .local v1, "oldF":Landroid/view/View;
    const v2, 0x7f0900d0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 905
    .local v2, "oldT":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 908
    :cond_0
    if-eqz v2, :cond_1

    .line 909
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showSupportActionBar(Landroid/content/Context;)V

    .line 912
    return-void
.end method

.method public dismissBrightnessDialog()V
    .locals 0

    .line 1206
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 0

    .line 1190
    return-void
.end method

.method public dismissVolumeDialog()V
    .locals 0

    .line 1198
    return-void
.end method

.method public getCurrentPositionWhenPlaying()J
    .locals 4

    .line 983
    const-wide/16 v0, 0x0

    .line 987
    .local v0, "position":J
    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 990
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentPosition()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 994
    nop

    .line 996
    :cond_1
    return-wide v0

    .line 991
    :catch_0
    move-exception v2

    .line 992
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 993
    return-wide v0
.end method

.method public getCurrentUrl()Ljava/lang/Object;
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1000
    const-wide/16 v0, 0x0

    .line 1004
    .local v0, "duration":J
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getDuration()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 1008
    nop

    .line 1009
    return-wide v0

    .line 1005
    :catch_0
    move-exception v2

    .line 1006
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1007
    return-wide v0
.end method

.method public abstract getLayoutId()I
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 371
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 372
    const v0, 0x7f090187

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startButton:Landroid/widget/ImageView;

    .line 373
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    .line 374
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    .line 375
    const v0, 0x7f09007d

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f0901b5

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    .line 378
    const v0, 0x7f090191

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    .line 379
    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->topContainer:Landroid/view/ViewGroup;

    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 384
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    invoke-virtual {p0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 389
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenWidth:I

    .line 390
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    .line 391
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 394
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getRequestedOrientation()I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public initTextureView()V
    .locals 2

    .line 878
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->removeTextureView()V

    .line 879
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    .line 880
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 881
    return-void
.end method

.method public isCurrentJZVD()Z
    .locals 1

    .line 1122
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1122
    :goto_0
    return v0
.end method

.method public isCurrentPlay()Z
    .locals 2

    .line 1117
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    .line 1118
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1117
    :goto_0
    return v0
.end method

.method public onAutoCompletion()V
    .locals 4

    .line 822
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoCompletion  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 825
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissVolumeDialog()V

    .line 826
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissProgressDialog()V

    .line 827
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissBrightnessDialog()V

    .line 828
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateAutoComplete()V

    .line 830
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 831
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->backPress()Z

    .line 833
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->releaseMediaPlayer()V

    .line 834
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/Object;J)V

    .line 835
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 447
    .local v0, "i":I
    const/4 v1, 0x6

    const-string v2, "] "

    const-string v3, "JiaoZiVideoPlayer"

    const v4, 0x7f090187

    if-ne v0, v4, :cond_6

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick start ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 453
    :cond_0
    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-nez v4, :cond_2

    .line 454
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 455
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v1, :cond_1

    .line 457
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showWifiDialog()V

    .line 458
    return-void

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startVideo()V

    .line 461
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    goto/16 :goto_1

    .line 462
    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 463
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseVideo ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->pause()V

    .line 466
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePause()V

    goto :goto_1

    .line 467
    :cond_3
    const/4 v2, 0x5

    if-ne v4, v2, :cond_4

    .line 468
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 469
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->start()V

    .line 470
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePlaying()V

    goto :goto_1

    .line 471
    :cond_4
    if-ne v4, v1, :cond_9

    .line 472
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 473
    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    .line 476
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startVideo()V

    goto :goto_1

    .line 450
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 451
    return-void

    .line 478
    :cond_6
    const v4, 0x7f0900aa

    if-ne v0, v4, :cond_9

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick fullscreen ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-ne v2, v1, :cond_7

    return-void

    .line 490
    :cond_7
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-nez v1, :cond_8

    .line 491
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowTiny()V

    goto :goto_1

    .line 493
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->backPress()Z

    .line 530
    :cond_9
    :goto_1
    return-void
.end method

.method public onCompletion()V
    .locals 3

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v1, 0x3

    .line 843
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 844
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 845
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 846
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoWidth:I

    .line 847
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iput v1, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoHeight:I

    .line 849
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 850
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 851
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 852
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->clearFullscreenLayout()V

    .line 853
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 855
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 856
    :cond_0
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 857
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 858
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    .line 859
    sput-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 860
    return-void
.end method

.method public onError(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v0, 0x26

    if-eq p1, v0, :cond_0

    const/16 v1, -0x26

    if-eq p2, v1, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p2, v0, :cond_0

    const/16 v0, -0x13

    if-eq p2, v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateError()V

    .line 795
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->releaseMediaPlayer()V

    .line 799
    :cond_0
    return-void
.end method

.method public onEvent(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1166
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->JZ_USER_EVENT:Lcom/isaigu/gymapp/widget/video/JZUserAction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1167
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->JZ_USER_EVENT:Lcom/isaigu/gymapp/widget/video/JZUserAction;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUserAction;->onEvent(ILjava/lang/Object;I[Ljava/lang/Object;)V

    .line 1169
    :cond_0
    return-void
.end method

.method public onInfo(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo what - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 803
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 807
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->widthRatio:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->heightRatio:I

    if-eqz v0, :cond_1

    .line 808
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 809
    .local v0, "specWidth":I
    int-to-float v1, v0

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->heightRatio:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->widthRatio:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 810
    .local v1, "specHeight":I
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setMeasuredDimension(II)V

    .line 812
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 813
    .local v3, "childWidthMeasureSpec":I
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 814
    .local v2, "childHeightMeasureSpec":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->measure(II)V

    .line 815
    .end local v0    # "specWidth":I
    .end local v1    # "specHeight":I
    .end local v2    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    goto :goto_0

    .line 816
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 819
    :goto_0
    return-void

    .line 804
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 805
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePrepared()V

    .line 695
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePlaying()V

    .line 696
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 1042
    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    .line 1178
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bottomProgress onStartTrackingTouch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 1016
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1017
    .local v0, "vpdown":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 1018
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1019
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 1021
    :cond_0
    return-void
.end method

.method public onStateAutoComplete()V
    .locals 2

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateAutoComplete  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v0, 0x6

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 782
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 783
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 784
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    return-void
.end method

.method public onStateError()V
    .locals 2

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateError  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v0, 0x7

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 776
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 777
    return-void
.end method

.method public onStateNormal()V
    .locals 2

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateNormal  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 731
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 732
    return-void
.end method

.method public onStatePause()V
    .locals 2

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePause  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v0, 0x5

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 770
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    .line 771
    return-void
.end method

.method public onStatePlaying()V
    .locals 2

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePlaying  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 764
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    .line 765
    return-void
.end method

.method public onStatePrepared()V
    .locals 5

    .line 750
    iget-wide v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 751
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->seekTo(J)V

    .line 752
    iput-wide v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getSavedProgress(Landroid/content/Context;Ljava/lang/Object;)J

    move-result-wide v0

    .line 755
    .local v0, "position":J
    nop

    .line 759
    .end local v0    # "position":J
    :goto_0
    return-void
.end method

.method public onStatePreparing()V
    .locals 2

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePreparing  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 737
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->resetProgressAndTime()V

    .line 738
    return-void
.end method

.method public onStatePreparingChangingUrl(IJ)V
    .locals 2
    .param p1, "urlMapIndex"    # I
    .param p2, "seekToInAdvance"    # J

    .line 741
    const/4 v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 742
    iput p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 743
    iput-wide p2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    .line 744
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->setDataSource([Ljava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->setCurrentDataSource(Ljava/lang/Object;)V

    .line 746
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->prepare()V

    .line 747
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bottomProgress onStopTrackingTouch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JiaoZiVideoPlayer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 1027
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    .line 1028
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1029
    .local v3, "vpup":Landroid/view/ViewParent;
    :goto_0
    if-eqz v3, :cond_0

    .line 1030
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1031
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    .line 1033
    :cond_0
    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    if-eq v4, v0, :cond_1

    .line 1034
    return-void

    .line 1035
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getDuration()J

    move-result-wide v6

    mul-long v4, v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    .line 1036
    .local v4, "time":J
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->seekTo(J)V

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seekTo "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 534
    move-object/from16 v9, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 535
    .local v10, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 536
    .local v11, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    .line 537
    .local v12, "id":I
    const v0, 0x7f090191

    if-ne v12, v0, :cond_16

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    if-eq v0, v1, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_6

    .line 551
    :cond_0
    iget v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownX:F

    sub-float v14, v10, v0

    .line 552
    .local v14, "deltaX":F
    iget v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownY:F

    sub-float v15, v11, v0

    .line 553
    .local v15, "deltaY":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 554
    .local v16, "absDeltaX":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 555
    .local v17, "absDeltaY":F
    iget v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/16 v18, 0x0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 557
    .local v0, "width":I
    iget v3, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 558
    .local v3, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getX()F

    move-result v4

    .line 559
    .local v4, "ox":F
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getY()F

    move-result v5

    .line 560
    .local v5, "oy":F
    add-float v6, v4, v14

    float-to-int v6, v6

    int-to-float v4, v6

    .line 561
    add-float v6, v5, v15

    float-to-int v6, v6

    int-to-float v5, v6

    .line 562
    cmpg-float v6, v4, v18

    if-gez v6, :cond_1

    .line 563
    const/4 v4, 0x0

    .line 565
    :cond_1
    int-to-float v6, v0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 566
    int-to-float v4, v0

    .line 568
    :cond_2
    cmpg-float v6, v5, v18

    if-gez v6, :cond_3

    .line 569
    const/4 v5, 0x0

    .line 571
    :cond_3
    int-to-float v6, v3

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    .line 572
    int-to-float v5, v3

    .line 577
    :cond_4
    invoke-virtual {v9, v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setX(F)V

    .line 578
    invoke-virtual {v9, v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setY(F)V

    .line 580
    .end local v0    # "width":I
    .end local v3    # "height":I
    .end local v4    # "ox":F
    .end local v5    # "oy":F
    :cond_5
    iget v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/high16 v19, 0x437f0000    # 255.0f

    if-ne v0, v2, :cond_a

    .line 581
    iget-boolean v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    if-nez v0, :cond_a

    iget-boolean v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    if-nez v0, :cond_a

    iget-boolean v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeBrightness:Z

    if-nez v0, :cond_a

    .line 582
    const/high16 v0, 0x42a00000    # 80.0f

    cmpl-float v2, v16, v0

    if-gtz v2, :cond_6

    cmpl-float v2, v17, v0

    if-lez v2, :cond_a

    .line 583
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 584
    cmpl-float v0, v16, v0

    if-ltz v0, :cond_7

    .line 587
    iget v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_a

    .line 588
    iput-boolean v1, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownPosition:J

    goto/16 :goto_2

    .line 593
    :cond_7
    iget v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownX:F

    iget v2, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    .line 594
    iput-boolean v1, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeBrightness:Z

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 596
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const-string v2, "JiaoZiVideoPlayer"

    cmpg-float v0, v0, v18

    if-gez v0, :cond_8

    .line 598
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current system brightness: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 602
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    goto :goto_1

    .line 604
    :cond_8
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    mul-float v0, v0, v19

    iput v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current activity brightness: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    goto :goto_2

    .line 608
    :cond_9
    iput-boolean v1, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    .line 609
    iget-object v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownVolume:I

    .line 615
    :cond_a
    :goto_2
    iget-boolean v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_c

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getDuration()J

    move-result-wide v4

    .line 617
    .local v4, "totalTimeDuration":J
    iget-wide v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownPosition:J

    long-to-float v0, v0

    long-to-float v1, v4

    mul-float v1, v1, v14

    iget v2, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    .line 618
    cmp-long v2, v0, v4

    if-lez v2, :cond_b

    .line 619
    iput-wide v4, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    .line 620
    :cond_b
    iget-wide v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "seekTime":Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v20

    .line 623
    .local v20, "totalTime":Ljava/lang/String;
    iget-wide v2, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    move-object/from16 v1, p0

    move-wide/from16 v21, v2

    move v2, v14

    move-object v3, v0

    move-wide/from16 v23, v4

    .end local v4    # "totalTimeDuration":J
    .local v23, "totalTimeDuration":J
    move-wide/from16 v4, v21

    move-object/from16 v6, v20

    const/4 v13, 0x3

    move-wide/from16 v7, v23

    invoke-virtual/range {v1 .. v8}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V

    goto :goto_3

    .line 615
    .end local v0    # "seekTime":Ljava/lang/String;
    .end local v20    # "totalTime":Ljava/lang/String;
    .end local v23    # "totalTimeDuration":J
    :cond_c
    const/4 v13, 0x3

    .line 625
    :goto_3
    iget-boolean v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x40400000    # 3.0f

    if-eqz v0, :cond_d

    .line 626
    neg-float v15, v15

    .line 627
    iget-object v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 628
    .local v0, "max":I
    int-to-float v3, v0

    mul-float v3, v3, v15

    mul-float v3, v3, v2

    iget v4, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 629
    .local v3, "deltaV":I
    iget-object v4, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownVolume:I

    add-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v13, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 631
    iget v4, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownVolume:I

    mul-int/lit8 v4, v4, 0x64

    div-int/2addr v4, v0

    int-to-float v4, v4

    mul-float v5, v15, v2

    mul-float v5, v5, v1

    iget v6, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 632
    .local v4, "volumePercent":I
    neg-float v5, v15

    invoke-virtual {v9, v5, v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showVolumeDialog(FI)V

    .line 635
    .end local v0    # "max":I
    .end local v3    # "deltaV":I
    .end local v4    # "volumePercent":I
    :cond_d
    iget-boolean v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeBrightness:Z

    if-eqz v0, :cond_10

    .line 636
    neg-float v0, v15

    .line 637
    .end local v15    # "deltaY":F
    .local v0, "deltaY":F
    mul-float v3, v0, v19

    mul-float v3, v3, v2

    iget v4, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 638
    .restart local v3    # "deltaV":I
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 639
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget v5, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    int-to-float v6, v3

    add-float/2addr v6, v5

    div-float v6, v6, v19

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e

    .line 640
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_4

    .line 641
    :cond_e
    int-to-float v6, v3

    add-float/2addr v6, v5

    div-float v6, v6, v19

    cmpg-float v6, v6, v18

    if-gtz v6, :cond_f

    .line 642
    const v5, 0x3c23d70a    # 0.01f

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_4

    .line 644
    :cond_f
    int-to-float v6, v3

    add-float/2addr v5, v6

    div-float v5, v5, v19

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 646
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 648
    iget v5, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    mul-float v5, v5, v1

    div-float v5, v5, v19

    mul-float v2, v2, v0

    mul-float v2, v2, v1

    iget v1, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    add-float/2addr v5, v2

    float-to-int v1, v5

    .line 649
    .local v1, "brightnessPercent":I
    invoke-virtual {v9, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showBrightnessDialog(I)V

    .line 651
    .end local v1    # "brightnessPercent":I
    .end local v3    # "deltaV":I
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    goto :goto_6

    .line 635
    .end local v0    # "deltaY":F
    .restart local v15    # "deltaY":F
    :cond_10
    const/4 v1, 0x0

    goto :goto_6

    .line 655
    .end local v14    # "deltaX":F
    .end local v15    # "deltaY":F
    .end local v16    # "absDeltaX":F
    .end local v17    # "absDeltaY":F
    :cond_11
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mTouchingProgressBar:Z

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissProgressDialog()V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissVolumeDialog()V

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissBrightnessDialog()V

    .line 659
    iget-boolean v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_13

    .line 660
    const/16 v0, 0xc

    invoke-virtual {v9, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 661
    iget-wide v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->seekTo(J)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getDuration()J

    move-result-wide v0

    .line 663
    .local v0, "duration":J
    iget-wide v2, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    const-wide/16 v4, 0x64

    mul-long v2, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_12

    const-wide/16 v4, 0x1

    goto :goto_5

    :cond_12
    move-wide v4, v0

    :goto_5
    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 664
    .local v3, "progress":I
    iget-object v2, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 666
    .end local v0    # "duration":J
    .end local v3    # "progress":I
    :cond_13
    iget-boolean v0, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    if-eqz v0, :cond_14

    .line 667
    const/16 v0, 0xb

    invoke-virtual {v9, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 669
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    const/4 v1, 0x0

    goto :goto_6

    .line 541
    :cond_15
    iput-boolean v1, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mTouchingProgressBar:Z

    .line 543
    iput v10, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownX:F

    .line 544
    iput v11, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownY:F

    .line 545
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    .line 546
    iput-boolean v1, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    .line 547
    iput-boolean v1, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeBrightness:Z

    .line 548
    goto :goto_6

    .line 537
    :cond_16
    const/4 v1, 0x0

    .line 673
    :goto_6
    return v1
.end method

.method public onVideoSizeChanged()V
    .locals 3

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    if-eqz v0, :cond_1

    .line 938
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->videoRotation:I

    if-eqz v0, :cond_0

    .line 939
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->videoRotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->setRotation(F)V

    .line 941
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoWidth:I

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->setVideoSize(II)V

    .line 943
    :cond_1
    return-void
.end method

.method public playOnThisJzvd()V
    .locals 2

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playOnThisJzvd  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 1131
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 1132
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->clearFloatScreen()V

    .line 1134
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setState(I)V

    .line 1136
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->addTextureView()V

    .line 1137
    return-void
.end method

.method public release()V
    .locals 5

    .line 863
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 866
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 867
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 869
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 871
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseMediaPlayer ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    .line 875
    :cond_2
    :goto_0
    return-void
.end method

.method public removeTextureView()V
    .locals 2

    .line 894
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 895
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 896
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 898
    :cond_0
    return-void
.end method

.method public resetProgressAndTime()V
    .locals 4

    .line 976
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 977
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 978
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1
    .param p1, "bufferProgress"    # I

    .line 972
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 973
    :cond_0
    return-void
.end method

.method public setProgressAndText(IJJ)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "position"    # J
    .param p4, "duration"    # J

    .line 964
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mTouchingProgressBar:Z

    if-nez v0, :cond_0

    .line 965
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 967
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-static {p4, p5}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setState(III)V

    .line 700
    return-void
.end method

.method public setState(III)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "urlMapIndex"    # I
    .param p3, "seekToInAdvance"    # I

    .line 703
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateError()V

    .line 721
    goto :goto_0

    .line 723
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateAutoComplete()V

    goto :goto_0

    .line 717
    :cond_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePause()V

    .line 718
    goto :goto_0

    .line 714
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePlaying()V

    .line 715
    goto :goto_0

    .line 711
    :cond_4
    int-to-long v0, p3

    invoke-virtual {p0, p2, v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePreparingChangingUrl(IJ)V

    .line 712
    goto :goto_0

    .line 708
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePreparing()V

    .line 709
    goto :goto_0

    .line 705
    :cond_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 706
    nop

    .line 726
    :goto_0
    return-void
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "screen"    # I
    .param p3, "objects"    # [Ljava/lang/Object;

    .line 403
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 404
    .local v0, "map":Ljava/util/LinkedHashMap;
    const-string v1, "URL_KEY_DEFAULT"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 406
    .local v1, "dataSourceObjects":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 407
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method public varargs setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V
    .locals 5
    .param p1, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p2, "defaultUrlMapIndex"    # I
    .param p3, "screen"    # I
    .param p4, "objects"    # [Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 412
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    const-wide/16 v0, 0x0

    .line 418
    .local v0, "position":J
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentPosition()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 421
    goto :goto_0

    .line 419
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 422
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/Object;J)V

    .line 425
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->releaseMediaPlayer()V

    .line 426
    .end local v0    # "position":J
    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 427
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowTiny()V

    goto :goto_1

    .line 428
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 429
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 430
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->tmp_test_back:Z

    goto :goto_1

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    .line 437
    iput p2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 438
    iput p3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    .line 439
    iput-object p4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    .line 440
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 442
    return-void
.end method

.method public showBrightnessDialog(I)V
    .locals 0
    .param p1, "brightnessPercent"    # I

    .line 1202
    return-void
.end method

.method public showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V
    .locals 0
    .param p1, "deltaX"    # F
    .param p2, "seekTime"    # Ljava/lang/String;
    .param p3, "seekTimePosition"    # J
    .param p5, "totalTime"    # Ljava/lang/String;
    .param p6, "totalTimeDuration"    # J

    .line 1186
    return-void
.end method

.method public showVolumeDialog(FI)V
    .locals 0
    .param p1, "deltaY"    # F
    .param p2, "volumePercent"    # I

    .line 1194
    return-void
.end method

.method public showWifiDialog()V
    .locals 0

    .line 1181
    return-void
.end method

.method public startProgressTimer()V
    .locals 7

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startProgressTimer:  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 948
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    .line 949
    new-instance v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mProgressTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    .line 950
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 951
    return-void
.end method

.method public startVideo()V
    .locals 4

    .line 677
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->completeAll()V

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->initTextureView()V

    .line 680
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->addTextureView()V

    .line 681
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 682
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 683
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 685
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->setDataSource([Ljava/lang/Object;)V

    .line 686
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->setCurrentDataSource(Ljava/lang/Object;)V

    .line 687
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->positionInList:I

    iput v2, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->positionInList:I

    .line 688
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePreparing()V

    .line 689
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->setFirstFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    .line 690
    return-void
.end method

.method public startWindowFullscreen()V
    .locals 9

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWindowFullscreen  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 1047
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 1049
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 1050
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1051
    .local v0, "vp":Landroid/view/ViewGroup;
    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1052
    .local v2, "old":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1053
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1055
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v4, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1057
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1058
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 1059
    .local v4, "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    invoke-virtual {v4, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setId(I)V

    .line 1060
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1062
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    const/16 v5, 0x1006

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setSystemUiVisibility(I)V

    .line 1065
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 1066
    iget v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setState(I)V

    .line 1067
    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->addTextureView()V

    .line 1068
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->setSecondFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    .line 1071
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 1072
    iget-object v5, v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1073
    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    .line 1074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    .end local v4    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    goto :goto_0

    .line 1075
    :catch_0
    move-exception v1

    .line 1076
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1078
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startWindowTiny()V
    .locals 9

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWindowTiny  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 1083
    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 1085
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    .line 1086
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1087
    .local v0, "vp":Landroid/view/ViewGroup;
    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1088
    .local v2, "old":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1089
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1091
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setVisibility(I)V

    .line 1092
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v4, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1095
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1096
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 1097
    .local v4, "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    invoke-virtual {v4, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setId(I)V

    .line 1098
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x44200000    # 640.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x43b40000    # 360.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1099
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x55

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1100
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1101
    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 1103
    iget v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setState(I)V

    .line 1104
    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->addTextureView()V

    .line 1105
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->setSecondFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    .line 1106
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 1107
    iget-object v5, v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1108
    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    .end local v4    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    goto :goto_0

    .line 1111
    :catch_0
    move-exception v1

    .line 1112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1109
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1110
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 1113
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :goto_0
    nop

    .line 1114
    :goto_1
    return-void

    .line 1084
    .end local v0    # "vp":Landroid/view/ViewGroup;
    .end local v2    # "old":Landroid/view/View;
    :cond_2
    :goto_2
    return-void
.end method
