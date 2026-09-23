.class public final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;,
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

.field private static final ID_FLOOR:I = 0x7f0902c4

.field private static final ID_INFO:I = 0x7f090289

.field private static final ID_LOADING:I = 0x7f09028f

.field private static final ID_METER:I = 0x7f0902c2

.field private static final ID_PANEL:I = 0x7f09027d

.field private static final ID_PLAYLIST_BTN:I = 0x7f09027c

.field private static final ID_PLAYLIST_ITEM_HANDLE:I = 0x7f090285

.field private static final ID_PLAYLIST_ITEM_TITLE:I = 0x7f090284

.field private static final ID_PLAYLIST_LIST:I = 0x7f09027f

.field private static final ID_PLAYLIST_PANEL:I = 0x7f09027e

.field private static final ID_PLAY_PAUSE:I = 0x7f09027b

.field private static final ID_PRESET_BALANCED:I = 0x7f0902c7

.field private static final ID_PRESET_BEAT:I = 0x7f0902c8

.field private static final ID_PRESET_SOFT:I = 0x7f0902c6

.field private static final ID_RHYTHM:I = 0x7f0902c3

.field private static final ID_SEEK:I = 0x7f09027a

.field private static final ID_SENSITIVITY:I = 0x7f090228

.field private static final ID_SETTINGS_BTN:I = 0x7f0902c0

.field private static final ID_SMOOTH:I = 0x7f0902c5

.field private static final ID_STATUS:I = 0x7f090229

.field private static final ID_TIME:I = 0x7f090283

.field private static final ID_TRACK_TITLE:I = 0x7f090282

.field private static final ID_VISUALIZER:I = 0x7f09028e

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007c

.field private static final OVERLAY_PANEL_WIDTH_DP:I = 0x12c

.field private static final OVERLAY_SIZE_DP:I = 0xc0

.field private static final OVERLAY_TAP_SLOP_DP:F = 10.0f

.field static final PICK_AUDIO:I = 0x4255

.field static final PLAYLIST_ITEM_LAYOUT_ID:I = 0x7f0b007d

.field private static final PLAY_DEBOUNCE_MS:J = 0x1c2L

