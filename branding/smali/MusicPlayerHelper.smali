.class public final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ControlsToggleListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;
    }
.end annotation


# static fields
.field static final BUTTON_ID:I = 0x7f090226

.field private static final COLOR_BG_CARD:I = 0x7f0600c3

.field private static final COLOR_LIGHT_GREEN:I = 0x7f06006f

.field private static final COLOR_TEXT_PRIMARY:I = 0x7f0600e6

.field private static final COLOR_TEXT_SECONDARY:I = 0x7f0600e7

.field private static final DRAG_LONG_PRESS_MS:J = 0x118L

.field private static final ID_ADD_TRACK:I = 0x7f090280

.field private static final ID_CLOSE:I = 0x7f090288

.field private static final ID_INFO:I = 0x7f090289

.field private static final ID_LEVEL:I = 0x7f09022a

.field private static final ID_LOADING:I = 0x7f09028f

.field private static final ID_PANEL:I = 0x7f09027d

.field private static final ID_PLAYLIST_BTN:I = 0x7f09027c

.field private static final ID_PLAYLIST_ITEM_HANDLE:I = 0x7f090285

.field private static final ID_PLAYLIST_ITEM_TITLE:I = 0x7f090284

.field private static final ID_PLAYLIST_LIST:I = 0x7f09027f

.field private static final ID_PLAYLIST_PANEL:I = 0x7f09027e

.field private static final ID_PLAY_PAUSE:I = 0x7f09027b

.field private static final ID_SEEK:I = 0x7f09027a

.field private static final ID_SENSITIVITY:I = 0x7f090228

.field private static final ID_STATUS:I = 0x7f090229

.field private static final ID_TIME:I = 0x7f090283

.field private static final ID_TRACK_TITLE:I = 0x7f090282

.field private static final ID_VISUALIZER:I = 0x7f09028e

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007c

.field private static final OVERLAY_PANEL_WIDTH_DP:I = 0x104

.field private static final OVERLAY_SIZE_DP:I = 0xc0

.field private static final OVERLAY_TAP_SLOP_DP:F = 10.0f

.field static final PICK_AUDIO:I = 0x4255

.field static final PLAYLIST_ITEM_LAYOUT_ID:I = 0x7f0b007d

.field private static final PLAY_DEBOUNCE_MS:J = 0x1c2L

.field private static final PROGRESS_TICK_MS:J = 0xc8L

.field private static final SEEK_MAX:I = 0x3e8

.field private static final STR_INFO_BODY:I = 0x7f0d0173

.field private static final STR_INFO_TITLE:I = 0x7f0d0172

.field private static activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

.field private static controlPanel:Landroid/view/View;

.field private static controlsExpanded:Z

.field private static currentIndex:I

.field private static dragFromIndex:I

.field private static dragGhostOffsetX:F

.field private static dragGhostOffsetY:F

.field private static dragGhostView:Landroid/view/View;

.field private static dragHighlightIndex:I

.field private static dragRowHeightPx:I

.field private static dragSourceBackground:Landroid/graphics/drawable/Drawable;

.field private static dragSourceRow:Landroid/view/View;

.field private static final handler:Landroid/os/Handler;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastPlayClickMs:J

.field private static levelView:Landroid/widget/TextView;

.field private static overlayContent:Landroid/view/View;

.field private static overlayDialog:Landroid/support/v7/app/AlertDialog;

.field private static overlayDownRawX:F

.field private static overlayDownRawY:F

.field private static overlayMoved:Z

.field private static overlayTouchDx:F

.field private static overlayTouchDy:F

.field private static overlayVisible:Z

.field private static pendingDragStart:Ljava/lang/Runnable;

.field private static pickingFile:Z

.field private static playLoadingView:Landroid/view/View;

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

.field private static playlistScrollView:Landroid/widget/ScrollView;

.field private static final progressRunnable:Ljava/lang/Runnable;

.field private static seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

.field private static sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;

.field private static timeView:Landroid/widget/TextView;

.field private static trackTitleView:Landroid/widget/TextView;

.field private static userSeeking:Z

.field private static visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    .line 93
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 105
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 106
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100()J
    .registers 2

    .line 37
    sget-wide v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    return-wide v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 37
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .registers 1

    .line 37
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method static synthetic access$102(J)J
    .registers 2

    .line 37
    sput-wide p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    return-wide p0
.end method

.method static synthetic access$1100()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 37
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1200()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    return-void
.end method

.method static synthetic access$1302(I)I
    .registers 1

    .line 37
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    return p0
.end method

.method static synthetic access$1400()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    return-void
.end method

.method static synthetic access$1500()Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .line 37
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/lang/Runnable;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    .line 37
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700()Landroid/os/Handler;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(FF)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveDragGhost(FF)V

    return-void
.end method

.method static synthetic access$1900(F)I
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    return-void
.end method

