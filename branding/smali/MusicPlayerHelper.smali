.class public final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistToggleListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;
    }
.end annotation


# static fields
.field static final BUTTON_ID:I = 0x7f090226

.field private static final ID_ADD_TRACK:I = 0x7f090280

.field private static final ID_LEVEL:I = 0x7f09022a

.field private static final ID_MINIMIZE:I = 0x7f090281

.field private static final ID_PANEL:I = 0x7f09027d

.field private static final ID_PLAYLIST_BTN:I = 0x7f09027c

.field private static final ID_PLAYLIST_ITEM_DOWN:I = 0x7f090287

.field private static final ID_PLAYLIST_ITEM_TITLE:I = 0x7f090284

.field private static final ID_PLAYLIST_ITEM_UP:I = 0x7f090286

.field private static final ID_PLAYLIST_LIST:I = 0x7f09027f

.field private static final ID_PLAYLIST_PANEL:I = 0x7f09027e

.field private static final ID_PLAY_PAUSE:I = 0x7f09027b

.field private static final ID_SEEK:I = 0x7f09027a

.field private static final ID_SENSITIVITY:I = 0x7f090228

.field private static final ID_STATUS:I = 0x7f090229

.field private static final ID_TIME:I = 0x7f090283

.field private static final ID_TRACK_TITLE:I = 0x7f090282

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007c

.field private static final OVERLAY_PANEL_WIDTH_DP:I = 0x104

.field private static final OVERLAY_ROW_WIDTH_DP:I = 0xf0

.field private static final OVERLAY_SIDE_BTN_DP:I = 0x2c

.field private static final OVERLAY_SIDE_GAP_DP:I = 0x4

.field private static final OVERLAY_SIZE_DP:I = 0xc0

.field private static final OVERLAY_TAP_SLOP_DP:F = 10.0f

.field static final PICK_AUDIO:I = 0x4255

.field static final PLAYLIST_ITEM_LAYOUT_ID:I = 0x7f0b007d

.field private static final PROGRESS_TICK_MS:J = 0xc8L

.field private static final SEEK_MAX:I = 0x3e8

.field private static controlPanel:Landroid/view/View;

.field private static currentIndex:I

.field private static final handler:Landroid/os/Handler;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static levelView:Landroid/widget/TextView;

.field private static minimizeBtn:Landroid/widget/TextView;

.field private static minimized:Z

.field private static overlayContent:Landroid/view/View;

.field private static overlayDialog:Landroid/support/v7/app/AlertDialog;

.field private static overlayDownRawX:F

.field private static overlayDownRawY:F

.field private static overlayMoved:Z

.field private static overlayTouchDx:F

.field private static overlayTouchDy:F

.field private static overlayVisible:Z

.field private static pickingFile:Z

.field private static playPauseBtn:Landroid/widget/TextView;

.field private static final playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static playlistList:Landroid/widget/LinearLayout;

.field private static playlistPanel:Landroid/view/View;

.field private static playlistVisible:Z

.field private static final progressRunnable:Ljava/lang/Runnable;

.field private static seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

.field private static sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;

.field private static timeView:Landroid/widget/TextView;

.field private static trackTitleView:Landroid/widget/TextView;

.field private static userSeeking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    .line 81
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return v0
.end method

.method static synthetic access$1000(II)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V

    return-void
.end method

.method static synthetic access$102(I)I
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return p0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    return p0
.end method

.method static synthetic access$1200(II)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    return-void
.end method

.method static synthetic access$1300()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    return-void
.end method