.field private static final PRESETS:[[I

.field private static final PROGRESS_TICK_MS:J = 0xc8L

.field private static final SEEK_MAX:I = 0x3e8

.field private static final STR_INFO_BODY:I = 0x7f0d0173

.field private static final STR_INFO_TITLE:I = 0x7f0d0172

.field private static activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

.field private static controlPanel:Landroid/view/View;

.field private static currentIndex:I

.field private static dragFromIndex:I

.field private static dragGhostOffsetX:F

.field private static dragGhostOffsetY:F

.field private static dragGhostView:Landroid/view/View;

.field private static dragHighlightIndex:I

.field private static dragRowHeightPx:I

.field private static dragSourceBackground:Landroid/graphics/drawable/Drawable;

.field private static dragSourceRow:Landroid/view/View;

.field private static floorView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static final handler:Landroid/os/Handler;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static lastPlayClickMs:J

.field private static meterView:Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static playlistButton:Landroid/view/View;

.field private static playlistExpanded:Z

.field private static playlistList:Landroid/widget/LinearLayout;

.field private static playlistPanel:Landroid/view/View;

.field private static playlistScrollView:Landroid/widget/ScrollView;

.field private static presetViews:[Landroid/widget/TextView;

.field private static final progressRunnable:Ljava/lang/Runnable;

.field private static rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

.field private static sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static settingsButton:Landroid/view/View;

.field private static settingsExpanded:Z

.field private static smoothView:Lcom/isaigu/gymapp/widget/AmountView;

.field private static statusView:Landroid/widget/TextView;

.field private static timeView:Landroid/widget/TextView;

.field private static trackTitleView:Landroid/widget/TextView;

.field private static userSeeking:Z

.field private static visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x3

    .line 100
    new-array v0, v2, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    .line 107
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 120
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 121
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 134
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_42

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_4c

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_56

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    return-void

    .line 134
    :array_42
    .array-data 4
        0x14
        0x1e
        0x32
    .end array-data

    :array_4c
    .array-data 4
        0x32
        0x14
        0x14
    .end array-data

    :array_56
    .array-data 4
        0x55
        0xa
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100()J
    .registers 2

    .prologue
    .line 38
    sget-wide v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    return-wide v0
.end method

.method static synthetic access$1000()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    return-void
.end method

.method static synthetic access$102(J)J
    .registers 2

    .prologue
    .line 38
    sput-wide p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    return-wide p0
.end method

.method static synthetic access$1100(I)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyPreset(I)V

    return-void
.end method

.method static synthetic access$1200()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    return-void
.end method

.method static synthetic access$1300()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    return-void
.end method

.method static synthetic access$1400()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->closePlayer()V

    return-void
.end method

.method static synthetic access$1500()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .registers 1

    .prologue
    .line 38
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method static synthetic access$1600()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 38
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1700()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    return-void
.end method

.method static synthetic access$1802(I)I
    .registers 1

    .prologue
    .line 38
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    return p0
.end method

.method static synthetic access$1900()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    return-void
.end method

.method static synthetic access$2000()Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .prologue
    .line 38
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object p0
.end method

.method static synthetic access$2100()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 38
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(FF)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveDragGhost(FF)V

    return-void
.end method

.method static synthetic access$2400(F)I
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(I)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateDragHover(I)V

    return-void
.end method

.method static synthetic access$2600(F)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoScrollPlaylist(F)V

    return-void
.end method

.method static synthetic access$2700(II)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->finishDragReorder(II)V

    return-void
.end method

.method static synthetic access$2800(Z)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    return-void
.end method

.method static synthetic access$2900()Landroid/widget/ScrollView;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;
    .registers 1

    .prologue
    .line 38
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    return-void
.end method

.method static synthetic access$3000()Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Landroid/view/View;)Landroid/view/View;
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findPlaylistRow(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    return-void
.end method

.method static synthetic access$3402(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 38
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3502(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 38
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3600()I
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return v0
.end method

.method static synthetic access$3602(I)I
    .registers 1

    .prologue
    .line 38
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return p0
.end method

.method static synthetic access$3700(Landroid/app/Activity;I)I
    .registers 3

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/view/View;FF)V
    .registers 3

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showDragGhost(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$3902(Z)Z
    .registers 1

    .prologue
    .line 38
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    return p0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return v0
.end method

.method static synthetic access$4000(II)I
    .registers 3

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1

    .prologue
    .line 38
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return p0
.end method

.method static synthetic access$4100(II)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    return-void
.end method

.method static synthetic access$4200()Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    return-object v0
.end method

.method static synthetic access$4300()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    return-void
.end method

.method static synthetic access$4400()F
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$4402(F)F
    .registers 1

    .prologue
    .line 38
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$4500()F
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$4502(F)F
    .registers 1

    .prologue
    .line 38
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$4600()F
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$4602(F)F
    .registers 1

    .prologue
    .line 38
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$4700()F
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$4702(F)F
    .registers 1

    .prologue
    .line 38
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$4800()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$4802(Z)Z
    .registers 1

    .prologue
    .line 38
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$4900(II)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5002(Z)Z
    .registers 1

    .prologue
    .line 38
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$5100()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    return-void
.end method

.method static synthetic access$600(Z)Z
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .prologue
    .line 38
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    return p0
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 38
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    return p0
.end method

.method static synthetic access$900()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    return-void
.end method

.method private static addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 887
    if-eqz p1, :cond_4

    if-nez p0, :cond_5

    .line 901
    :cond_4
    :goto_4
    return-void

    .line 890
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->resolve(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 891
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    invoke-direct {v2, p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez v0, :cond_21

    .line 893
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 895
    :cond_21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 896
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 897
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 898
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 899
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    goto :goto_4
.end method

.method private static addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 4

    .prologue
    .line 879
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 884
    :goto_3
    return-void

    .line 880
    :catch_4
    move-exception v0

    .line 881
    const-string v1, "player_add_track"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 882
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_3
.end method

.method public static advanceToNextTrack()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 232
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 236
    :goto_d
    return v0

    .line 235
    :cond_e
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 236
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    goto :goto_d
.end method

.method private static applyExpandedState()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 684
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 685
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 687
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 688
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    sget-boolean v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    if-eqz v3, :cond_2f

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :cond_1e
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->markToggle(Landroid/view/View;Z)V

    .line 691
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->markToggle(Landroid/view/View;Z)V

    .line 692
    return-void

    :cond_2d
    move v0, v2

    .line 685
    goto :goto_e

    :cond_2f
    move v1, v2

    .line 688
    goto :goto_1b
.end method

.method private static applyPreset(I)V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 646
    if-ltz p0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    array-length v0, v0

    if-lt p0, v0, :cond_b

    .line 658
    :cond_a
    :goto_a
    return-void

    .line 649
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    aget-object v0, v0, p0

    .line 650
    aget v1, v0, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 651
    aget v1, v0, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    .line 652
    aget v1, v0, v4

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 653
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 654
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v2, v0, v3

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 655
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v0, v0, v4

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 656
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 657
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    goto :goto_a
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 147
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 159
    :cond_5
    :goto_5
    return-void

    .line 150
    :cond_6
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_5

    .line 154
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 158
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method private static autoScrollPlaylist(F)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1030
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_6

    .line 1044
    :cond_5
    :goto_5
    return-void

    .line 1033
    :cond_6
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_35

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1035
    :goto_15
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1036
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 1037
    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1038
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 1039
    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpg-float v1, p0, v1

    if-gez v1, :cond_38

    .line 1040
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v1, -0x10

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_5

    .line 1034
    :cond_35
    const/16 v0, 0x78

    goto :goto_15

    .line 1041
    :cond_38
    sub-int v0, v2, v0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_5

    .line 1042
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x10

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_5
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1313
    if-nez p0, :cond_4

    .line 1319
    :goto_3
    return-void

    .line 1316
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1317
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1318
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method private static cancelPendingDrag()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 1252
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 1253
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1254
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    .line 1256
    :cond_e
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1257
    return-void
.end method

.method private static clearDragHighlight()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1081
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1082
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 1083
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 1084
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 1085
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1086
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1087
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1088
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1089
    return-void
.end method

.method private static clearOverlayRefs()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1348
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1349
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 1350
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 1351
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 1352
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 1353
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 1354
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 1355
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 1356
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 1357
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 1358
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1359
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1360
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1361
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1362
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 1363
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    .line 1364
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    .line 1365
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->meterView:Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    .line 1366
    return-void
.end method

.method private static closePlayer()V
    .registers 1

    .prologue
    .line 1322
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1323
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStop()V

    .line 1324
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1325
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 1326
    return-void
.end method

.method private static configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V
    .registers 7

    .prologue
    .line 621
    if-nez p0, :cond_3

    .line 633
    :goto_2
    return-void

    .line 625
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 626
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 627
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 628
    const-string v0, "%"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0, p4}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 630
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;

    invoke-direct {v0, p5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_2

    .line 631
    :catch_1d
    move-exception v0

    goto :goto_2
.end method

.method private static configureSeekBar()V
    .registers 2

    .prologue
    .line 599
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-nez v0, :cond_5

    .line 610
    :goto_4
    return-void

    .line 603
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setMaxProcess(I)V

    .line 604
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 605
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setClickable(Z)V

    .line 606
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setFocusable(Z)V

    .line 607
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_4

    .line 608
    :catch_29
    move-exception v0

    goto :goto_4
.end method

.method private static configureSettings()V
    .registers 14

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x5

    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 613
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v4

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 614
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v8

    const/4 v9, 0x1

    move v5, v1

    move v6, v2

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 615
    sget-object v8, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v10, 0x50

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v12

    const/4 v13, 0x2

    move v9, v1

    move v11, v3

    invoke-static/range {v8 .. v13}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 616
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v4

    const/4 v5, 0x3

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 617
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    .line 618
    return-void
.end method

.method private static dismissOverlay(Z)V
    .registers 2

    .prologue
    .line 1329
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 1330
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    .line 1331
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 1332
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 1334
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_26

    .line 1337
    :goto_12
    if-nez p0, :cond_1e

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez v0, :cond_1e

    .line 1338
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1339
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 1342
    :cond_1e
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez v0, :cond_25

    .line 1343
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1345
    :cond_25
    return-void

    .line 1335
    :catch_26
    move-exception v0

    goto :goto_12
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 4

    .prologue
    .line 1404
    if-nez p0, :cond_3

    .line 1408
    :goto_2
    return p1

    .line 1407
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1408
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_2
.end method

.method private static findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 947
    if-nez p0, :cond_5

    move-object v0, v1

    .line 955
    :goto_4
    return-object v0

    .line 950
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_17

    .line 951
    instance-of v2, v0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_12

    .line 952
    check-cast v0, Landroid/widget/ScrollView;

    goto :goto_4

    .line 950
    :cond_12
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_9

    :cond_17
    move-object v0, v1

    .line 955
    goto :goto_4
.end method

.method private static findPlaylistRow(Landroid/view/View;)Landroid/view/View;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1107
    if-nez p0, :cond_5

    move-object v0, v1

    .line 1120
    :goto_4
    return-object v0

    :cond_5
    move-object v0, p0

    .line 1111
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 1112
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1113
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-ne v2, v3, :cond_6

    goto :goto_4

    .line 1117
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 1118
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_4

    :cond_2c
    move-object v0, v1

    .line 1120
    goto :goto_4
.end method

.method private static finishDragReorder(II)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1062
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1063
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 1064
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 1065
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 1066
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1067
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1068
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1069
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1070
    if-eq p0, p1, :cond_1d

    .line 1071
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V

    .line 1078
    :cond_1c
    :goto_1c
    return-void

    .line 1073
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_1c

    .line 1075
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    goto :goto_1c
.end method

.method private static formatTime(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 792
    if-gez p0, :cond_3

    .line 793
    const/4 p0, 0x0

    .line 795
    :cond_3
    div-int/lit16 v0, p0, 0x3e8

    .line 796
    div-int/lit8 v1, v0, 0x3c

    .line 797
    rem-int/lit8 v0, v0, 0x3c

    .line 798
    const/16 v2, 0xa

    if-ge v0, v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 798
    :cond_38
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private static grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 1302
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    .line 1304
    if-eqz v0, :cond_f

    .line 1305
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 1310
    :cond_f
    :goto_f
    return-void

    .line 1307
    :catch_10
    move-exception v0

    .line 1308
    const-string v1, "player_uri_persist"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method static hasPlaylistTracks()Z
    .registers 1

    .prologue
    .line 271
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static hidePlayerOverlay()V
    .registers 1

    .prologue
    .line 1260
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1261
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 1262
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1263
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 1264
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1266
    :cond_18
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_21

    .line 1268
    :try_start_1c
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_21} :catch_25

    .line 1272
    :cond_21
    :goto_21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1273
    return-void

    .line 1269
    :catch_25
    move-exception v0

    goto :goto_21
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 362
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_7

    move v0, v1

    .line 378
    :goto_6
    return v0

    .line 366
    :cond_7
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 367
    if-nez v3, :cond_11

    move v0, v1

    .line 368
    goto :goto_6

    :cond_11
    move v2, v1

    .line 370
    :goto_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_37

    .line 371
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 372
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_32

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2e} :catch_36

    if-eqz v0, :cond_32

    .line 373
    const/4 v0, 0x1

    goto :goto_6

    .line 370
    :cond_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 376
    :catch_36
    move-exception v0

    :cond_37
    move v0, v1

    .line 378
    goto :goto_6
.end method

.method static isOverlayOpen()Z
    .registers 1

    .prologue
    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    return v0
.end method

.method private static isOverlayShowing()Z
    .registers 1

    .prologue
    .line 225
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_10

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 227
    :goto_d
    return v0

    .line 225
    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 226
    :catch_10
    move-exception v0

    .line 227
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    goto :goto_d
.end method

.method private static isTargetTrainingRunning()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 310
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 311
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_14

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_15

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 313
    :cond_14
    :goto_14
    return v0

    .line 312
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method private static loadPlaylist(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 474
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 475
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_23

    .line 477
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, -0x1

    :goto_21
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 479
    :cond_23
    return-void

    .line 477
    :cond_24
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static lockPlaylistScroll(Z)V
    .registers 2

    .prologue
    .line 959
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9

    .line 960
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 962
    :cond_9
    return-void
.end method

.method private static mapSeekProgressToMs(II)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    .line 776
    if-gtz p1, :cond_7

    move p1, v0

    .line 788
    :cond_6
    :goto_6
    return p1

    .line 780
    :cond_7
    if-gez p0, :cond_13

    .line 785
    :goto_9
    if-ge v0, v1, :cond_6

    .line 788
    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    goto :goto_6

    .line 782
    :cond_13
    if-le p0, v1, :cond_17

    move v0, v1

    .line 783
    goto :goto_9

    :cond_17
    move v0, p0

    goto :goto_9
.end method

.method private static markToggle(Landroid/view/View;Z)V
    .registers 6

    .prologue
    .line 695
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 703
    :goto_4
    return-void

    .line 698
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    move-object v0, p0

    .line 699
    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_20

    .line 700
    const v2, 0x7f06006f

    const v3, -0x994496

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v1

    .line 699
    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 702
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_4

    .line 701
    :cond_20
    const v2, 0x7f0600e6

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v1

    goto :goto_19
.end method

.method private static moveDragGhost(FF)V
    .registers 6

    .prologue
    .line 1222
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1238
    :cond_4
    :goto_4
    return-void

    .line 1225
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1226
    if-eqz v0, :cond_4

    .line 1229
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1230
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1231
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1232
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_4

    .line 1233
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1234
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    sub-float v2, p0, v2

    sget v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1235
    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p1, v1

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1236
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .prologue
    .line 1369
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1376
    :cond_c
    :goto_c
    return-void

    .line 1372
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1373
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1374
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1375
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_c
.end method

.method private static movePlaylistItem(II)V
    .registers 4

    .prologue
    .line 927
    if-eq p0, p1, :cond_16

    if-ltz p0, :cond_16

    if-ltz p1, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_17

    .line 944
    :cond_16
    :goto_16
    return-void

    .line 930
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 931
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 932
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v0, p0, :cond_3a

    .line 933
    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 939
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 940
    if-eqz v0, :cond_16

    .line 941
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 942
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    goto :goto_16

    .line 934
    :cond_3a
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ge p0, v0, :cond_49

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-lt p1, v0, :cond_49

    .line 935
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_2a

    .line 936
    :cond_49
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-le p0, v0, :cond_2a

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gt p1, v0, :cond_2a

    .line 937
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_2a
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 193
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    .line 195
    const/16 v1, 0x4255

    if-ne p0, v1, :cond_f

    const/4 v1, -0x1

    if-ne p1, v1, :cond_f

    if-nez p2, :cond_10

    .line 221
    :cond_f
    :goto_f
    return-void

    .line 198
    :cond_10
    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_f

    .line 202
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    .line 203
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_44

    .line 206
    :goto_2b
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 207
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_41

    .line 209
    invoke-static {v1, p2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 210
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 206
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 215
    :cond_44
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_f

    .line 219
    invoke-static {v1, p2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 220
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_f
.end method

.method public static onPlaybackEndedNaturally()V
    .registers 0

    .prologue
    .line 305
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 306
    return-void
.end method

.method public static onPlaybackPausedByUser()V
    .registers 0

    .prologue
    .line 297
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 298
    return-void
.end method

.method public static onPlaybackResumedByUser()V
    .registers 0

    .prologue
    .line 301
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 302
    return-void
.end method

.method public static onPlaybackStarted()V
    .registers 0

    .prologue
    .line 292
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->onPlayerPlaybackStarted()V

    .line 293
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 294
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 1

    .prologue
    .line 259
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V

    .line 260
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 262
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 264
    :cond_15
    return-void
.end method

.method private static persistPlaylist(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 482
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 483
    return-void
.end method

.method private static persistSettings()V
    .registers 2

    .prologue
    .line 680
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->saveSettings(Landroid/content/Context;)V

    .line 681
    return-void
.end method

.method private static reShowOverlay(Landroid/app/Activity;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1276
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_e

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    .line 1296
    :goto_f
    return v0

    .line 1280
    :cond_10
    :try_start_10
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1281
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1282
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 1283
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1284
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 1285
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 1286
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1287
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_33} :catch_34

    goto :goto_f

    .line 1292
    :catch_34
    move-exception v0

    .line 1293
    const-string v2, "music_player_overlay_reshow"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1294
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1295
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    move v0, v1

    .line 1296
    goto :goto_f

    .line 1289
    :cond_42
    :try_start_42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_34

    goto :goto_f
.end method

.method private static rebuildPlaylistViews(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 706
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    if-nez p0, :cond_8

    .line 735
    :cond_7
    :goto_7
    return-void

    .line 709
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 710
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v2, v0

    .line 711
    :goto_12
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_68

    .line 713
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 716
    const v1, 0x7f0b007d

    :try_start_25
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2b} :catch_6c

    move-result-object v4

    .line 720
    const v1, 0x7f090284

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 721
    const v5, 0x7f090285

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 722
    if-eqz v1, :cond_55

    .line 723
    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v2, v0, :cond_4d

    .line 725
    const v0, -0x830400

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 727
    :cond_4d
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    :cond_55
    if-eqz v5, :cond_5f

    .line 730
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;-><init>(I)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 732
    :cond_5f
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 711
    :goto_64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 734
    :cond_68
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    goto :goto_7

    .line 717
    :catch_6c
    move-exception v0

    goto :goto_64
.end method

.method private static refreshPresetHighlight()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 662
    :goto_3
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_54

    .line 663
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    aget-object v5, v2, v0

    .line 664
    if-nez v5, :cond_11

    .line 662
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 667
    :cond_11
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    aget-object v2, v2, v0

    .line 668
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v4

    aget v6, v2, v1

    if-ne v4, v6, :cond_47

    .line 669
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v4

    aget v6, v2, v3

    if-ne v4, v6, :cond_47

    .line 670
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v4

    const/4 v6, 0x2

    aget v2, v2, v6

    if-ne v4, v2, :cond_47

    move v2, v3

    .line 671
    :goto_2f
    const/4 v4, 0x0

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v4

    .line 672
    if-eqz v2, :cond_49

    .line 673
    const v6, 0x7f06006f

    const v7, -0x994496

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v4

    .line 672
    :goto_40
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 675
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_e

    :cond_47
    move v2, v1

    .line 670
    goto :goto_2f

    .line 674
    :cond_49
    const v6, 0x7f0600e7

    const v7, -0x616162

    invoke-static {v4, v6, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v4

    goto :goto_40

    .line 677
    :cond_54
    return-void
.end method

.method private static refreshSeekFromPlayer()V
    .registers 8

    .prologue
    const/16 v1, 0x3e8

    const/4 v0, 0x0

    .line 749
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    if-eqz v2, :cond_c

    .line 766
    :cond_b
    :goto_b
    return-void

    .line 752
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v2

    .line 753
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v3

    .line 754
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    .line 755
    if-gtz v2, :cond_1f

    .line 756
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    goto :goto_b

    .line 759
    :cond_1f
    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    int-to-long v2, v2

    div-long v2, v4, v2

    long-to-int v2, v2

    .line 760
    if-gez v2, :cond_2f

    .line 765
    :goto_29
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    goto :goto_b

    .line 762
    :cond_2f
    if-le v2, v1, :cond_33

    move v0, v1

    .line 763
    goto :goto_29

    :cond_33
    move v0, v2

    goto :goto_29
.end method

.method private static refreshTrackTitle()V
    .registers 3

    .prologue
    .line 738
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 746
    :goto_4
    return-void

    .line 741
    :cond_5
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_13

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1c

    .line 742
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 745
    :cond_1c
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public static refreshTransportState()V
    .registers 2

    .prologue
    .line 240
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 241
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_1f

    .line 242
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 243
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 244
    :goto_1a
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 246
    :cond_1f
    return-void

    .line 243
    :cond_20
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static removeDragGhost()V
    .registers 2

    .prologue
    .line 1241
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1249
    :goto_4
    return-void

    .line 1244
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1245
    if-eqz v0, :cond_14

    .line 1246
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1248
    :cond_14
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    goto :goto_4
.end method

.method private static requestTrainingPause()V
    .registers 2

    .prologue
    .line 335
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 349
    :cond_4
    :goto_4
    return-void

    .line 339
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_1d

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_1d

    .line 341
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    goto :goto_4

    .line 347
    :catch_1b
    move-exception v0

    goto :goto_4

    .line 344
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_1b

    goto :goto_4
.end method

.method private static requestTrainingStart()V
    .registers 2

    .prologue
    .line 318
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 332
    :cond_4
    :goto_4
    return-void

    .line 322
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v1, :cond_23

    .line 324
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->start()V

    goto :goto_4

    .line 330
    :catch_21
    move-exception v0

    goto :goto_4

    .line 327
    :cond_23
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 328
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2e} :catch_21

    goto :goto_4
.end method

.method private static requestTrainingStop()V
    .registers 1

    .prologue
    .line 352
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 359
    :goto_4
    return-void

    .line 356
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 357
    :catch_b
    move-exception v0

    goto :goto_4
.end method

.method private static resetPlaylistRowTransforms()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1047
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    .line 1059
    :cond_7
    return-void

    :cond_8
    move v0, v1

    .line 1050
    :goto_9
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1051
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1052
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1053
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1054
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1055
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1056
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1057
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private static resizeOverlayWindow()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 1379
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1380
    if-eqz v0, :cond_1a

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1381
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1401
    :cond_1a
    :goto_1a
    return-void

    .line 1384
    :cond_1b
    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 1385
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    .line 1386
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1387
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1385
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1388
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1389
    const/16 v3, 0xf8

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1390
    if-ge v1, v0, :cond_55

    .line 1393
    :goto_3e
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1394
    if-eqz v1, :cond_1a

    .line 1395
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1396
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1397
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1398
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1399
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1a

    :cond_55
    move v0, v1

    goto :goto_3e
.end method

.method private static resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1124
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_19

    .line 1126
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1127
    if-eqz v0, :cond_19

    .line 1128
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1129
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_19

    .line 1130
    check-cast v0, Landroid/view/ViewGroup;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_17} :catch_18

    .line 1140
    :goto_17
    return-object v0

    .line 1133
    :catch_18
    move-exception v0

    .line 1136
    :cond_19
    invoke-static {v1, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_2a

    .line 1138
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_17

    :cond_2a
    move-object v0, v1

    .line 1140
    goto :goto_17
.end method

.method private static resolveDropIndex(F)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 965
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_14

    .line 966
    :cond_d
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-ltz v1, :cond_13

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 983
    :cond_13
    :goto_13
    return v0

    .line 968
    :cond_14
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 969
    :goto_1a
    if-ge v0, v1, :cond_5a

    .line 970
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 971
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 972
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 973
    const/4 v4, 0x1

    aget v3, v3, v4

    .line 974
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 975
    int-to-float v4, v3

    cmpl-float v4, p0, v4

    if-ltz v4, :cond_52

    int-to-float v4, v2

    cmpg-float v4, p0, v4

    if-gtz v4, :cond_52

    .line 976
    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    .line 977
    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_13

    .line 979
    :cond_52
    int-to-float v2, v3

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_13

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 983
    :cond_5a
    add-int/lit8 v0, v1, -0x1

    goto :goto_13
.end method

.method static resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 431
    if-eqz p0, :cond_3

    .line 450
    :cond_2
    :goto_2
    return-object p0

    .line 434
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_13

    .line 435
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 436
    if-nez p0, :cond_2

    .line 440
    :cond_13
    if-eqz p1, :cond_1f

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 442
    if-nez p0, :cond_2

    .line 446
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 447
    if-nez p0, :cond_2

    .line 450
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    goto :goto_2
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 454
    if-nez p0, :cond_5

    .line 455
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 457
    :cond_5
    if-nez p0, :cond_9

    move-object v0, v2

    .line 470
    :cond_8
    :goto_8
    return-object v0

    .line 460
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 461
    if-nez v3, :cond_11

    move-object v0, v2

    .line 462
    goto :goto_8

    .line 464
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 465
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 466
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 464
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_2b
    move-object v0, v2

    .line 470
    goto :goto_8
.end method

.method private static resolveThemeColor(Landroid/app/Activity;II)I
    .registers 4

    .prologue
    .line 1144
    if-nez p0, :cond_3

    .line 1150
    :goto_2
    return p2

    .line 1148
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_c

    move-result p2

    goto :goto_2

    .line 1149
    :catch_c
    move-exception v0

    goto :goto_2
.end method

.method private static restoreDragSourceRow()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1092
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1104
    :goto_7
    return-void

    .line 1095
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1097
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1098
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1099
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    .line 1100
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1102
    :cond_28
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    .line 1103
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_7
.end method

.method private static restoreOverlayAfterPick()V
    .registers 2

    .prologue
    .line 905
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 906
    if-nez v0, :cond_5

    .line 924
    :cond_4
    :goto_4
    return-void

    .line 910
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_11

    .line 911
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 912
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 914
    :cond_11
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_4

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 916
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 917
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 918
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 919
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_4

    .line 921
    :catch_2b
    move-exception v0

    .line 922
    const-string v1, "music_player_restore_pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V
    .registers 3

    .prologue
    .line 636
    if-nez p0, :cond_3

    .line 643
    :goto_2
    return-void

    .line 640
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 641
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private static setPlayLoadingUi(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 803
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 804
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-nez p0, :cond_21

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 805
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz p0, :cond_23

    const/4 v0, 0x4

    :goto_12
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 808
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    if-eqz p0, :cond_25

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 810
    :cond_20
    return-void

    :cond_21
    move v0, v1

    .line 804
    goto :goto_a

    :cond_23
    move v0, v1

    .line 805
    goto :goto_12

    .line 808
    :cond_25
    const/16 v1, 0x8

    goto :goto_1d
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    .line 162
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 163
    if-nez v0, :cond_9

    .line 190
    :cond_8
    :goto_8
    return-void

    .line 166
    :cond_9
    if-nez p1, :cond_12

    .line 167
    const v1, 0x7f0d011a

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_8

    .line 170
    :cond_12
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 171
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 172
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v1

    if-nez v1, :cond_21

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 176
    :cond_21
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 177
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hidePlayerOverlay()V

    goto :goto_8

    .line 180
    :cond_2b
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_35

    .line 181
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->reShowOverlay(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 185
    :cond_35
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->loadPlaylist(Landroid/app/Activity;)V

    .line 186
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->loadSettings(Landroid/content/Context;)V

    .line 187
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showOverlay(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 188
    const v1, 0x7f0d0113

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_8
.end method

.method public static showActive(II)V
    .registers 4

    .prologue
    .line 403
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 404
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 406
    :cond_c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 407
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 408
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_1d

    .line 409
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 411
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 412
    return-void
.end method

.method private static showDragGhost(Landroid/view/View;FF)V
    .registers 15

    .prologue
    const v11, -0x994496

    const v10, 0x3f87ae14    # 1.06f

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1155
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1156
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1157
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 1158
    if-eqz v1, :cond_1b

    if-eqz p0, :cond_1b

    if-nez v2, :cond_1c

    .line 1219
    :cond_1b
    :goto_1b
    return-void

    .line 1161
    :cond_1c
    const v0, 0x7f090284

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1162
    if-eqz v0, :cond_145

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1164
    :goto_2b
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1165
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1166
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1167
    const/16 v4, 0xa

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 1168
    const/16 v5, 0x8

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 1169
    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1170
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1171
    const v5, 0x7f0600c3

    const v6, -0xdadadb

    invoke-static {v1, v5, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1172
    const/16 v5, 0xa

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1173
    invoke-static {v1, v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v6, 0x7f06006f

    .line 1174
    invoke-static {v1, v6, v11}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v6

    .line 1173
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1175
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1176
    const v4, 0x3f7ae148    # 0.98f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1177
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1178
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1179
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_9e

    .line 1180
    const/16 v4, 0x12

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1181
    const/16 v4, 0x12

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    .line 1184
    :cond_9e
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1185
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1187
    const v0, 0x7f0600e6

    const v5, -0x171718

    invoke-static {v1, v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1188
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1189
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1190
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1194
    const-string v5, "\u2630"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1196
    const v5, 0x7f06006f

    invoke-static {v1, v5, v11}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1197
    const/16 v5, 0x8

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-virtual {v0, v5, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1199
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1200
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1202
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_149

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1203
    :goto_fd
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_150

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1205
    :goto_107
    new-array v4, v8, [I

    .line 1206
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1207
    aget v5, v4, v7

    int-to-float v5, v5

    sub-float v5, p1, v5

    sput v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    .line 1208
    aget v4, v4, v9

    int-to-float v4, v4

    sub-float v4, p2, v4

    sput v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    .line 1210
    new-array v4, v8, [I

    .line 1211
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1213
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1214
    const/16 v0, 0x33

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1215
    aget v0, v4, v7

    int-to-float v0, v0

    sub-float v0, p1, v0

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1216
    aget v0, v4, v9

    int-to-float v0, v0

    sub-float v0, p2, v0

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1217
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    goto/16 :goto_1b

    .line 1162
    :cond_145
    const-string v0, ""

    goto/16 :goto_2b

    .line 1202
    :cond_149
    const/16 v0, 0x11c

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    goto :goto_fd

    .line 1203
    :cond_150
    const/16 v4, 0x28

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    goto :goto_107
.end method

.method public static showError(I)V
    .registers 3

    .prologue
    .line 415
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 416
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 418
    :cond_9
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 419
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_19

    .line 421
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 423
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 424
    return-void
.end method

.method public static showIdle()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 382
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 383
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 385
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_16

    .line 386
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 388
    :cond_16
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 389
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 390
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 391
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 392
    return-void
.end method

.method private static showOverlay(Landroid/app/Activity;)Z
    .registers 9

    .prologue
    const/16 v7, 0x12c

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 486
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 594
    :cond_e
    :goto_e
    return v1

    .line 489
    :cond_f
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 492
    :try_start_12
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0b007c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1d} :catch_13b

    move-result-object v4

    .line 497
    sput-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 498
    const v0, 0x7f09027a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 499
    const v0, 0x7f09028e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    .line 500
    const v0, 0x7f09027b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 501
    const v0, 0x7f09028f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    .line 502
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stylePlayLoadingSpinner(Landroid/app/Activity;)V

    .line 503
    const v0, 0x7f09027d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 504
    const v0, 0x7f09027e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 505
    const v0, 0x7f09027f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 506
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    .line 507
    const v0, 0x7f090282

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 508
    const v0, 0x7f090283

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 509
    const v0, 0x7f090229

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 510
    const v0, 0x7f090228

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 511
    const v0, 0x7f0902c3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 512
    const v0, 0x7f0902c4

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 513
    const v0, 0x7f0902c5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 514
    const v0, 0x7f0902c2

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->meterView:Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    .line 515
    const v0, 0x7f0902c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    .line 516
    const v0, 0x7f09027c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    .line 517
    const/4 v0, 0x3

    new-array v5, v0, [Landroid/widget/TextView;

    const v0, 0x7f0902c6

    .line 518
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v1

    const v0, 0x7f0902c7

    .line 519
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    const v0, 0x7f0902c8

    .line 520
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v6

    sput-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 523
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSettings()V

    .line 524
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSeekBar()V

    .line 525
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 526
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;-><init>(Z)V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 527
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;

    invoke-direct {v5, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;-><init>(Z)V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    move v0, v1

    .line 528
    :goto_127
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    array-length v5, v5

    if-ge v0, v5, :cond_143

    .line 529
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    new-instance v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;

    invoke-direct {v6, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;-><init>(I)V

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_127

    .line 493
    :catch_13b
    move-exception v0

    .line 494
    const-string v2, "music_player_overlay_inflate"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 531
    :cond_143
    const v0, 0x7f090280

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 532
    const v0, 0x7f090288

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 533
    const v0, 0x7f090289

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 535
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 536
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 537
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 538
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 539
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 542
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v0, :cond_246

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_246

    .line 543
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 544
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_246

    .line 545
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 548
    :goto_1a3
    if-eqz v0, :cond_1b3

    .line 549
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 550
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 551
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 554
    :cond_1b3
    const/16 v0, 0xc0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    .line 555
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 556
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 557
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 558
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    :try_start_1cd
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 564
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 565
    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;-><init>()V

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 566
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 567
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 568
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 569
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 571
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_e

    .line 575
    const v4, 0x106000d

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 576
    const v4, 0x800033

    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    .line 577
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 578
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 579
    const/16 v5, 0x14

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 580
    const/16 v5, 0x12c

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 581
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 582
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    or-int/lit8 v5, v5, 0x20

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 586
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 587
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 588
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    :try_end_236
    .catch Ljava/lang/Throwable; {:try_start_1cd .. :try_end_236} :catch_239

    move v1, v2

    .line 589
    goto/16 :goto_e

    .line 590
    :catch_239
    move-exception v0

    .line 591
    const-string v2, "music_player_overlay_show"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 593
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    goto/16 :goto_e

    :cond_246
    move-object v0, v3

    goto/16 :goto_1a3
.end method

.method public static showPreparing()V
    .registers 2

    .prologue
    .line 395
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 396
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 398
    :cond_c
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 399
    return-void
.end method

.method private static startCurrentTrack(Z)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 846
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 874
    :cond_8
    :goto_8
    return v0

    .line 849
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 850
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 851
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 852
    if-eqz p0, :cond_23

    .line 853
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackResumedByUser()V

    :cond_23
    move v0, v1

    .line 856
    goto :goto_8

    .line 858
    :cond_25
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v2, :cond_33

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3c

    .line 859
    :cond_33
    if-eqz p0, :cond_8

    .line 860
    const v1, 0x7f0d0112

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_8

    .line 864
    :cond_3c
    const/4 v2, 0x0

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 865
    if-nez v2, :cond_4c

    .line 866
    const v1, 0x7f0d010b

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_8

    .line 869
    :cond_4c
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    .line 870
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 871
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 872
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 873
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V

    move v0, v1

    .line 874
    goto :goto_8
.end method

.method private static startProgressUpdates()V
    .registers 2

    .prologue
    .line 837
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 838
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    return-void
.end method

.method private static stopProgressUpdates()V
    .registers 2

    .prologue
    .line 842
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 843
    return-void
.end method

.method private static stylePlayLoadingSpinner(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 813
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 826
    :cond_8
    :goto_8
    return-void

    .line 816
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    .line 818
    :try_start_d
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 819
    if-eqz v0, :cond_8

    .line 820
    const v1, 0x7f06006f

    const v2, -0x994496

    .line 821
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 820
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_8

    .line 824
    :catch_23
    move-exception v0

    goto :goto_8
.end method

.method public static syncTrainingState()V
    .registers 1

    .prologue
    .line 250
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isTargetTrainingRunning()Z

    move-result v0

    .line 251
    if-eqz v0, :cond_9

    .line 252
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tryStartFromTrainingSync()V

    .line 254
    :cond_9
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->syncWithTrainingState(Z)V

    .line 255
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 1412
    if-nez p0, :cond_3

    .line 1419
    :goto_2
    return-void

    .line 1416
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_2

    .line 1417
    :catch_c
    move-exception v0

    goto :goto_2
.end method

.method static tryStartFromTrainingSync()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 289
    :cond_7
    :goto_7
    return-void

    .line 279
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 282
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 285
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez v0, :cond_28

    .line 286
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 288
    :cond_28
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    goto :goto_7
.end method

.method private static updateDragHover(I)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 987
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-gez v0, :cond_a

    .line 1027
    :cond_9
    return-void

    .line 990
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 991
    if-eqz v4, :cond_9

    .line 994
    if-gez p0, :cond_6f

    move v0, v2

    .line 997
    :goto_15
    if-lt v0, v4, :cond_19

    .line 998
    add-int/lit8 v0, v4, -0x1

    .line 1000
    :cond_19
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    if-eq v0, v1, :cond_9

    .line 1003
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1004
    sget v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1005
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1006
    if-gtz v1, :cond_34

    .line 1007
    const/4 v1, 0x0

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1008
    if-eqz v1, :cond_64

    const/16 v3, 0x2c

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    :cond_34
    :goto_34
    move v3, v2

    .line 1010
    :goto_35
    if-ge v3, v4, :cond_9

    .line 1011
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1012
    const/4 v2, 0x0

    .line 1013
    if-ge v5, v0, :cond_67

    .line 1014
    if-le v3, v5, :cond_46

    if-gt v3, v0, :cond_46

    .line 1015
    neg-int v2, v1

    int-to-float v2, v2

    .line 1022
    :cond_46
    :goto_46
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v8, 0x5a

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1023
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-eq v6, v2, :cond_60

    .line 1024
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1010
    :cond_60
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_35

    .line 1008
    :cond_64
    const/16 v1, 0x84

    goto :goto_34

    .line 1017
    :cond_67
    if-le v5, v0, :cond_46

    .line 1018
    if-lt v3, v0, :cond_46

    if-ge v3, v5, :cond_46

    .line 1019
    int-to-float v2, v1

    goto :goto_46

    :cond_6f
    move v0, p0

    goto :goto_15
.end method

.method private static updatePlayPauseLabel()V
    .registers 2

    .prologue
    .line 829
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 834
    :cond_a
    :goto_a
    return-void

    .line 832
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    .line 833
    :goto_1e
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    const-string v0, "\u23f8"

    :goto_24
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 832
    :cond_28
    const/4 v0, 0x0

    goto :goto_1e

    .line 833
    :cond_2a
    const-string v0, "\u25b6"

    goto :goto_24
.end method

.method private static updateTimeLabel(II)V
    .registers 5

    .prologue
    .line 769
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 773
    :goto_4
    return-void

    .line 772
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->formatTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