.method static synthetic access$2000(I)V
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateDragHover(I)V

    return-void
.end method

.method static synthetic access$2100(F)V
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoScrollPlaylist(F)V

    return-void
.end method

.method static synthetic access$2200(II)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->finishDragReorder(II)V

    return-void
.end method

.method static synthetic access$2300(Z)V
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    return-void
.end method

.method static synthetic access$2400()Landroid/widget/ScrollView;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;
    .registers 1

    .line 37
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$2500()Landroid/widget/LinearLayout;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findPlaylistRow(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    return-void
.end method

.method static synthetic access$2902(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 37
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300()I
    .registers 1

    .line 37
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return v0
.end method

.method static synthetic access$3002(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 37
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$302(I)I
    .registers 1

    .line 37
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return p0
.end method

.method static synthetic access$3100()I
    .registers 1

    .line 37
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return v0
.end method

.method static synthetic access$3102(I)I
    .registers 1

    .line 37
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return p0
.end method

.method static synthetic access$3200(Landroid/app/Activity;I)I
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Landroid/view/View;FF)V
    .registers 3

    .line 37
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showDragGhost(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$3402(Z)Z
    .registers 1

    .line 37
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    return p0
.end method

.method static synthetic access$3500(II)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    return-void
.end method

.method static synthetic access$3600()Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    return-object v0
.end method

.method static synthetic access$3700()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    return-void
.end method

.method static synthetic access$3800()F
    .registers 1

    .line 37
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$3802(F)F
    .registers 1

    .line 37
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$3900()F
    .registers 1

    .line 37
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$3902(F)F
    .registers 1

    .line 37
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .registers 1

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000()F
    .registers 1

    .line 37
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$4002(F)F
    .registers 1

    .line 37
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$4100()F
    .registers 1

    .line 37
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$4102(F)F
    .registers 1

    .line 37
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$4200()Z
    .registers 1

    .line 37
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$4202(Z)Z
    .registers 1

    .line 37
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$4300(II)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$4402(Z)Z
    .registers 1

    .line 37
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$4500()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    return-void
.end method

.method static synthetic access$500(Z)Z
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 37
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1

    .line 37
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    return p0
.end method

.method static synthetic access$700()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    return-void
.end method

.method static synthetic access$800()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    return-void
.end method

.method static synthetic access$900()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->closePlayer()V

    return-void
.end method

.method private static addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5

    .line 775
    if-eqz p1, :cond_34

    if-nez p0, :cond_5

    goto :goto_34

    .line 778
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->resolve(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 779
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    invoke-direct {v2, p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    sget p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez p1, :cond_21

    .line 781
    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 783
    :cond_21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 784
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 785
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 786
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 787
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 789
    :cond_33
    return-void

    .line 776
    :cond_34
    :goto_34
    return-void
.end method

.method private static addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 2

    .line 767
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 771
    goto :goto_10

    .line 768
    :catchall_4
    move-exception p0

    .line 769
    const-string p1, "player_add_track"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 770
    const p0, 0x7f0d0113

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 772
    :goto_10
    return-void
.end method

.method public static advanceToNextTrack()Z
    .registers 3

    .line 200
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_e

    .line 201
    return v2

    .line 203
    :cond_e
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 204
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    return v0
.end method

.method private static applyExpandedState()V
    .registers 3

    .line 597
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_a

    :cond_8
    const/16 v0, 0x8

    .line 598
    :goto_a
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 599
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 601
    :cond_11
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 602
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 604
    :cond_18
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    sget-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    if-nez v2, :cond_23

    .line 605
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    :cond_23
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .line 125
    if-eqz p0, :cond_27

    if-nez p1, :cond_5

    goto :goto_27

    .line 128
    :cond_5
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    if-nez v0, :cond_f

    .line 130
    return-void

    .line 132
    :cond_f
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 137
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void

    .line 126
    :cond_27
    :goto_27
    return-void
.end method

.method private static autoScrollPlaylist(F)V
    .registers 5

    .line 918
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_5

    .line 919
    return-void

    .line 921
    :cond_5
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_15

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    goto :goto_17

    :cond_15
    const/16 v0, 0x78

    .line 923
    :goto_17
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 924
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 925
    const/4 v2, 0x1

    aget v1, v1, v2

    .line 926
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 927
    add-int/2addr v1, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_38

    .line 928
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v0, -0x10

    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_45

    .line 929
    :cond_38
    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpl-float p0, p0, v0

    if-lez p0, :cond_45

    .line 930
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v0, 0x10

    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 932
    :cond_45
    :goto_45
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1168
    if-nez p0, :cond_3

    .line 1169
    return-void

    .line 1171
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1172
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1173
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    return-void
.end method

.method private static cancelPendingDrag()V
    .registers 3

    .line 1137
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1138
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1139
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    .line 1141
    :cond_c
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1142
    return-void
.end method

.method private static clearDragHighlight()V
    .registers 2

    .line 969
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 970
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 971
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 972
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 973
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 974
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 975
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 976
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 977
    return-void
.end method

.method private static clearOverlayRefs()V
    .registers 1

    .line 1202
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 1203
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 1204
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 1205
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 1206
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 1207
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 1208
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 1209
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 1210
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 1211
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 1212
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1213
    return-void
.end method

.method private static closePlayer()V
    .registers 1

    .line 1177
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStop()V

    .line 1178
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1179
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 1180
    return-void
.end method

.method private static configureSeekBar()V
    .registers 2

    .line 571
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-nez v0, :cond_5

    .line 572
    return-void

    .line 575
    :cond_5
    const/16 v1, 0x3e8

    :try_start_7
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setMaxProcess(I)V

    .line 576
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 577
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    .line 579
    goto :goto_1c

    .line 578
    :catchall_1b
    move-exception v0

    .line 580
    :goto_1c
    return-void
.end method

.method private static configureSensitivity()V
    .registers 2

    .line 583
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    if-nez v0, :cond_5

    .line 584
    return-void

    .line 587
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 588
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 589
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 590
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 591
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    .line 593
    goto :goto_26

    .line 592
    :catchall_25
    move-exception v0

    .line 594
    :goto_26
    return-void
.end method

.method private static dismissOverlay(Z)V
    .registers 2

    .line 1183
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 1184
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    .line 1185
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 1186
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 1188
    :try_start_d
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    .line 1190
    goto :goto_12

    .line 1189
    :catchall_11
    move-exception v0

    .line 1191
    :goto_12
    if-nez p0, :cond_1e

    sget-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez p0, :cond_1e

    .line 1192
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1193
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 1196
    :cond_1e
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez p0, :cond_25

    .line 1197
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1199
    :cond_25
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 1251
    if-nez p0, :cond_3

    .line 1252
    return p1

    .line 1254
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 1255
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 3

    .line 835
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 836
    return-object v0

    .line 838
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_8
    if-eqz p0, :cond_16

    .line 839
    instance-of v1, p0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_11

    .line 840
    check-cast p0, Landroid/widget/ScrollView;

    return-object p0

    .line 838
    :cond_11
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_8

    .line 843
    :cond_16
    return-object v0
.end method

.method private static findPlaylistRow(Landroid/view/View;)Landroid/view/View;
    .registers 5

    .line 995
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 996
    return-object v0

    .line 998
    :cond_4
    move-object v1, p0

    .line 999
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1c

    .line 1000
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1001
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-ne v2, v3, :cond_5

    .line 1002
    return-object v1

    .line 1005
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 1006
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 1008
    :cond_2b
    return-object v0
.end method

.method private static finishDragReorder(II)V
    .registers 4

    .line 950
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 951
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 952
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 953
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 954
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 955
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 956
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 957
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 958
    if-eq p0, p1, :cond_1d

    .line 959
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V

    goto :goto_28

    .line 961
    :cond_1d
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 962
    if-eqz p0, :cond_28

    .line 963
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 966
    :cond_28
    :goto_28
    return-void
.end method

.method private static formatTime(I)Ljava/lang/String;
    .registers 4

    .line 680
    if-gez p0, :cond_3

    .line 681
    const/4 p0, 0x0

    .line 683
    :cond_3
    div-int/lit16 p0, p0, 0x3e8

    .line 684
    div-int/lit8 v0, p0, 0x3c

    .line 685
    rem-int/lit8 p0, p0, 0x3c

    .line 686
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

    .line 687
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

    .line 1157
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    .line 1159
    if-eqz p1, :cond_f

    .line 1160
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 1164
    :cond_f
    goto :goto_16

    .line 1162
    :catchall_10
    move-exception p0

    .line 1163
    const-string p1, "player_uri_persist"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1165
    :goto_16
    return-void
.end method

.method static hasPlaylistTracks()Z
    .registers 1

    .line 239
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .line 330
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 331
    return v1

    .line 334
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 335
    if-nez v0, :cond_d

    .line 336
    return v1

    .line 338
    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 339
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 340
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_2e

    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_32

    if-eqz v3, :cond_2e

    .line 341
    const/4 v0, 0x1

    return v0

    .line 338
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 345
    :cond_31
    goto :goto_33

    .line 344
    :catchall_32
    move-exception v0

    .line 346
    :goto_33
    return v1
.end method

.method static isOverlayOpen()Z
    .registers 1

    .line 235
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    return v0
.end method

.method private static isOverlayShowing()Z
    .registers 1

    .line 193
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

    .line 194
    :catchall_10
    move-exception v0

    .line 195
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return v0
.end method

.method private static isTargetTrainingRunning()Z
    .registers 3

    .line 278
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_14

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    .line 280
    :catchall_15
    move-exception v1

    .line 281
    return v0
.end method

.method private static loadPlaylist(Landroid/app/Activity;)V
    .registers 2

    .line 460
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 462
    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_25

    .line 463
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

    .line 465
    :cond_25
    return-void
.end method

.method private static lockPlaylistScroll(Z)V
    .registers 2

    .line 847
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_7

    .line 848
    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 850
    :cond_7
    return-void
.end method

.method private static moveDragGhost(FF)V
    .registers 5

    .line 1107
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1108
    return-void

    .line 1110
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1111
    if-nez v0, :cond_e

    .line 1112
    return-void

    .line 1114
    :cond_e
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1115
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1116
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1117
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_3b

    .line 1118
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1119
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    sub-float/2addr p0, v2

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr p0, v2

    float-to-int p0, p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1120
    const/4 p0, 0x1

    aget p0, v1, p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1121
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    :cond_3b
    return-void
.end method

.method private static moveOverlayWindow(II)V
    .registers 3

    .line 1216
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_23

    .line 1219
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1220
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1221
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1222
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1223
    return-void

    .line 1217
    :cond_23
    :goto_23
    return-void
.end method

.method private static movePlaylistItem(II)V
    .registers 4

    .line 815
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

    .line 818
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 819
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 820
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v0, p0, :cond_2b

    .line 821
    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_3e

    .line 822
    :cond_2b
    if-ge p0, v0, :cond_34

    if-lt p1, v0, :cond_34

    .line 823
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_3e

    .line 824
    :cond_34
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-le p0, v0, :cond_3e

    if-gt p1, v0, :cond_3e

    .line 825
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 827
    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 828
    if-eqz p0, :cond_4d

    .line 829
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 830
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 832
    :cond_4d
    return-void

    .line 816
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 161
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 162
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    .line 163
    const/16 v1, 0x4255

    if-ne p0, v1, :cond_55

    const/4 p0, -0x1

    if-ne p1, p0, :cond_55

    if-nez p2, :cond_10

    goto :goto_55

    .line 166
    :cond_10
    const/4 p0, 0x0

    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 167
    if-nez p0, :cond_1a

    .line 168
    return-void

    .line 170
    :cond_1a
    const/4 p1, 0x1

    sput-boolean p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 173
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_47

    .line 174
    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_43

    .line 177
    invoke-static {p0, p2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 178
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 174
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 181
    :cond_46
    return-void

    .line 183
    :cond_47
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 184
    if-nez p1, :cond_4e

    .line 185
    return-void

    .line 187
    :cond_4e
    invoke-static {p0, p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 188
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 189
    return-void

    .line 164
    :cond_55
    :goto_55
    return-void
.end method

.method public static onPlaybackEndedNaturally()V
    .registers 0

    .line 273
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 274
    return-void
.end method

.method public static onPlaybackPausedByUser()V
    .registers 0

    .line 265
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 266
    return-void
.end method

.method public static onPlaybackResumedByUser()V
    .registers 0

    .line 269
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 270
    return-void
.end method

.method public static onPlaybackStarted()V
    .registers 0

    .line 260
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->onPlayerPlaybackStarted()V

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 262
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 1

    .line 227
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V

    .line 228
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 229
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 230
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 232
    :cond_15
    return-void
.end method

.method private static persistPlaylist(Landroid/app/Activity;)V
    .registers 2

    .line 468
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 469
    return-void
.end method

.method private static readSensitivity()I
    .registers 2

    .line 1145
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    if-nez v0, :cond_7

    .line 1146
    return v1

    .line 1149
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return v0

    .line 1150
    :catchall_c
    move-exception v0

    .line 1151
    return v1
.end method

.method private static rebuildPlaylistViews(Landroid/app/Activity;)V
    .registers 7

    .line 610
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6d

    if-nez p0, :cond_7

    goto :goto_6d

    .line 613
    :cond_7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 614
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 615
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 616
    nop

    .line 617
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 620
    const v3, 0x7f0b007d

    :try_start_24
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_64

    .line 623
    nop

    .line 624
    const v4, 0x7f090284

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 625
    const v5, 0x7f090285

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 626
    if-eqz v4, :cond_54

    .line 627
    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v1, v2, :cond_4c

    .line 629
    const v2, -0x830400

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    :cond_4c
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    :cond_54
    if-eqz v5, :cond_5e

    .line 634
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;-><init>(I)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 636
    :cond_5e
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_66

    .line 621
    :catchall_64
    move-exception v2

    .line 622
    nop

    .line 615
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 638
    :cond_69
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 639
    return-void

    .line 611
    :cond_6d
    :goto_6d
    return-void
.end method

.method private static refreshSeekFromPlayer()V
    .registers 7

    .line 653
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v0, :cond_36

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    if-eqz v0, :cond_9

    goto :goto_36

    .line 656
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 657
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v1

    .line 658
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    .line 659
    const/4 v2, 0x0

    if-gtz v0, :cond_1d

    .line 660
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 661
    return-void

    .line 663
    :cond_1d
    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    .line 664
    const/16 v1, 0x3e8

    if-gez v0, :cond_2a

    .line 665
    goto :goto_30

    .line 666
    :cond_2a
    if-le v0, v1, :cond_2f

    .line 667
    const/16 v2, 0x3e8

    goto :goto_30

    .line 666
    :cond_2f
    move v2, v0

    .line 669
    :goto_30
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 670
    return-void

    .line 654
    :cond_36
    :goto_36
    return-void
.end method

.method private static refreshTrackTitle()V
    .registers 3

    .line 642
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 643
    return-void

    .line 645
    :cond_5
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_24

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    goto :goto_24

    .line 649
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    return-void

    .line 646
    :cond_24
    :goto_24
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 647
    return-void
.end method

.method public static refreshTransportState()V
    .registers 2

    .line 208
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 209
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_21

    .line 210
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 211
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 212
    :goto_1c
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 214
    :cond_21
    return-void
.end method

.method private static removeDragGhost()V
    .registers 2

    .line 1126
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1127
    return-void

    .line 1129
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1130
    if-eqz v0, :cond_12

    .line 1131
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1133
    :cond_12
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    .line 1134
    return-void
.end method

.method private static requestTrainingPause()V
    .registers 2

    .line 303
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 304
    return-void

    .line 307
    :cond_5
    :try_start_5
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_19

    .line 309
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 310
    return-void

    .line 312
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 313
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    .line 316
    :cond_24
    goto :goto_26

    .line 315
    :catchall_25
    move-exception v0

    .line 317
    :goto_26
    return-void
.end method

.method private static requestTrainingStart()V
    .registers 2

    .line 286
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 287
    return-void

    .line 290
    :cond_5
    :try_start_5
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v1, :cond_1f

    .line 292
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->start()V

    .line 293
    return-void

    .line 295
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 296
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    .line 299
    :cond_2a
    goto :goto_2c

    .line 298
    :catchall_2b
    move-exception v0

    .line 300
    :goto_2c
    return-void
.end method

.method private static requestTrainingStop()V
    .registers 1

    .line 320
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 321
    return-void

    .line 324
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 326
    goto :goto_a

    .line 325
    :catchall_9
    move-exception v0

    .line 327
    :goto_a
    return-void
.end method

.method private static resetPlaylistRowTransforms()V
    .registers 4

    .line 935
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 936
    return-void

    .line 938
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 939
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 940
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 941
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 942
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 943
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 944
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 945
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 938
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 947
    :cond_31
    return-void
.end method

.method private static resizeOverlayWindow()V
    .registers 5

    .line 1226
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1227
    if-eqz v0, :cond_54

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_54

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v2, :cond_54

    .line 1228
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_54

    .line 1231
    :cond_18
    const/16 v1, 0x104

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 1232
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    .line 1233
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1234
    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1232
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1235
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1236
    const/16 v3, 0xf8

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1237
    if-ge v2, v0, :cond_3d

    .line 1238
    move v2, v0

    .line 1240
    :cond_3d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_53

    .line 1242
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1243
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1244
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1245
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1246
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1248
    :cond_53
    return-void

    .line 1229
    :cond_54
    :goto_54
    return-void
.end method

.method private static resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3

    .line 1012
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 1014
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1015
    if-eqz v0, :cond_15

    .line 1016
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1017
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    .line 1018
    check-cast v0, Landroid/view/ViewGroup;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_16

    return-object v0

    .line 1022
    :cond_15
    goto :goto_17

    .line 1021
    :catchall_16
    move-exception v0

    .line 1024
    :cond_17
    :goto_17
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1025
    if-eqz p0, :cond_29

    .line 1026
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 1028
    :cond_29
    return-object v0
.end method

.method private static resolveDropIndex(F)I
    .registers 9

    .line 853
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_54

    .line 856
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 857
    nop

    :goto_13
    const/4 v2, 0x1

    if-ge v1, v0, :cond_52

    .line 858
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 859
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 860
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 861
    aget v5, v5, v2

    .line 862
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v5

    .line 863
    int-to-float v6, v5

    cmpl-float v7, p0, v6

    if-ltz v7, :cond_4a

    int-to-float v7, v3

    cmpg-float v7, p0, v7

    if-gtz v7, :cond_4a

    .line 864
    sub-int/2addr v3, v5

    div-int/2addr v3, v4

    add-int/2addr v5, v3

    .line 865
    int-to-float v3, v5

    cmpg-float p0, p0, v3

    if-gez p0, :cond_42

    goto :goto_49

    :cond_42
    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_49
    return v1

    .line 867
    :cond_4a
    cmpg-float v2, p0, v6

    if-gez v2, :cond_4f

    .line 868
    return v1

    .line 857
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 871
    :cond_52
    sub-int/2addr v0, v2

    return v0

    .line 854
    :cond_54
    :goto_54
    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-ltz p0, :cond_59

    move v1, p0

    :cond_59
    return v1
.end method

.method static resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 417
    if-eqz p0, :cond_3

    .line 418
    return-object p0

    .line 420
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_12

    .line 421
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 422
    if-eqz p0, :cond_12

    .line 423
    return-object p0

    .line 426
    :cond_12
    if-eqz p1, :cond_1f

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 428
    if-eqz p0, :cond_1f

    .line 429
    return-object p0

    .line 432
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 433
    if-eqz p0, :cond_26

    .line 434
    return-object p0

    .line 436
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 413
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 440
    if-nez p0, :cond_4

    .line 441
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 443
    :cond_4
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 444
    return-object v0

    .line 446
    :cond_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object p0

    .line 447
    if-nez p0, :cond_f

    .line 448
    return-object v0

    .line 450
    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 451
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 452
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 453
    return-object v2

    .line 450
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 456
    :cond_28
    return-object v0
.end method

.method private static resolveThemeColor(Landroid/app/Activity;II)I
    .registers 3

    .line 1033
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return p0

    .line 1034
    :catchall_9
    move-exception p0

    .line 1035
    return p2
.end method

.method private static restoreDragSourceRow()V
    .registers 2

    .line 980
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-nez v0, :cond_5

    .line 981
    return-void

    .line 983
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 984
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 985
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 986
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 987
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    .line 988
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 990
    :cond_23
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    .line 991
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    .line 992
    return-void
.end method

.method private static restoreOverlayAfterPick()V
    .registers 2

    .line 793
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 794
    if-nez v0, :cond_5

    .line 795
    return-void

    .line 798
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_11

    .line 799
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 800
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 802
    :cond_11
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_2a

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 804
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 805
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 806
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 807
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    .line 811
    :cond_2a
    goto :goto_31

    .line 809
    :catchall_2b
    move-exception v0

    .line 810
    const-string v1, "music_player_restore_pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    :goto_31
    return-void
.end method

.method private static setPlayLoadingUi(Z)V
    .registers 4

    .line 691
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 692
    xor-int/lit8 v2, p0, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 693
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    const/4 v2, 0x4

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 696
    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x8

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :cond_20
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 141
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 142
    if-nez p0, :cond_9

    .line 143
    return-void

    .line 145
    :cond_9
    if-nez p1, :cond_12

    .line 146
    const p1, 0x7f0d011a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 147
    return-void

    .line 149
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 150
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 151
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 152
    return-void

    .line 154
    :cond_1f
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->loadPlaylist(Landroid/app/Activity;)V

    .line 155
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showOverlay(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 156
    const p1, 0x7f0d0113

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 158
    :cond_2e
    return-void
.end method

.method public static showActive(II)V
    .registers 6

    .line 376
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 377
    const/4 p0, 0x0

    .line 379
    :cond_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_8

    .line 380
    const/4 p1, 0x1

    .line 382
    :cond_8
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    .line 383
    const v3, 0x7f0d0111

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 385
    :cond_12
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v2, :cond_3f

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "% / "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    sget-boolean p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    if-eqz p1, :cond_3a

    const/4 p1, 0x0

    goto :goto_3c

    :cond_3a
    const/16 p1, 0x8

    :goto_3c
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    :cond_3f
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 390
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 391
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz p0, :cond_4c

    .line 392
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 394
    :cond_4c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 395
    return-void
.end method

.method private static showDragGhost(Landroid/view/View;FF)V
    .registers 16

    .line 1040
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1041
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1042
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1043
    if-eqz v0, :cond_14b

    if-eqz p0, :cond_14b

    if-nez v1, :cond_14

    goto/16 :goto_14b

    .line 1046
    :cond_14
    const v2, 0x7f090284

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1047
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_26

    :cond_24
    const-string v2, ""

    .line 1049
    :goto_26
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1050
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1051
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1052
    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    .line 1053
    const/16 v7, 0x8

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    .line 1054
    invoke-virtual {v3, v6, v8, v6, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1055
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1056
    const v8, 0x7f0600c3

    const v9, -0xdadadb

    invoke-static {v0, v8, v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1057
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1058
    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1059
    const v9, 0x7f06006f

    const v10, -0x994496

    invoke-static {v0, v9, v10}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v11

    .line 1058
    invoke-virtual {v6, v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1060
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1061
    const v6, 0x3f7ae148    # 0.98f

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1062
    const v6, 0x3f87ae14    # 1.06f

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1063
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1064
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_9d

    .line 1065
    const/16 v6, 0x12

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1066
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    .line 1069
    :cond_9d
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1070
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1072
    const v2, 0x7f0600e6

    const v8, -0x171718

    invoke-static {v0, v2, v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1073
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1074
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1075
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1079
    const-string v11, "\u2630"

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1081
    invoke-static {v0, v9, v10}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1082
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v7

    invoke-virtual {v8, v7, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1084
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1085
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1087
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_f9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    goto :goto_ff

    :cond_f9
    const/16 v6, 0xf4

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    .line 1088
    :goto_ff
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    if-lez v7, :cond_10a

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_110

    :cond_10a
    const/16 v7, 0x28

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1090
    :goto_110
    new-array v7, v5, [I

    .line 1091
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1092
    aget p0, v7, v4

    int-to-float p0, p0

    sub-float p0, p1, p0

    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    .line 1093
    aget p0, v7, v2

    int-to-float p0, p0

    sub-float p0, p2, p0

    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    .line 1095
    new-array p0, v5, [I

    .line 1096
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1098
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1099
    const/16 v0, 0x33

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1100
    aget v0, p0, v4

    int-to-float v0, v0

    sub-float/2addr p1, v0

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1101
    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr p2, p0

    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr p2, p0

    float-to-int p0, p2

    iput p0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1102
    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    .line 1104
    return-void

    .line 1044
    :cond_14b
    :goto_14b
    return-void
.end method

.method public static showError(I)V
    .registers 3

    .line 398
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 399
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 401
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 402
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 405
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_20

    .line 407
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 409
    :cond_20
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 410
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 350
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 351
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 353
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 354
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 357
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 359
    :cond_1b
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 361
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 362
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 363
    return-void
.end method

.method private static showOverlay(Landroid/app/Activity;)Z
    .registers 9

    .line 472
    const/4 v0, 0x0

    if-eqz p0, :cond_1ca

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_1ca

    .line 475
    :cond_b
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 478
    :try_start_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1c3

    .line 482
    nop

    .line 483
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 484
    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 485
    const v2, 0x7f09028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    .line 486
    const v2, 0x7f09027b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 487
    const v2, 0x7f09028f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    .line 488
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stylePlayLoadingSpinner(Landroid/app/Activity;)V

    .line 489
    const v2, 0x7f09027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 490
    const v2, 0x7f09027e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 491
    const v2, 0x7f09027f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 492
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    .line 493
    const v2, 0x7f090282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 494
    const v2, 0x7f090283

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 495
    const v2, 0x7f090229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 496
    const v2, 0x7f09022a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 497
    const v2, 0x7f090228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 499
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSensitivity()V

    .line 500
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSeekBar()V

    .line 501
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 502
    const v2, 0x7f09027c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ControlsToggleListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ControlsToggleListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 503
    const v2, 0x7f090280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 504
    const v2, 0x7f090288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 505
    const v2, 0x7f090289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 507
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 508
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 509
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 510
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 511
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 513
    nop

    .line 514
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v2, :cond_123

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_123

    .line 515
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 516
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_123

    .line 517
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_124

    .line 520
    :cond_123
    move-object v2, v3

    :goto_124
    const/4 v4, 0x1

    if-eqz v2, :cond_135

    .line 521
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 522
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 523
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 526
    :cond_135
    const/16 v2, 0xc0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    .line 527
    const/16 v2, 0x104

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 528
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 529
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 530
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    :try_start_151
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 537
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 538
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 539
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 540
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 541
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 543
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 544
    if-nez v1, :cond_17d

    .line 545
    return v0

    .line 547
    :cond_17d
    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 548
    const v2, 0x800033

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 549
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 550
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 551
    const/16 v5, 0x14

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 552
    const/16 v5, 0x12c

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 553
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 554
    iget p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x20

    and-int/lit8 p0, p0, -0x3

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 558
    const/4 p0, 0x2

    invoke-virtual {v1, p0}, Landroid/view/Window;->clearFlags(I)V

    .line 559
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 560
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    :try_end_1b6
    .catchall {:try_start_151 .. :try_end_1b6} :catchall_1b7

    .line 561
    return v4

    .line 562
    :catchall_1b7
    move-exception p0

    .line 563
    const-string v1, "music_player_overlay_show"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 565
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 566
    return v0

    .line 479
    :catchall_1c3
    move-exception p0

    .line 480
    const-string v1, "music_player_overlay_inflate"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    return v0

    .line 473
    :cond_1ca
    :goto_1ca
    return v0
.end method

.method public static showPreparing()V
    .registers 2

    .line 366
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 367
    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 369
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 370
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    :cond_13
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 373
    return-void
.end method

.method private static startCurrentTrack(Z)Z
    .registers 5

    .line 734
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 735
    return v1

    .line 737
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 738
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 739
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 740
    if-eqz p0, :cond_23

    .line 741
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackResumedByUser()V

    .line 744
    :cond_23
    return v2

    .line 746
    :cond_24
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_5e

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_31

    goto :goto_5e

    .line 752
    :cond_31
    const/4 p0, 0x0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 753
    if-nez p0, :cond_41

    .line 754
    const p0, 0x7f0d010b

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 755
    return v1

    .line 757
    :cond_41
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    .line 758
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 759
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 760
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 761
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startPlayer(Landroid/app/Activity;Landroid/net/Uri;I)V

    .line 762
    return v2

    .line 747
    :cond_5e
    :goto_5e
    if-eqz p0, :cond_66

    .line 748
    const p0, 0x7f0d0112

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 750
    :cond_66
    return v1
.end method

.method private static startProgressUpdates()V
    .registers 2

    .line 725
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-void
.end method

.method private static stopProgressUpdates()V
    .registers 2

    .line 730
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method

.method private static stylePlayLoadingSpinner(Landroid/app/Activity;)V
    .registers 4

    .line 701
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_23

    if-nez p0, :cond_9

    goto :goto_23

    .line 704
    :cond_9
    check-cast v0, Landroid/widget/ProgressBar;

    .line 706
    :try_start_b
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_20

    .line 708
    const v1, 0x7f06006f

    const v2, -0x994496

    .line 709
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 708
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_21

    .line 713
    :cond_20
    goto :goto_22

    .line 712
    :catchall_21
    move-exception p0

    .line 714
    :goto_22
    return-void

    .line 702
    :cond_23
    :goto_23
    return-void
.end method

.method public static syncTrainingState()V
    .registers 1

    .line 218
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isTargetTrainingRunning()Z

    move-result v0

    .line 219
    if-eqz v0, :cond_9

    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tryStartFromTrainingSync()V

    .line 222
    :cond_9
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->syncWithTrainingState(Z)V

    .line 223
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 1259
    if-nez p0, :cond_3

    .line 1260
    return-void

    .line 1263
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 1265
    goto :goto_d

    .line 1264
    :catchall_c
    move-exception p0

    .line 1266
    :goto_d
    return-void
.end method

.method static tryStartFromTrainingSync()V
    .registers 2

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    return-void

    .line 247
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 248
    return-void

    .line 250
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_2e

    .line 253
    :cond_23
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_2a

    .line 254
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 256
    :cond_2a
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    .line 257
    return-void

    .line 251
    :cond_2e
    :goto_2e
    return-void
.end method

.method private static updateDragHover(I)V
    .registers 9

    .line 875
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6f

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-gez v1, :cond_9

    goto :goto_6f

    .line 878
    :cond_9
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 879
    if-nez v0, :cond_10

    .line 880
    return-void

    .line 882
    :cond_10
    const/4 v1, 0x0

    if-gez p0, :cond_14

    .line 883
    const/4 p0, 0x0

    .line 885
    :cond_14
    if-lt p0, v0, :cond_18

    .line 886
    add-int/lit8 p0, v0, -0x1

    .line 888
    :cond_18
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    if-ne p0, v2, :cond_1d

    .line 889
    return-void

    .line 891
    :cond_1d
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 892
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 893
    sget v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 894
    if-gtz v3, :cond_37

    .line 895
    const/4 v3, 0x0

    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 896
    if-eqz v3, :cond_35

    const/16 v4, 0x2c

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    goto :goto_37

    :cond_35
    const/16 v3, 0x84

    .line 898
    :cond_37
    :goto_37
    nop

    :goto_38
    if-ge v1, v0, :cond_6e

    .line 899
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 900
    const/4 v5, 0x0

    .line 901
    if-ge v2, p0, :cond_4a

    .line 902
    if-le v1, v2, :cond_51

    if-gt v1, p0, :cond_51

    .line 903
    neg-int v5, v3

    int-to-float v5, v5

    goto :goto_51

    .line 905
    :cond_4a
    if-le v2, p0, :cond_51

    .line 906
    if-lt v1, p0, :cond_51

    if-ge v1, v2, :cond_51

    .line 907
    int-to-float v5, v3

    .line 910
    :cond_51
    :goto_51
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x5a

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 911
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-eq v4, v5, :cond_6b

    .line 912
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 898
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 915
    :cond_6e
    return-void

    .line 876
    :cond_6f
    :goto_6f
    return-void
.end method

.method private static updatePlayPauseLabel()V
    .registers 2

    .line 717
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2d

    .line 720
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 721
    :goto_20
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    const-string v0, "\u23f8"

    goto :goto_29

    :cond_27
    const-string v0, "\u25b6"

    :goto_29
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    return-void

    .line 718
    :cond_2d
    :goto_2d
    return-void
.end method

.method private static updateTimeLabel(II)V
    .registers 4

    .line 673
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 674
    return-void

    .line 676
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

    .line 677
    return-void
.end method