.method static synthetic access$1400()Landroid/os/Handler;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1600()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$1602(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$1700()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$1702(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$1800()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$1802(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$1900()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$1902(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$2100(Landroid/app/Activity;I)I
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(II)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$2302(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$2400()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    return-void
.end method

.method static synthetic access$300(Z)Z
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z

    return p0
.end method

.method static synthetic access$500()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyMinimizedState()V

    return-void
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistVisible:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistVisible:Z

    return p0
.end method

.method static synthetic access$700()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyPlaylistVisibility()V

    return-void
.end method

.method static synthetic access$800()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    return-void
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method private static addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5

    .line 564
    if-eqz p1, :cond_2b

    if-nez p0, :cond_5

    goto :goto_2b

    .line 567
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->resolve(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 568
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    invoke-direct {v2, p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    sget p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez p1, :cond_21

    .line 570
    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 572
    :cond_21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 573
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 574
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 575
    return-void

    .line 565
    :cond_2b
    :goto_2b
    return-void
.end method

.method public static advanceToNextTrack()Z
    .registers 3

    .line 173
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_e

    .line 174
    return v2

    .line 176
    :cond_e
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 177
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    return v0
.end method

.method private static applyMinimizedState()V
    .registers 4

    .line 419
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_12

    .line 420
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z

    if-eqz v3, :cond_e

    const/16 v3, 0x8

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimizeBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 423
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z

    if-eqz v3, :cond_1e

    const v3, 0x7f0d016c

    goto :goto_21

    :cond_1e
    const v3, 0x7f0d016b

    :goto_21
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 425
    :cond_24
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    if-eqz v0, :cond_31

    sget-boolean v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z

    if-eqz v3, :cond_31

    .line 426
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistVisible:Z

    .line 429
    :cond_31
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z

    if-eqz v1, :cond_3c

    .line 430
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    :cond_3c
    return-void
.end method

.method private static applyPlaylistVisibility()V
    .registers 2

    .line 435
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 436
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistVisible:Z

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_10

    :cond_e
    const/16 v1, 0x8

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_13
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .line 101
    if-eqz p0, :cond_27

    if-nez p1, :cond_5

    goto :goto_27

    .line 104
    :cond_5
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    if-nez v0, :cond_f

    .line 106
    return-void

    .line 108
    :cond_f
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 113
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void

    .line 102
    :cond_27
    :goto_27
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 621
    if-nez p0, :cond_3

    .line 622
    return-void

    .line 624
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 625
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 626
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    return-void
.end method

.method private static clearOverlayRefs()V
    .registers 1

    .line 645
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 646
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 647
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 648
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 649
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 650
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 651
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 652
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 653
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 654
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 655
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 656
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimizeBtn:Landroid/widget/TextView;

    .line 657
    return-void
.end method

.method private static configureSeekBar()V
    .registers 2

    .line 393
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-nez v0, :cond_5

    .line 394
    return-void

    .line 397
    :cond_5
    const/16 v1, 0x3e8

    :try_start_7
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setMaxProcess(I)V

    .line 398
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 399
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    .line 401
    goto :goto_1c

    .line 400
    :catchall_1b
    move-exception v0

    .line 402
    :goto_1c
    return-void
.end method

.method private static configureSensitivity()V
    .registers 2

    .line 405
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    if-nez v0, :cond_5

    .line 406
    return-void

    .line 409
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 410
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 411
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 412
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    .line 415
    goto :goto_26

    .line 414
    :catchall_25
    move-exception v0

    .line 416
    :goto_26
    return-void
.end method

.method private static dismissOverlay(Z)V
    .registers 2

    .line 630
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 631
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_14

    .line 633
    :try_start_7
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 635
    goto :goto_c

    .line 634
    :catchall_b
    move-exception v0

    .line 636
    :goto_c
    if-nez p0, :cond_14

    .line 637
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 638
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 641
    :cond_14
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 642
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 690
    if-nez p0, :cond_3

    .line 691
    return p1

    .line 693
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 694
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static formatTime(I)Ljava/lang/String;
    .registers 4

    .line 516
    if-gez p0, :cond_3

    .line 517
    const/4 p0, 0x0

    .line 519
    :cond_3
    div-int/lit16 p0, p0, 0x3e8

    .line 520
    div-int/lit8 v0, p0, 0x3c

    .line 521
    rem-int/lit8 p0, p0, 0x3c

    .line 522
    const/16 v1, 0xa

    if-ge p0, v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_23

    :cond_1f
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 523
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 3

    .line 610
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    .line 612
    if-eqz p1, :cond_f

    .line 613
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 617
    :cond_f
    goto :goto_16

    .line 615
    :catchall_10
    move-exception p0

    .line 616
    const-string p1, "player_uri_persist"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    :goto_16
    return-void
.end method

.method private static isOverlayShowing()Z
    .registers 1

    .line 166
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_10

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 167
    :catchall_10
    move-exception v0

    .line 168
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return v0
.end method

.method private static loadPlaylist(Landroid/app/Activity;)V
    .registers 2

    .line 285
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 287
    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_25

    .line 288
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, -0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 290
    :cond_25
    return-void
.end method

.method private static moveOverlayWindow(II)V
    .registers 3

    .line 660
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_23

    .line 663
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 664
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 665
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 666
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 667
    return-void

    .line 661
    :cond_23
    :goto_23
    return-void
.end method

.method private static movePlaylistItem(II)V
    .registers 4

    .line 578
    if-eq p0, p1, :cond_4e

    if-ltz p0, :cond_4e

    if-ltz p1, :cond_4e

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_4e

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_17

    goto :goto_4e

    .line 581
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 582
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 583
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v0, p0, :cond_2b

    .line 584
    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_3e

    .line 585
    :cond_2b
    if-ge p0, v0, :cond_34

    if-lt p1, v0, :cond_34

    .line 586
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_3e

    .line 587
    :cond_34
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-le p0, v0, :cond_3e

    if-gt p1, v0, :cond_3e

    .line 588
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 590
    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 591
    if-eqz p0, :cond_4d

    .line 592
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 593
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 595
    :cond_4d
    return-void

    .line 579
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 138
    const/16 v1, 0x4255

    if-ne p0, v1, :cond_4c

    const/4 p0, -0x1

    if-ne p1, p0, :cond_4c

    if-nez p2, :cond_d

    goto :goto_4c

    .line 141
    :cond_d
    const/4 p0, 0x0

    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 142
    if-nez p0, :cond_17

    .line 143
    return-void

    .line 145
    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 146
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_3e

    .line 147
    nop

    :goto_24
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_3a

    .line 150
    invoke-static {p0, p2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 151
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrack(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 147
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 154
    :cond_3d
    return-void

    .line 156
    :cond_3e
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 157
    if-nez p1, :cond_45

    .line 158
    return-void

    .line 160
    :cond_45
    invoke-static {p0, p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 161
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrack(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 162
    return-void

    .line 139
    :cond_4c
    :goto_4c
    return-void
.end method

.method private static persistPlaylist(Landroid/app/Activity;)V
    .registers 2

    .line 293
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 294
    return-void
.end method

.method private static readSensitivity()I
    .registers 2

    .line 598
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    if-nez v0, :cond_7

    .line 599
    return v1

    .line 602
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return v0

    .line 603
    :catchall_c
    move-exception v0

    .line 604
    return v1
.end method

.method private static rebuildPlaylistViews(Landroid/app/Activity;)V
    .registers 9

    .line 441
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_96

    if-nez p0, :cond_8

    goto/16 :goto_96

    .line 444
    :cond_8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 445
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 446
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_95

    .line 447
    nop

    .line 448
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 451
    const v3, 0x7f0b007d

    :try_start_25
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_8f

    .line 454
    nop

    .line 455
    const v4, 0x7f090284

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 456
    const v5, 0x7f090286

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 457
    const v6, 0x7f090287

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 458
    if-eqz v4, :cond_5c

    .line 459
    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v1, v2, :cond_54

    .line 461
    const v2, -0x830400

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    :cond_54
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    :cond_5c
    const/4 v2, 0x4

    if-eqz v5, :cond_70

    .line 466
    if-lez v1, :cond_63

    const/4 v4, 0x0

    goto :goto_64

    :cond_63
    const/4 v4, 0x4

    :goto_64
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 467
    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;

    const/4 v7, -0x1

    invoke-direct {v4, v1, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;-><init>(II)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    :cond_70
    if-eqz v6, :cond_89

    .line 470
    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7d

    const/4 v2, 0x0

    :cond_7d
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 471
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistMoveListener;-><init>(II)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    :cond_89
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_91

    .line 452
    :catchall_8f
    move-exception v2

    .line 453
    nop

    .line 446
    :goto_91
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    .line 475
    :cond_95
    return-void

    .line 442
    :cond_96
    :goto_96
    return-void
.end method

.method private static refreshSeekFromPlayer()V
    .registers 7

    .line 489
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v0, :cond_36

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    if-eqz v0, :cond_9

    goto :goto_36

    .line 492
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 493
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v1

    .line 494
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    .line 495
    const/4 v2, 0x0

    if-gtz v0, :cond_1d

    .line 496
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 497
    return-void

    .line 499
    :cond_1d
    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    .line 500
    const/16 v1, 0x3e8

    if-gez v0, :cond_2a

    .line 501
    goto :goto_30

    .line 502
    :cond_2a
    if-le v0, v1, :cond_2f

    .line 503
    const/16 v2, 0x3e8

    goto :goto_30

    .line 502
    :cond_2f
    move v2, v0

    .line 505
    :goto_30
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 506
    return-void

    .line 490
    :cond_36
    :goto_36
    return-void
.end method

.method private static refreshTrackTitle()V
    .registers 3

    .line 478
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 479
    return-void

    .line 481
    :cond_5
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_24

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    goto :goto_24

    .line 485
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    return-void

    .line 482
    :cond_24
    :goto_24
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 483
    return-void
.end method

.method public static refreshTransportState()V
    .registers 0

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 182
    return-void
.end method

.method private static resizeOverlayWindow()V
    .registers 4

    .line 670
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_45

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_45

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-nez v1, :cond_12

    goto :goto_45

    .line 674
    :cond_12
    const/16 v1, 0x104

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 675
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    .line 676
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 677
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 675
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 678
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 679
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 680
    if-eqz v2, :cond_44

    .line 681
    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 682
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 683
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 684
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 685
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 687
    :cond_44
    return-void

    .line 672
    :cond_45
    :goto_45
    return-void
.end method

.method static resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 242
    if-eqz p0, :cond_3

    .line 243
    return-object p0

    .line 245
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_12

    .line 246
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 247
    if-eqz p0, :cond_12

    .line 248
    return-object p0

    .line 251
    :cond_12
    if-eqz p1, :cond_1f

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 253
    if-eqz p0, :cond_1f

    .line 254
    return-object p0

    .line 257
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 258
    if-eqz p0, :cond_26

    .line 259
    return-object p0

    .line 261
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 238
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 265
    if-nez p0, :cond_4

    .line 266
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 268
    :cond_4
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 269
    return-object v0

    .line 271
    :cond_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object p0

    .line 272
    if-nez p0, :cond_f

    .line 273
    return-object v0

    .line 275
    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 276
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 277
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 278
    return-object v2

    .line 275
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 281
    :cond_28
    return-object v0
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 117
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 118
    if-nez p0, :cond_9

    .line 119
    return-void

    .line 121
    :cond_9
    if-nez p1, :cond_12

    .line 122
    const p1, 0x7f0d011a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 123
    return-void

    .line 125
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 126
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 127
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 128
    return-void

    .line 130
    :cond_1f
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->loadPlaylist(Landroid/app/Activity;)V

    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showOverlay(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 132
    const p1, 0x7f0d0113

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 134
    :cond_2e
    return-void
.end method

.method public static showActive(II)V
    .registers 5

    .line 206
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 207
    const/4 p0, 0x0

    .line 209
    :cond_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_8

    .line 210
    const/4 p1, 0x1

    .line 212
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 213
    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v1, :cond_3d

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "% / "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    sget-boolean p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z

    if-eqz p1, :cond_3a

    const/16 v0, 0x8

    :cond_3a
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :cond_3d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 221
    return-void
.end method

.method public static showError(I)V
    .registers 3

    .line 224
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 225
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 227
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 228
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    :cond_10
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_1c

    .line 232
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 234
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 235
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 185
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 186
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 189
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 192
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 193
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 194
    return-void
.end method

.method private static showOverlay(Landroid/app/Activity;)Z
    .registers 10

    .line 297
    const/4 v0, 0x0

    if-eqz p0, :cond_19a

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_19a

    .line 300
    :cond_b
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 303
    :try_start_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_193

    .line 307
    nop

    .line 308
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 309
    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 310
    const v2, 0x7f09027b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 311
    const v2, 0x7f09027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 312
    const v2, 0x7f09027e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 313
    const v2, 0x7f09027f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 314
    const v2, 0x7f090282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 315
    const v2, 0x7f090283

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 316
    const v2, 0x7f090229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 317
    const v2, 0x7f09022a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 318
    const v2, 0x7f090228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 319
    const v2, 0x7f090281

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimizeBtn:Landroid/widget/TextView;

    .line 321
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSensitivity()V

    .line 322
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSeekBar()V

    .line 323
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 324
    const v2, 0x7f09027c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistToggleListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistToggleListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 325
    const v2, 0x7f090280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 326
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimizeBtn:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyMinimizedState()V

    .line 329
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyPlaylistVisibility()V

    .line 330
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 333
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 335
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 336
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 337
    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 339
    const/16 v4, 0xc0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 340
    const/16 v5, 0x104

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 341
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 343
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    :try_start_108
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v7, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 350
    new-instance v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;

    invoke-direct {v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;-><init>()V

    invoke-virtual {v7, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 352
    invoke-virtual {v6, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 353
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 354
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 356
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 357
    if-nez v6, :cond_134

    .line 358
    return v0

    .line 360
    :cond_134
    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 361
    const v7, 0x800033

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 362
    const/high16 v7, 0x40000000    # 2.0f

    .line 363
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 364
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 362
    invoke-virtual {v1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 365
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 366
    if-ge v1, v4, :cond_154

    .line 367
    goto :goto_155

    .line 366
    :cond_154
    move v4, v1

    .line 369
    :goto_155
    invoke-virtual {v6, v5, v4}, Landroid/view/Window;->setLayout(II)V

    .line 370
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 371
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 372
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 373
    const/16 v4, 0x14

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 374
    const/16 v4, 0x12c

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 375
    const/4 p0, 0x0

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 376
    iget p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x20

    and-int/lit8 p0, p0, -0x3

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 380
    const/4 p0, 0x2

    invoke-virtual {v6, p0}, Landroid/view/Window;->clearFlags(I)V

    .line 381
    invoke-virtual {v6, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 382
    sput-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    :try_end_186
    .catchall {:try_start_108 .. :try_end_186} :catchall_187

    .line 383
    return v2

    .line 384
    :catchall_187
    move-exception p0

    .line 385
    const-string v1, "music_player_overlay_show"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 387
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 388
    return v0

    .line 304
    :catchall_193
    move-exception p0

    .line 305
    const-string v1, "music_player_overlay_inflate"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    return v0

    .line 298
    :cond_19a
    :goto_19a
    return v0
.end method

.method public static showPreparing()V
    .registers 2

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 198
    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 201
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_13
    return-void
.end method

.method private static startCurrentTrack(Z)Z
    .registers 4

    .line 544
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_3c

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_e

    goto :goto_3c

    .line 550
    :cond_e
    const/4 p0, 0x0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 551
    if-nez p0, :cond_1e

    .line 552
    const p0, 0x7f0d010b

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 553
    return v1

    .line 555
    :cond_1e
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    .line 556
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 557
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 558
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 559
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startPlayer(Landroid/app/Activity;Landroid/net/Uri;I)V

    .line 560
    const/4 p0, 0x1

    return p0

    .line 545
    :cond_3c
    :goto_3c
    if-eqz p0, :cond_44

    .line 546
    const p0, 0x7f0d0112

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 548
    :cond_44
    return v1
.end method

.method private static startProgressUpdates()V
    .registers 2

    .line 535
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    return-void
.end method

.method private static stopProgressUpdates()V
    .registers 2

    .line 540
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 698
    if-nez p0, :cond_3

    .line 699
    return-void

    .line 702
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 704
    goto :goto_d

    .line 703
    :catchall_c
    move-exception p0

    .line 705
    :goto_d
    return-void
.end method

.method private static updatePlayPauseLabel()V
    .registers 2

    .line 527
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 528
    return-void

    .line 530
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 531
    :goto_1a
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    const-string v0, "\u23f8"

    goto :goto_23

    :cond_21
    const-string v0, "\u25b6"

    :goto_23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    return-void
.end method

.method private static updateTimeLabel(II)V
    .registers 4

    .line 509
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 510
    return-void

    .line 512
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->formatTime(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->formatTime(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    return-void
.end method
