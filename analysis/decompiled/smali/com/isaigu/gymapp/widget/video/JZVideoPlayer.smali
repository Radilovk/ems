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
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    sput-boolean v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->ACTION_BAR_EXIST:Z

    .line 68
    sput-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->TOOL_BAR_EXIST:Z

    .line 69
    const/4 v0, 0x4

    sput v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->FULLSCREEN_ORIENTATION:I

    .line 70
    sput v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I

    .line 71
    sput-boolean v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->SAVE_PROGRESS:Z

    .line 72
    sput-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    .line 73
    sput v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->VIDEO_IMAGE_DISPLAY_TYPE:I

    .line 74
    sput-wide v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 75
    sput-wide v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->lastAutoFullscreenTime:J

    .line 76
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    iput v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 104
    iput v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    .line 113
    iput v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->widthRatio:I

    .line 114
    iput v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->heightRatio:I

    .line 116
    iput v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 117
    iput v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->positionInList:I

    .line 118
    iput v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->videoRotation:I

    .line 133
    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->tmp_test_back:Z

    .line 135
    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->enlarge:Z

    .line 139
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->init(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    iput v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 104
    iput v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    .line 113
    iput v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->widthRatio:I

    .line 114
    iput v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->heightRatio:I

    .line 116
    iput v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 117
    iput v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->positionInList:I

    .line 118
    iput v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->videoRotation:I

    .line 133
    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->tmp_test_back:Z

    .line 135
    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->enlarge:Z

    .line 144
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->init(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method public static backPress()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    const-string v1, "JiaoZiVideoPlayer"

    const-string v4, "backPress"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    move v1, v2

    .line 219
    :goto_0
    return v1

    .line 197
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    .line 201
    .local v0, "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    iget v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v1, v8, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 204
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setVisibility(I)V

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->playOnThisJzvd()V

    .end local v0    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    :goto_2
    move v1, v3

    .line 210
    goto :goto_0

    .line 201
    .restart local v0    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    :cond_1
    const/16 v1, 0xa

    goto :goto_1

    .line 207
    .end local v0    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setVisibility(I)V

    .line 208
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->quitFullscreenOrTinyWindow()V

    goto :goto_2

    .line 211
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-eq v1, v8, :cond_4

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    .line 214
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setVisibility(I)V

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->quitFullscreenOrTinyWindow()V

    move v1, v3

    .line 217
    goto :goto_0

    :cond_5
    move v1, v2

    .line 219
    goto :goto_0
.end method

.method public static clearSavedProgress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->clearSavedProgress(Landroid/content/Context;Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public static goOnPlayOnPause()V
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 278
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    .line 279
    .local v0, "jzvd":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    iget v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePause()V

    .line 285
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->pause()V

    goto :goto_0
.end method

.method public static goOnPlayOnResume()V
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

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
    :cond_0
    return-void
.end method

.method public static hideSupportActionBar(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    const/16 v2, 0x400

    .line 245
    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->ACTION_BAR_EXIST:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

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
    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->TOOL_BAR_EXIST:Z

    if-eqz v1, :cond_1

    .line 253
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 256
    :cond_1
    return-void
.end method

.method public static onChildViewAttachedToWindow(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "jzvdId"    # I

    .prologue
    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

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

    .prologue
    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 340
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    .line 341
    .local v0, "videoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 342
    iget v1, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 343
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowTiny()V

    goto :goto_0
.end method

.method public static onScrollAutoTiny(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x3

    .line 291
    add-int v1, p1, p2

    .line 292
    .local v1, "lastVisibleItem":I
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v2

    iget v0, v2, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->positionInList:I

    .line 293
    .local v0, "currentPlayPosition":I
    if-ltz v0, :cond_1

    .line 294
    if-lt v0, p1, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-le v0, v2, :cond_3

    .line 295
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-eq v2, v3, :cond_1

    .line 297
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    .line 313
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    const-string v2, "JiaoZiVideoPlayer"

    const-string v3, "onScroll: out screen"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowTiny()V

    goto :goto_0

    .line 306
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 307
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v2, v3, :cond_1

    .line 308
    const-string v2, "JiaoZiVideoPlayer"

    const-string v3, "onScroll: into screen"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->backPress()Z

    goto :goto_0
.end method

.method public static onScrollReleaseAllVideos(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 316
    add-int v1, p1, p2

    .line 317
    .local v1, "lastVisibleItem":I
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v2

    iget v0, v2, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->positionInList:I

    .line 318
    .local v0, "currentPlayPosition":I
    const-string v2, "JiaoZiVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScrollReleaseAllVideos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-ltz v0, :cond_1

    .line 321
    if-lt v0, p1, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-le v0, v2, :cond_1

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

    .prologue
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
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

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

    .prologue
    .line 263
    sput-object p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->JZ_USER_EVENT:Lcom/isaigu/gymapp/widget/video/JZUserAction;

    .line 264
    return-void
.end method

.method public static setMediaInterface(Lcom/isaigu/gymapp/widget/video/JZMediaInterface;)V
    .locals 1
    .param p0, "mediaInterface"    # Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    .prologue
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

    .prologue
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

    .prologue
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
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    .line 231
    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->ACTION_BAR_EXIST:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

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
    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->TOOL_BAR_EXIST:Z

    if-eqz v1, :cond_1

    .line 239
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 241
    :cond_1
    return-void
.end method

.method public static varargs startFullscreen(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_class"    # Ljava/lang/Class;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 157
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    .local v1, "map":Ljava/util/LinkedHashMap;
    const-string v2, "URL_KEY_DEFAULT"

    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 160
    .local v0, "dataSourceObjects":[Ljava/lang/Object;
    aput-object v1, v0, v3

    .line 161
    invoke-static {p0, p1, v0, v3, p3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startFullscreen(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public static varargs startFullscreen(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_class"    # Ljava/lang/Class;
    .param p2, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p3, "defaultUrlMapIndex"    # I
    .param p4, "objects"    # [Ljava/lang/Object;

    .prologue
    const v8, 0x7f0f0006

    .line 165
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 166
    sget v6, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 167
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1020002

    .line 168
    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 169
    .local v5, "vp":Landroid/view/ViewGroup;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 170
    .local v4, "old":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 171
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 175
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 176
    .local v2, "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    const v6, 0x7f0f0006

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setId(I)V

    .line 177
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    const/4 v6, 0x2

    invoke-virtual {v2, p2, p3, v6, p4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 184
    iget-object v6, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->performClick()Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    .end local v2    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addTextureView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 884
    const-string v1, "JiaoZiVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTextureView ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

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

    .prologue
    const/4 v2, 0x3

    .line 1141
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-eq v0, v2, :cond_0

    .line 1145
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1146
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 1150
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowFullscreen()V

    .line 1153
    :cond_0
    return-void

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public autoQuitFullscreen()V
    .locals 4

    .prologue
    .line 1156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->lastAutoFullscreenTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

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

    .prologue
    .line 954
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 955
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mProgressTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mProgressTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;->cancel()Z

    .line 960
    :cond_1
    return-void
.end method

.method public clearFloatScreen()V
    .locals 5

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 916
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showSupportActionBar(Landroid/content/Context;)V

    .line 917
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1020002

    .line 918
    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 919
    .local v2, "vp":Landroid/view/ViewGroup;
    const v3, 0x7f0f0006

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 920
    .local v0, "fullJzvd":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    const v3, 0x7f0f0007

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 922
    .local v1, "tinyJzvd":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 924
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 925
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v4, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 927
    :cond_0
    if-eqz v1, :cond_1

    .line 928
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 929
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 930
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

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
    .locals 5

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1020002

    .line 902
    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 903
    .local v2, "vp":Landroid/view/ViewGroup;
    const v3, 0x7f0f0006

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, "oldF":Landroid/view/View;
    const v3, 0x7f0f0007

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 905
    .local v1, "oldT":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 908
    :cond_0
    if-eqz v1, :cond_1

    .line 909
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

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

    .prologue
    .line 1206
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 0

    .prologue
    .line 1190
    return-void
.end method

.method public dismissVolumeDialog()V
    .locals 0

    .prologue
    .line 1198
    return-void
.end method

.method public getCurrentPositionWhenPlaying()J
    .locals 9

    .prologue
    .line 983
    const-wide/16 v2, 0x0

    .line 987
    .local v2, "position":J
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v8, 0x3

    if-eq v1, v8, :cond_0

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v8, 0x5

    if-ne v1, v8, :cond_1

    .line 990
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentPosition()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_1
    move-wide v4, v2

    .end local v2    # "position":J
    .local v4, "position":J
    move-wide v6, v2

    .line 996
    .end local v4    # "position":J
    .local v6, "position":J
    :goto_0
    return-wide v6

    .line 991
    .end local v6    # "position":J
    .restart local v2    # "position":J
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-wide v4, v2

    .end local v2    # "position":J
    .restart local v4    # "position":J
    move-wide v6, v2

    .line 993
    .end local v4    # "position":J
    .restart local v6    # "position":J
    goto :goto_0
.end method

.method public getCurrentUrl()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 7

    .prologue
    .line 1000
    const-wide/16 v0, 0x0

    .line 1004
    .local v0, "duration":J
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getDuration()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v2, v0

    .end local v0    # "duration":J
    .local v2, "duration":J
    move-wide v4, v0

    .line 1009
    .end local v2    # "duration":J
    .local v4, "duration":J
    :goto_0
    return-wide v4

    .line 1005
    .end local v4    # "duration":J
    .restart local v0    # "duration":J
    :catch_0
    move-exception v6

    .line 1006
    .local v6, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-wide v2, v0

    .end local v0    # "duration":J
    .restart local v2    # "duration":J
    move-wide v4, v0

    .line 1007
    .end local v2    # "duration":J
    .restart local v4    # "duration":J
    goto :goto_0
.end method

.method public abstract getLayoutId()I
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getLayoutId()I

    move-result v1

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 372
    const v1, 0x7f0f004d

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startButton:Landroid/widget/ImageView;

    .line 373
    const v1, 0x7f0f0115

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    .line 374
    const v1, 0x7f0f0112

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    .line 375
    const v1, 0x7f0f0111

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    .line 376
    const v1, 0x7f0f0113

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    .line 377
    const v1, 0x7f0f0110

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    .line 378
    const v1, 0x7f0f010e

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    .line 379
    const v1, 0x7f0f0118

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->topContainer:Landroid/view/ViewGroup;

    .line 381
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 384
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    invoke-virtual {p0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 389
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenWidth:I

    .line 390
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    .line 391
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 394
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getRequestedOrientation()I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initTextureView()V
    .locals 2

    .prologue
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

    .prologue
    .line 1122
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentPlay()Z
    .locals 2

    .prologue
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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoCompletion()V
    .locals 4

    .prologue
    .line 822
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 823
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoCompletion  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    iget v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

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
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 447
    .local v0, "i":I
    const v1, 0x7f0f004d

    if-ne v0, v1, :cond_8

    .line 448
    const-string v1, "JiaoZiVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 530
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-nez v1, :cond_4

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

    if-nez v1, :cond_3

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

    if-nez v1, :cond_3

    .line 456
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v1, :cond_3

    .line 457
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showWifiDialog()V

    goto :goto_0

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startVideo()V

    .line 461
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    goto :goto_0

    .line 462
    :cond_4
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-ne v1, v4, :cond_5

    .line 463
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 464
    const-string v1, "JiaoZiVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseVideo ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->pause()V

    .line 466
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePause()V

    goto :goto_0

    .line 467
    :cond_5
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 468
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 469
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->start()V

    .line 470
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePlaying()V

    goto/16 :goto_0

    .line 471
    :cond_6
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-ne v1, v7, :cond_1

    .line 472
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 473
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-eq v1, v6, :cond_7

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v1, v4, :cond_7

    .line 476
    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startVideo()V

    goto/16 :goto_0

    .line 478
    :cond_8
    const v1, 0x7f0f0115

    if-ne v0, v1, :cond_1

    .line 479
    const-string v1, "JiaoZiVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick fullscreen ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-eq v1, v7, :cond_1

    .line 490
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-nez v1, :cond_9

    .line 491
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowTiny()V

    goto/16 :goto_0

    .line 493
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->backPress()Z

    goto/16 :goto_0
.end method

.method public onCompletion()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 838
    const-string v1, "JiaoZiVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletion  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 844
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 845
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 846
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v1

    iput v4, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoWidth:I

    .line 847
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v1

    iput v4, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoHeight:I

    .line 849
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    if-eqz v1, :cond_1

    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 856
    :cond_1
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_2

    .line 857
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 858
    :cond_2
    sput-object v5, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    .line 859
    sput-object v5, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 860
    return-void
.end method

.method public onError(II)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const/16 v4, 0x26

    const/16 v3, -0x26

    .line 792
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    if-eq p1, v4, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p2, v4, :cond_0

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

    .prologue
    .line 1166
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->JZ_USER_EVENT:Lcom/isaigu/gymapp/widget/video/JZUserAction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1167
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->JZ_USER_EVENT:Lcom/isaigu/gymapp/widget/video/JZUserAction;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUserAction;->onEvent(ILjava/lang/Object;I[Ljava/lang/Object;)V

    .line 1169
    :cond_0
    return-void
.end method

.method public onInfo(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 788
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo what - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 803
    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 804
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 819
    :goto_0
    return-void

    .line 807
    :cond_1
    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->widthRatio:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->heightRatio:I

    if-eqz v4, :cond_2

    .line 808
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 809
    .local v3, "specWidth":I
    int-to-float v4, v3

    iget v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->heightRatio:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->widthRatio:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 810
    .local v2, "specHeight":I
    invoke-virtual {p0, v3, v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setMeasuredDimension(II)V

    .line 812
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 813
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 814
    .local v0, "childHeightMeasureSpec":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 816
    .end local v0    # "childHeightMeasureSpec":I
    .end local v1    # "childWidthMeasureSpec":I
    .end local v2    # "specHeight":I
    .end local v3    # "specWidth":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onPrepared()V
    .locals 3

    .prologue
    .line 693
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .prologue
    .line 1042
    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    .prologue
    .line 1178
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1014
    const-string v1, "JiaoZiVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bottomProgress onStartTrackingTouch ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 3

    .prologue
    .line 780
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateAutoComplete  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 3

    .prologue
    .line 774
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateError  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v0, 0x7

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 776
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 777
    return-void
.end method

.method public onStateNormal()V
    .locals 3

    .prologue
    .line 729
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateNormal  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 731
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 732
    return-void
.end method

.method public onStatePause()V
    .locals 3

    .prologue
    .line 768
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatePause  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v0, 0x5

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 770
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    .line 771
    return-void
.end method

.method public onStatePlaying()V
    .locals 3

    .prologue
    .line 762
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatePlaying  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    .line 764
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    .line 765
    return-void
.end method

.method public onStatePrepared()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 750
    iget-wide v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 751
    iget-wide v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->seekTo(J)V

    .line 752
    iput-wide v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->seekToInAdvance:J

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getSavedProgress(Landroid/content/Context;Ljava/lang/Object;)J

    move-result-wide v0

    .line 755
    .local v0, "position":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public onStatePreparing()V
    .locals 3

    .prologue
    .line 735
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatePreparing  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .prologue
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

    .prologue
    const/4 v6, 0x5

    .line 1025
    const-string v3, "JiaoZiVideoPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bottomProgress onStopTrackingTouch ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 1027
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    .line 1028
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1029
    .local v2, "vpup":Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_0

    .line 1030
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1031
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 1033
    :cond_0
    iget v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-eq v3, v6, :cond_1

    .line 1038
    :goto_1
    return-void

    .line 1035
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getDuration()J

    move-result-wide v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long v0, v4, v6

    .line 1036
    .local v0, "time":J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->seekTo(J)V

    .line 1037
    const-string v3, "JiaoZiVideoPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seekTo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 36
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    .line 535
    .local v30, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    .line 536
    .local v31, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v21

    .line 537
    .local v21, "id":I
    const v4, 0x7f0f010e

    move/from16 v0, v21

    if-ne v0, v4, :cond_0

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 673
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 541
    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mTouchingProgressBar:Z

    .line 543
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownX:F

    .line 544
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownY:F

    .line 545
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    .line 546
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    .line 547
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeBrightness:Z

    goto :goto_0

    .line 551
    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownX:F

    sub-float v5, v30, v4

    .line 552
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownY:F

    sub-float v16, v31, v4

    .line 553
    .local v16, "deltaY":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 554
    .local v12, "absDeltaX":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 555
    .local v13, "absDeltaY":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_5

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v29, v0

    .line 557
    .local v29, "width":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x43b40000    # 360.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    sub-int v20, v4, v7

    .line 558
    .local v20, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getX()F

    move-result v24

    .line 559
    .local v24, "ox":F
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getY()F

    move-result v25

    .line 560
    .local v25, "oy":F
    add-float v4, v24, v5

    float-to-int v4, v4

    int-to-float v0, v4

    move/from16 v24, v0

    .line 561
    add-float v4, v25, v16

    float-to-int v4, v4

    int-to-float v0, v4

    move/from16 v25, v0

    .line 562
    const/4 v4, 0x0

    cmpg-float v4, v24, v4

    if-gez v4, :cond_1

    .line 563
    const/16 v24, 0x0

    .line 565
    :cond_1
    move/from16 v0, v29

    int-to-float v4, v0

    cmpl-float v4, v24, v4

    if-lez v4, :cond_2

    .line 566
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v24, v0

    .line 568
    :cond_2
    const/4 v4, 0x0

    cmpg-float v4, v25, v4

    if-gez v4, :cond_3

    .line 569
    const/16 v25, 0x0

    .line 571
    :cond_3
    move/from16 v0, v20

    int-to-float v4, v0

    cmpl-float v4, v25, v4

    if-lez v4, :cond_4

    .line 572
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    .line 577
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setX(F)V

    .line 578
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setY(F)V

    .line 580
    .end local v20    # "height":I
    .end local v24    # "ox":F
    .end local v25    # "oy":F
    .end local v29    # "width":I
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    .line 581
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeBrightness:Z

    if-nez v4, :cond_7

    .line 582
    const/high16 v4, 0x42a00000    # 80.0f

    cmpl-float v4, v12, v4

    if-gtz v4, :cond_6

    const/high16 v4, 0x42a00000    # 80.0f

    cmpl-float v4, v13, v4

    if-lez v4, :cond_7

    .line 583
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 584
    const/high16 v4, 0x42a00000    # 80.0f

    cmpl-float v4, v12, v4

    if-ltz v4, :cond_b

    .line 587
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v7, 0x7

    if-eq v4, v7, :cond_7

    .line 588
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getCurrentPositionWhenPlaying()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownPosition:J

    .line 615
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    if-eqz v4, :cond_9

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getDuration()J

    move-result-wide v10

    .line 617
    .local v10, "totalTimeDuration":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownPosition:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-float v4, v0

    long-to-float v7, v10

    mul-float/2addr v7, v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-long v0, v4

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    .line 618
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    move-wide/from16 v32, v0

    cmp-long v4, v32, v10

    if-lez v4, :cond_8

    .line 619
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    .line 620
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, "seekTime":Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v9

    .line 623
    .local v9, "totalTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V

    .line 625
    .end local v6    # "seekTime":Ljava/lang/String;
    .end local v9    # "totalTime":Ljava/lang/String;
    .end local v10    # "totalTimeDuration":J
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    if-eqz v4, :cond_a

    .line 626
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    .line 627
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v23

    .line 628
    .local v23, "max":I
    move/from16 v0, v23

    int-to-float v4, v0

    mul-float v4, v4, v16

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    float-to-int v15, v4

    .line 629
    .local v15, "deltaV":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownVolume:I

    add-int/2addr v8, v15

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v4, v7, v8, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 631
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownVolume:I

    mul-int/lit8 v4, v4, 0x64

    div-int v4, v4, v23

    int-to-float v4, v4

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v7, v7, v16

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    float-to-int v0, v4

    move/from16 v28, v0

    .line 632
    .local v28, "volumePercent":I
    move/from16 v0, v16

    neg-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showVolumeDialog(FI)V

    .line 635
    .end local v15    # "deltaV":I
    .end local v23    # "max":I
    .end local v28    # "volumePercent":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeBrightness:Z

    if-eqz v4, :cond_0

    .line 636
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    .line 637
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v16

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    float-to-int v15, v4

    .line 638
    .restart local v15    # "deltaV":I
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    .line 639
    .local v26, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    int-to-float v7, v15

    add-float/2addr v4, v7

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_e

    .line 640
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 646
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 648
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v4, v7

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v7, v7, v16

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    float-to-int v14, v4

    .line 649
    .local v14, "brightnessPercent":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->showBrightnessDialog(I)V

    goto/16 :goto_0

    .line 593
    .end local v14    # "brightnessPercent":I
    .end local v15    # "deltaV":I
    .end local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mDownX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mScreenWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    cmpg-float v4, v4, v7

    if-gez v4, :cond_d

    .line 594
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeBrightness:Z

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    .line 596
    .local v22, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v22

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_c

    .line 598
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_brightness"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    .line 599
    const-string v4, "JiaoZiVideoPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current system brightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 600
    :catch_0
    move-exception v17

    .line 601
    .local v17, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual/range {v17 .. v17}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 604
    .end local v17    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_c
    move-object/from16 v0, v22

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v4, v7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    .line 605
    const-string v4, "JiaoZiVideoPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current activity brightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 608
    .end local v22    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownVolume:I

    goto/16 :goto_1

    .line 641
    .restart local v15    # "deltaV":I
    .restart local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    int-to-float v7, v15

    add-float/2addr v4, v7

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v4, v7

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_f

    .line 642
    const v4, 0x3c23d70a    # 0.01f

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto/16 :goto_2

    .line 644
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mGestureDownBrightness:F

    int-to-float v7, v15

    add-float/2addr v4, v7

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v4, v7

    move-object/from16 v0, v26

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto/16 :goto_2

    .line 655
    .end local v5    # "deltaX":F
    .end local v12    # "absDeltaX":F
    .end local v13    # "absDeltaY":F
    .end local v15    # "deltaV":I
    .end local v16    # "deltaY":F
    .end local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    :pswitch_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mTouchingProgressBar:Z

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissProgressDialog()V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissVolumeDialog()V

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dismissBrightnessDialog()V

    .line 659
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangePosition:Z

    if-eqz v4, :cond_11

    .line 660
    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 661
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->seekTo(J)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getDuration()J

    move-result-wide v18

    .line 663
    .local v18, "duration":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mSeekTimePosition:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x64

    mul-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v4, v18, v34

    if-nez v4, :cond_10

    const-wide/16 v18, 0x1

    .end local v18    # "duration":J
    :cond_10
    div-long v32, v32, v18

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v27, v0

    .line 664
    .local v27, "progress":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 666
    .end local v27    # "progress":I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mChangeVolume:Z

    if-eqz v4, :cond_12

    .line 667
    const/16 v4, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 669
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    goto/16 :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoSizeChanged()V
    .locals 3

    .prologue
    .line 936
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 3

    .prologue
    .line 1128
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playOnThisJzvd  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .prologue
    const/4 v4, 0x2

    .line 863
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 866
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 867
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-ne v0, v4, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getSecondFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 869
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getFirstFloor()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    if-eq v0, v4, :cond_0

    .line 871
    :cond_2
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaPlayer ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    goto :goto_0
.end method

.method public removeTextureView()V
    .locals 2

    .prologue
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

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 976
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 977
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 978
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1
    .param p1, "bufferProgress"    # I

    .prologue
    .line 972
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 973
    :cond_0
    return-void
.end method

.method public setProgressAndText(IJJ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "position"    # J
    .param p4, "duration"    # J

    .prologue
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

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

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

    .prologue
    const/4 v0, 0x0

    .line 699
    invoke-virtual {p0, p1, v0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setState(III)V

    .line 700
    return-void
.end method

.method public setState(III)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "urlMapIndex"    # I
    .param p3, "seekToInAdvance"    # I

    .prologue
    .line 703
    packed-switch p1, :pswitch_data_0

    .line 726
    :goto_0
    :pswitch_0
    return-void

    .line 705
    :pswitch_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    goto :goto_0

    .line 708
    :pswitch_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePreparing()V

    goto :goto_0

    .line 711
    :pswitch_3
    int-to-long v0, p3

    invoke-virtual {p0, p2, v0, v1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePreparingChangingUrl(IJ)V

    goto :goto_0

    .line 714
    :pswitch_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePlaying()V

    goto :goto_0

    .line 717
    :pswitch_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStatePause()V

    goto :goto_0

    .line 720
    :pswitch_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateError()V

    goto :goto_0

    .line 723
    :pswitch_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateAutoComplete()V

    goto :goto_0

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "screen"    # I
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 403
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 404
    .local v1, "map":Ljava/util/LinkedHashMap;
    const-string v2, "URL_KEY_DEFAULT"

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 406
    .local v0, "dataSourceObjects":[Ljava/lang/Object;
    aput-object v1, v0, v3

    .line 407
    invoke-virtual {p0, v0, v3, p2, p3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method public varargs setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V
    .locals 6
    .param p1, "dataSourceObjects"    # [Ljava/lang/Object;
    .param p2, "defaultUrlMapIndex"    # I
    .param p3, "screen"    # I
    .param p4, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 412
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iget v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getCurrentFromDataSource([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    const-wide/16 v2, 0x0

    .line 418
    .local v2, "position":J
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentPosition()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 422
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4, v2, v3}, Lcom/isaigu/gymapp/widget/video/JZUtils;->saveProgress(Landroid/content/Context;Ljava/lang/Object;J)V

    .line 425
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->releaseMediaPlayer()V

    .line 436
    .end local v2    # "position":J
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    .line 437
    iput p2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    .line 438
    iput p3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    .line 439
    iput-object p4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    .line 440
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    goto :goto_0

    .line 419
    .restart local v2    # "position":J
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 426
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "position":J
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 427
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startWindowTiny()V

    goto :goto_2

    .line 428
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 430
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentScreen:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 432
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->tmp_test_back:Z

    goto :goto_2

    .line 434
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->isCurrentJZVD()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->getCurrentDataSource()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/video/JZUtils;->dataSourceObjectsContainsUri([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2
.end method

.method public showBrightnessDialog(I)V
    .locals 0
    .param p1, "brightnessPercent"    # I

    .prologue
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

    .prologue
    .line 1186
    return-void
.end method

.method public showVolumeDialog(FI)V
    .locals 0
    .param p1, "deltaY"    # F
    .param p2, "volumePercent"    # I

    .prologue
    .line 1194
    return-void
.end method

.method public showWifiDialog()V
    .locals 0

    .prologue
    .line 1181
    return-void
.end method

.method public startProgressTimer()V
    .locals 6

    .prologue
    .line 946
    const-string v0, "JiaoZiVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startProgressTimer:  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->cancelProgressTimer()V

    .line 948
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    .line 949
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mProgressTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    .line 950
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->mProgressTimerTask:Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$ProgressTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 951
    return-void
.end method

.method public startVideo()V
    .locals 4

    .prologue
    .line 677
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->completeAll()V

    .line 678
    const-string v1, "JiaoZiVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVideo ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->initTextureView()V

    .line 680
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->addTextureView()V

    .line 681
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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
    .locals 10

    .prologue
    const v9, 0x7f0f0006

    .line 1045
    const-string v6, "JiaoZiVideoPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startWindowFullscreen  ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 1047
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/video/JZUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 1049
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1020002

    .line 1050
    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1051
    .local v5, "vp":Landroid/view/ViewGroup;
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1052
    .local v4, "old":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1053
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1055
    :cond_0
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v7, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1057
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1058
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 1059
    .local v2, "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    const v6, 0x7f0f0006

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setId(I)V

    .line 1060
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1062
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    const/16 v6, 0x1006

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setSystemUiVisibility(I)V

    .line 1065
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 1066
    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setState(I)V

    .line 1067
    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->addTextureView()V

    .line 1068
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->setSecondFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    .line 1071
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 1072
    iget-object v6, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1073
    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V

    .line 1074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    .end local v2    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 1075
    :catch_0
    move-exception v1

    .line 1076
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startWindowTiny()V
    .locals 10

    .prologue
    const v9, 0x7f0f0007

    .line 1081
    const-string v6, "JiaoZiVideoPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startWindowTiny  ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onEvent(I)V

    .line 1083
    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/video/JZUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1020002

    .line 1086
    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1087
    .local v5, "vp":Landroid/view/ViewGroup;
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1088
    .local v4, "old":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1089
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1091
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setVisibility(I)V

    .line 1092
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v7, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1095
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1096
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    .line 1097
    .local v2, "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    const v6, 0x7f0f0007

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setId(I)V

    .line 1098
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x44200000    # 640.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x43b40000    # 360.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1099
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x55

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1100
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1101
    invoke-virtual {v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->dataSourceObjects:[Ljava/lang/Object;

    iget v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentUrlMapIndex:I

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setUp([Ljava/lang/Object;II[Ljava/lang/Object;)V

    .line 1103
    iget v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->currentState:I

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->setState(I)V

    .line 1104
    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->addTextureView()V

    .line 1105
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->setSecondFloor(Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;)V

    .line 1106
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->onStateNormal()V

    .line 1107
    iget-object v6, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1108
    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->startProgressTimer()V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1109
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;>;"
    .end local v2    # "jzVideoPlayer":Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v1

    .line 1110
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto/16 :goto_0

    .line 1111
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 1112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
