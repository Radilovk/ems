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
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;,
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

.field private static compactMode:Z

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

.field private static playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

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

.field private static settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

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
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x3

    .line 128
    new-array v0, v3, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 133
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    .line 137
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 150
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 151
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 164
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    .line 1771
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->compactMode:Z

    return-void

    .line 164
    nop

    :array_0
    .array-data 4
        0x14
        0x1e
        0x32
    .end array-data

    :array_1
    .array-data 4
        0x32
        0x14
        0x14
    .end array-data

    :array_2
    .array-data 4
        0x55
        0xa
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    return v0
.end method

.method static synthetic access$1000()Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    return p0
.end method

.method static synthetic access$1100()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    return-void
.end method

.method static synthetic access$1202(I)I
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return p0
.end method

.method static synthetic access$1300(Z)Z
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    return p0
.end method

.method static synthetic access$1500()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    return-void
.end method

.method static synthetic access$1600()Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(FF)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveDragGhost(FF)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    return v0
.end method

.method static synthetic access$2000(F)I
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    return p0
.end method

.method static synthetic access$2100(I)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateDragHover(I)V

    return-void
.end method

.method static synthetic access$2200(F)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoScrollPlaylist(F)V

    return-void
.end method

.method static synthetic access$2300(II)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->finishDragReorder(II)V

    return-void
.end method

.method static synthetic access$2400(Z)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    return-void
.end method

.method static synthetic access$2500()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$2600()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/view/View;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findPlaylistRow(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    return-void
.end method

.method static synthetic access$3002(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3102(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return v0
.end method

.method static synthetic access$3202(I)I
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return p0
.end method

.method static synthetic access$3300(Landroid/app/Activity;I)I
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Landroid/view/View;FF)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showDragGhost(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$3502(Z)Z
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    return p0
.end method

.method static synthetic access$3600(II)I
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(II)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    return-void
.end method

.method static synthetic access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    return-object v0
.end method

.method static synthetic access$3900()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    return-void
.end method

.method static synthetic access$4000()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$4002(F)F
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$4100()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$4102(F)F
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$4200()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$4202(F)F
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$4300()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$4302(F)F
    .locals 0

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$4402(Z)Z
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$4500(II)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$4600(I)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeTrack(I)V

    return-void
.end method

.method static synthetic access$4700(I)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skip(I)V

    return-void
.end method

.method static synthetic access$4800(I)I
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4902(Z)Z
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$500(I)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyPreset(I)V

    return-void
.end method

.method static synthetic access$5000()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    return-void
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->closePlayer()V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method private static addHzRows(Landroid/app/Activity;)V
    .locals 10

    .prologue
    const/16 v7, 0x78

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 2217
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2230
    :cond_0
    :goto_0
    return-void

    .line 2220
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2221
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2224
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    .line 2225
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    .line 2226
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 2227
    :goto_1
    const-string v0, "Hz \u043f\u0440\u0438 \u0431\u0430\u0441"

    const-string v3, "Hz on bass"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hzRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;IIII)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2228
    const-string v0, "Hz \u043f\u0440\u0438 \u0432\u0438\u0441\u043e\u043a\u0438"

    const-string v3, "Hz on treble"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, v5

    move v6, v5

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hzRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;IIII)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 2226
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static addMinimize(Landroid/app/Activity;Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x24

    .line 890
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 894
    const-string v1, "\u2014"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 895
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    instance-of v2, v0, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 897
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 898
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 899
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 900
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 901
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 903
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private static addPrevNext(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 933
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 937
    const-string v1, "\u23ee"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 938
    const-string v2, "\u23ed"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 939
    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 942
    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 943
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 945
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 946
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private static addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 1199
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->resolve(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    invoke-direct {v2, p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez v0, :cond_2

    .line 1205
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1207
    :cond_2
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 1208
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1209
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1210
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    goto :goto_0
.end method

.method private static addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1191
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :goto_0
    return-void

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    const-string v1, "player_add_track"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1194
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_0
.end method

.method public static advanceToNextTrack()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 285
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 289
    :goto_0
    return v0

    .line 288
    :cond_0
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 289
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static applyExpandedState()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 769
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 770
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 772
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 773
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    sget-boolean v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->markToggle(Landroid/view/View;Z)V

    .line 776
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->markToggle(Landroid/view/View;Z)V

    .line 777
    return-void

    :cond_2
    move v0, v2

    .line 770
    goto :goto_0

    :cond_3
    move v1, v2

    .line 773
    goto :goto_1
.end method

.method private static applyPreset(I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 733
    if-ltz p0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    aget-object v0, v0, p0

    .line 737
    aget v1, v0, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 738
    aget v1, v0, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    .line 739
    aget v1, v0, v4

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 740
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 741
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v2, v0, v3

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 742
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v0, v0, v4

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 743
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSettingSteppers()V

    .line 744
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 745
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    goto :goto_0
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .locals 2

    .prologue
    .line 178
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "MusicPlayerHelper.attachMasterPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 192
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 196
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private static autoScrollPlaylist(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1342
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1346
    if-eqz v0, :cond_2

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1347
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1348
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 1349
    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1350
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 1351
    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpg-float v1, p0, v1

    if-gez v1, :cond_3

    .line 1352
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v1, -0x10

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0

    .line 1346
    :cond_2
    const/16 v0, 0x78

    goto :goto_1

    .line 1353
    :cond_3
    sub-int v0, v2, v0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 1354
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x10

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1626
    if-nez p0, :cond_0

    .line 1632
    :goto_0
    return-void

    .line 1629
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1630
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1631
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private static cancelPendingDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1564
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1565
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1566
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    .line 1568
    :cond_0
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1569
    return-void
.end method

.method private static clearDragHighlight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1393
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1394
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 1395
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 1396
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 1397
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1398
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1399
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1400
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1401
    return-void
.end method

.method private static clearOverlayRefs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1661
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1662
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 1663
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 1664
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 1665
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 1666
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 1667
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 1668
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 1669
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 1670
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 1671
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 1672
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1673
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1674
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1675
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1676
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 1677
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    .line 1678
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    .line 1679
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->meterView:Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    .line 1680
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 1681
    return-void
.end method

.method static closeFromDial()V
    .locals 1

    .prologue
    .line 1845
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->dismiss()V

    .line 1846
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1847
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStop()V

    .line 1848
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1849
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 1850
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 1851
    return-void
.end method

.method private static closePlayer()V
    .locals 1

    .prologue
    .line 1635
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1636
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStop()V

    .line 1637
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1638
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 1639
    return-void
.end method

.method private static configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V
    .locals 1

    .prologue
    .line 708
    if-nez p0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 712
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 713
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 714
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 715
    const-string v0, "%"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0, p4}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 717
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;

    invoke-direct {v0, p5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static configureSeekBar()V
    .locals 2

    .prologue
    .line 686
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 690
    :cond_0
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setMaxProcess(I)V

    .line 691
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 692
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setClickable(Z)V

    .line 693
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setFocusable(Z)V

    .line 694
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static configureSettings()V
    .locals 14

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x5

    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 700
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v4

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 701
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v8

    const/4 v9, 0x1

    move v5, v1

    move v6, v2

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 702
    sget-object v8, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v10, 0x50

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v12

    const/4 v13, 0x2

    move v9, v1

    move v11, v3

    invoke-static/range {v8 .. v13}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 703
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v4

    const/4 v5, 0x3

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 704
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    .line 705
    return-void
.end method

.method public static currentTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1811
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_0

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dismissOverlay(Z)V
    .locals 1

    .prologue
    .line 1642
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 1643
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    .line 1644
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 1645
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1647
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :goto_0
    if-nez p0, :cond_0

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez v0, :cond_0

    .line 1651
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1652
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 1655
    :cond_0
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez v0, :cond_1

    .line 1656
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1658
    :cond_1
    return-void

    .line 1648
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static dp(Landroid/app/Activity;I)I
    .locals 2

    .prologue
    .line 1719
    if-nez p0, :cond_0

    .line 1723
    :goto_0
    return p1

    .line 1722
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1723
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_0
.end method

.method private static findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1259
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1267
    :goto_0
    return-object v0

    .line 1262
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 1263
    instance-of v2, v0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    .line 1264
    check-cast v0, Landroid/widget/ScrollView;

    goto :goto_0

    .line 1262
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 1267
    goto :goto_0
.end method

.method private static findPlaylistRow(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1419
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1432
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    .line 1423
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1424
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1425
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 1429
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1430
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1432
    goto :goto_0
.end method

.method private static finishDragReorder(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1374
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1375
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 1376
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 1377
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 1378
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1379
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1380
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1381
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1382
    if-eq p0, p1, :cond_1

    .line 1383
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1386
    if-eqz v0, :cond_0

    .line 1387
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static formatTime(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1098
    if-gez p0, :cond_0

    .line 1099
    const/4 p0, 0x0

    .line 1101
    :cond_0
    div-int/lit16 v0, p0, 0x3e8

    .line 1102
    div-int/lit8 v1, v0, 0x3c

    .line 1103
    rem-int/lit8 v0, v0, 0x3c

    .line 1104
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    :goto_0
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

    .line 1104
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1615
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    .line 1617
    if-eqz v0, :cond_0

    .line 1618
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :cond_0
    :goto_0
    return-void

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    const-string v1, "player_uri_persist"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static hasPlaylistTracks()Z
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hidePlayerOverlay()V
    .locals 1

    .prologue
    .line 1572
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1573
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 1574
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->dismiss()V

    .line 1575
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 1577
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1579
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1581
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1586
    return-void

    .line 1582
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static hzRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;IIII)Landroid/view/View;
    .locals 7

    .prologue
    .line 2234
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2235
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2236
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2237
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2238
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2239
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2240
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2241
    if-eqz p2, :cond_1

    .line 2242
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2243
    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2244
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2245
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 2246
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    move-object v0, v1

    .line 2245
    :goto_0
    invoke-virtual {v6, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2252
    :goto_1
    invoke-static {p4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingUnit(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41880000    # 17.0f

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v5

    .line 2253
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;-><init>(IIIILcom/isaigu/gymapp/widget/XemsUi$Stepper;)V

    .line 2254
    iget-object v1, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 2255
    iget-object v1, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 2256
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2257
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2258
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2259
    iget-object v1, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2260
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aput-object v5, v0, p4

    .line 2261
    return-object v6

    .line 2247
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    .line 2249
    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2250
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private static isAnyTrainingRunning()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 431
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_0

    move v0, v1

    .line 447
    :goto_0
    return v0

    .line 435
    :cond_0
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 436
    if-nez v3, :cond_1

    move v0, v1

    .line 437
    goto :goto_0

    :cond_1
    move v2, v1

    .line 439
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 440
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 441
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 442
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 445
    :catch_0
    move-exception v0

    :cond_3
    move v0, v1

    .line 447
    goto :goto_0
.end method

.method static isOverlayOpen()Z
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    return v0
.end method

.method private static isOverlayShowing()Z
    .locals 1

    .prologue
    .line 278
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->isShowing()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    .line 278
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    goto :goto_0
.end method

.method private static isTargetTrainingRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 379
    :try_start_0
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 381
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static loadPlaylist(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 559
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 560
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 561
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 562
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 564
    :cond_0
    return-void

    .line 562
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lockPlaylistScroll(Z)V
    .locals 1

    .prologue
    .line 1271
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 1272
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1274
    :cond_0
    return-void
.end method

.method private static mapSeekProgressToMs(II)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    .line 1082
    if-gtz p1, :cond_1

    move p1, v0

    .line 1094
    :cond_0
    :goto_0
    return p1

    .line 1086
    :cond_1
    if-gez p0, :cond_2

    .line 1091
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1094
    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    goto :goto_0

    .line 1088
    :cond_2
    if-le p0, v1, :cond_3

    move v0, v1

    .line 1089
    goto :goto_1

    :cond_3
    move v0, p0

    goto :goto_1
.end method

.method private static markToggle(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 780
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 786
    :goto_0
    return-void

    .line 783
    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    move v1, v0

    .line 784
    :goto_1
    if-eqz p1, :cond_2

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 783
    :goto_2
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleRound(Landroid/view/View;II)V

    .line 785
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 783
    :cond_1
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    move v1, v0

    goto :goto_1

    .line 784
    :cond_2
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_2
.end method

.method static minimize(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1830
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->compactMode:Z

    .line 1831
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1833
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1838
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicDial;->show(Landroid/app/Activity;)V

    .line 1839
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 1842
    :cond_1
    return-void

    .line 1834
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static moveDragGhost(FF)V
    .locals 4

    .prologue
    .line 1534
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1550
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1538
    if-eqz v0, :cond_0

    .line 1541
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1542
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1543
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1544
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 1545
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1546
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    sub-float v2, p0, v2

    sget v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1547
    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p1, v1

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1548
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private static moveOverlayWindow(II)V
    .locals 2

    .prologue
    .line 1684
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1691
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1688
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1689
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1690
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private static movePlaylistItem(II)V
    .locals 2

    .prologue
    .line 1239
    if-eq p0, p1, :cond_0

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 1243
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1244
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v0, p0, :cond_3

    .line 1245
    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1251
    :cond_2
    :goto_1
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_0

    .line 1253
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 1254
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    goto :goto_0

    .line 1246
    :cond_3
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ge p0, v0, :cond_4

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-lt p1, v0, :cond_4

    .line 1247
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_1

    .line 1248
    :cond_4
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-le p0, v0, :cond_2

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gt p1, v0, :cond_2

    .line 1249
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_1
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 239
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onActivityResultImpl(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "MusicPlayerHelper.onActivityResult"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static onActivityResultImpl(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 246
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 247
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    .line 248
    const/16 v1, 0x4255

    if-ne p0, v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_0

    .line 255
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 259
    :goto_1
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 260
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 261
    if-eqz v3, :cond_2

    .line 262
    invoke-static {v1, p2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 263
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 259
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 272
    invoke-static {v1, p2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 273
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public static onPlaybackEndedNaturally()V
    .locals 0

    .prologue
    .line 374
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 375
    return-void
.end method

.method public static onPlaybackPausedByUser()V
    .locals 0

    .prologue
    .line 366
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 367
    return-void
.end method

.method public static onPlaybackResumedByUser()V
    .locals 0

    .prologue
    .line 370
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 371
    return-void
.end method

.method public static onPlaybackStarted()V
    .locals 0

    .prologue
    .line 361
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->onPlayerPlaybackStarted()V

    .line 362
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 363
    return-void
.end method

.method public static onTrainingFullStop()V
    .locals 2

    .prologue
    .line 321
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onTrainingFullStopImpl()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v1, "MusicPlayerHelper.onTrainingFullStop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static onTrainingFullStopImpl()V
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V

    .line 329
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 333
    :cond_0
    return-void
.end method

.method static openFull(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1816
    if-nez p0, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->compactMode:Z

    .line 1820
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->dismiss()V

    .line 1821
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->reShowOverlay(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1822
    :cond_2
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showOverlay(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1823
    const v0, 0x7f0d0113

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private static persistPlaylist(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 567
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 568
    return-void
.end method

.method private static persistSettings()V
    .locals 2

    .prologue
    .line 765
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->saveSettings(Landroid/content/Context;)V

    .line 766
    return-void
.end method

.method private static reShowOverlay(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1589
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1609
    :goto_0
    return v0

    .line 1593
    :cond_1
    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1594
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1595
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 1596
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1597
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 1598
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 1599
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1600
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    const-string v2, "music_player_overlay_reshow"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1607
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1608
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    move v0, v1

    .line 1609
    goto :goto_0

    .line 1602
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static rebuildPlaylistViews(Landroid/app/Activity;)V
    .locals 14

    .prologue
    const/16 v13, 0x1e

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 789
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 793
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    move v4, v5

    .line 794
    :goto_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    .line 796
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 799
    const v1, 0x7f0b007d

    :try_start_0
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 803
    const v1, 0x7f090284

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 804
    const v2, 0x7f090285

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 805
    sget v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v4, v6, :cond_6

    move v9, v8

    .line 806
    :goto_2
    if-eqz v9, :cond_7

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v7, 0x26

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    :goto_3
    const/16 v7, 0xc

    .line 807
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v7

    int-to-float v11, v7

    if-eqz v9, :cond_8

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v12, 0xaa

    invoke-static {v7, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    :goto_4
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v12

    .line 806
    invoke-static {v6, v11, v7, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    if-eqz v1, :cond_2

    .line 809
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_9

    const-string v6, "\u25b6  "

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    if-eqz v9, :cond_a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 811
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eqz v9, :cond_b

    move v0, v8

    :goto_7
    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 813
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    :cond_2
    instance-of v0, v2, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 816
    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 818
    :cond_3
    instance-of v0, v3, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 819
    const-string v0, "\u2715"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v6, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v6

    .line 820
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;-><init>(I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 822
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object v0, v3

    .line 823
    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v3

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 825
    :cond_4
    if-eqz v2, :cond_5

    .line 826
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 828
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 794
    :goto_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_6
    move v9, v5

    .line 805
    goto/16 :goto_2

    .line 806
    :cond_7
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    goto/16 :goto_3

    .line 807
    :cond_8
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    goto/16 :goto_4

    .line 809
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ".  "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 810
    :cond_a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_6

    :cond_b
    move v0, v5

    .line 812
    goto/16 :goto_7

    .line 830
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    goto/16 :goto_0

    .line 800
    :catch_0
    move-exception v0

    goto :goto_8
.end method

.method private static refreshPresetHighlight()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 750
    :goto_0
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 751
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    aget-object v4, v2, v0

    .line 752
    if-nez v4, :cond_0

    .line 750
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    :cond_0
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    aget-object v2, v2, v0

    .line 756
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v5

    aget v6, v2, v1

    if-ne v5, v6, :cond_1

    .line 757
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v5

    aget v6, v2, v3

    if-ne v5, v6, :cond_1

    .line 758
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v5

    const/4 v6, 0x2

    aget v2, v2, v6

    if-ne v5, v2, :cond_1

    move v2, v3

    .line 759
    :goto_2
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleChip(Landroid/widget/TextView;Z)V

    .line 760
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_1
    move v2, v1

    .line 758
    goto :goto_2

    .line 762
    :cond_2
    return-void
.end method

.method private static refreshSeekFromPlayer()V
    .locals 8

    .prologue
    const/16 v1, 0x3e8

    const/4 v0, 0x0

    .line 1054
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    .line 1055
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    if-eqz v2, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v2

    .line 1059
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v3

    .line 1060
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    .line 1061
    if-gtz v2, :cond_2

    .line 1062
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    goto :goto_0

    .line 1065
    :cond_2
    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    int-to-long v2, v2

    div-long v2, v4, v2

    long-to-int v2, v2

    .line 1066
    if-gez v2, :cond_3

    .line 1071
    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    goto :goto_0

    .line 1068
    :cond_3
    if-le v2, v1, :cond_4

    move v0, v1

    .line 1069
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static refreshSettingSteppers()V
    .locals 4

    .prologue
    .line 984
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 985
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 986
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v1, v1, v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingUnit(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    :cond_1
    return-void
.end method

.method private static refreshTrackTitle()V
    .locals 3

    .prologue
    .line 1043
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1046
    :cond_0
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_1

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1047
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1050
    :cond_2
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static refreshTransportState()V
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 294
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 297
    :goto_0
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 299
    :cond_0
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeDragGhost()V
    .locals 2

    .prologue
    .line 1553
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1561
    :goto_0
    return-void

    .line 1556
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1557
    if-eqz v0, :cond_1

    .line 1558
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1560
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    goto :goto_0
.end method

.method private static removeTrack(I)V
    .locals 2

    .prologue
    .line 1016
    if-ltz p0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1020
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1021
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 1023
    :cond_2
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1024
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1025
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1029
    :cond_3
    :goto_1
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_4

    .line 1031
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 1032
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1034
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1035
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    goto :goto_0

    .line 1026
    :cond_5
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-lt p0, v0, :cond_6

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 1027
    :cond_6
    const/4 v0, 0x0

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_1
.end method

.method private static replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 952
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 956
    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 957
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setVisibility(I)V

    .line 958
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 959
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 961
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    const/high16 v2, 0x41880000    # 17.0f

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v5

    .line 962
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;-><init>(IIIILcom/isaigu/gymapp/widget/XemsUi$Stepper;)V

    .line 963
    iget-object v1, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 964
    iget-object v1, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 965
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 966
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 967
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 968
    iget-object v1, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 969
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aput-object v5, v0, p2

    goto :goto_0
.end method

.method private static requestTrainingPause()V
    .locals 2

    .prologue
    .line 404
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_2

    .line 410
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    goto :goto_0

    .line 413
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static requestTrainingStart()V
    .locals 2

    .prologue
    .line 387
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v1, :cond_2

    .line 393
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->start()V

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0

    .line 396
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static requestTrainingStop()V
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_0
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static resetPlaylistRowTransforms()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1359
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1371
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1362
    :goto_0
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1363
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1364
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1365
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1366
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1367
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1368
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1369
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static resizeOverlayWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1694
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1695
    if-eqz v0, :cond_0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1696
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 1700
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    .line 1701
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1702
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1700
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1703
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1704
    const/16 v3, 0xf8

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1705
    if-ge v1, v0, :cond_2

    .line 1708
    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1709
    if-eqz v1, :cond_0

    .line 1710
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1711
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1712
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1713
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1714
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static resolveActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 498
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 499
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 500
    check-cast v0, Landroid/app/Activity;

    .line 508
    :goto_1
    return-object v0

    .line 502
    :cond_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 503
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 505
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 508
    goto :goto_1
.end method

.method private static resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1436
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1438
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1439
    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1441
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1442
    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :goto_0
    return-object v0

    .line 1445
    :catch_0
    move-exception v0

    .line 1448
    :cond_0
    invoke-static {v1, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1449
    if-eqz v0, :cond_1

    .line 1450
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1452
    goto :goto_0
.end method

.method private static resolveDropIndex(F)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1277
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1278
    :cond_0
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-ltz v1, :cond_1

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1295
    :cond_1
    :goto_0
    return v0

    .line 1280
    :cond_2
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1281
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1282
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1283
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1284
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1285
    const/4 v4, 0x1

    aget v3, v3, v4

    .line 1286
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 1287
    int-to-float v4, v3

    cmpl-float v4, p0, v4

    if-ltz v4, :cond_3

    int-to-float v4, v2

    cmpg-float v4, p0, v4

    if-gtz v4, :cond_3

    .line 1288
    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    .line 1289
    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1291
    :cond_3
    int-to-float v2, v3

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_1

    .line 1281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1295
    :cond_4
    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method static resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 516
    if-eqz p0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-object p0

    .line 519
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 520
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 521
    if-nez p0, :cond_0

    .line 525
    :cond_2
    if-eqz p1, :cond_3

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 527
    if-nez p0, :cond_0

    .line 531
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 532
    if-nez p0, :cond_0

    .line 535
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    goto :goto_0
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 539
    if-nez p0, :cond_0

    .line 540
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 542
    :cond_0
    if-nez p0, :cond_2

    move-object v0, v2

    .line 555
    :cond_1
    :goto_0
    return-object v0

    .line 545
    :cond_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 546
    if-nez v3, :cond_3

    move-object v0, v2

    .line 547
    goto :goto_0

    .line 549
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 550
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 551
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 549
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 555
    goto :goto_0
.end method

.method private static resolveThemeColor(Landroid/app/Activity;II)I
    .locals 1

    .prologue
    .line 1456
    if-nez p0, :cond_0

    .line 1462
    :goto_0
    return p2

    .line 1460
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 1461
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static restoreDragSourceRow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1404
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1416
    :goto_0
    return-void

    .line 1407
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1408
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1409
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1410
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1411
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1412
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1414
    :cond_1
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    .line 1415
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private static restoreOverlayAfterPick()V
    .locals 2

    .prologue
    .line 1217
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1218
    if-nez v0, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1223
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1224
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1226
    :cond_2
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1227
    if-eqz v0, :cond_0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1228
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 1229
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1230
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1231
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    const-string v1, "music_player_restore_pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V
    .locals 1

    .prologue
    .line 723
    if-nez p0, :cond_0

    .line 730
    :goto_0
    return-void

    .line 727
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static setPlayLoadingUi(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1109
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1110
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1111
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1113
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1114
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    if-eqz p0, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1110
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1111
    goto :goto_1

    .line 1114
    :cond_4
    const/16 v1, 0x8

    goto :goto_2
.end method

.method static settingText(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2266
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result v0

    .line 2267
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    if-gtz v0, :cond_0

    .line 2268
    const-string v0, "\u0438\u0437\u043a\u043b."

    const-string v1, "off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2270
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static settingUnit(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2274
    if-ne p0, v1, :cond_0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 2275
    const-string v0, ""

    .line 2277
    :goto_0
    return-object v0

    :cond_0
    if-lt p0, v1, :cond_1

    const-string v0, "Hz"

    goto :goto_0

    :cond_1
    const-string v0, "%"

    goto :goto_0
.end method

.method private static settingValue(I)I
    .locals 1

    .prologue
    .line 973
    packed-switch p0, :pswitch_data_0

    .line 979
    :pswitch_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v0

    :goto_0
    return v0

    .line 974
    :pswitch_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v0

    goto :goto_0

    .line 975
    :pswitch_2
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v0

    goto :goto_0

    .line 976
    :pswitch_3
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v0

    goto :goto_0

    .line 977
    :pswitch_4
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHzBass()I

    move-result v0

    goto :goto_0

    .line 978
    :pswitch_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHzTreble()I

    move-result v0

    goto :goto_0

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 201
    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-nez p1, :cond_2

    .line 205
    const v1, 0x7f0d011a

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 209
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 210
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 214
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hidePlayerOverlay()V

    goto :goto_0

    .line 218
    :cond_4
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->compactMode:Z

    if-eqz v1, :cond_5

    .line 220
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->loadPlaylist(Landroid/app/Activity;)V

    .line 221
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->loadSettings(Landroid/content/Context;)V

    .line 222
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicDial;->show(Landroid/app/Activity;)V

    goto :goto_0

    .line 225
    :cond_5
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_6

    .line 226
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->reShowOverlay(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    :cond_6
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->loadPlaylist(Landroid/app/Activity;)V

    .line 231
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->loadSettings(Landroid/content/Context;)V

    .line 232
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showOverlay(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const v1, 0x7f0d0113

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public static showActive(II)V
    .locals 2

    .prologue
    .line 473
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 476
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 477
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 478
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_1

    .line 479
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 481
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 482
    return-void
.end method

.method private static showDragGhost(Landroid/view/View;FF)V
    .locals 12

    .prologue
    const v11, -0x994496

    const v10, 0x3f87ae14    # 1.06f

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1467
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1468
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1469
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 1470
    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    if-nez v2, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    const v0, 0x7f090284

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1474
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1476
    :goto_1
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1477
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1478
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1479
    const/16 v4, 0xa

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 1480
    const/16 v5, 0x8

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 1481
    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1482
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1483
    const v5, 0x7f0600c3

    const v6, -0xdadadb

    invoke-static {v1, v5, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1484
    const/16 v5, 0xa

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1485
    invoke-static {v1, v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v6, 0x7f06006f

    .line 1486
    invoke-static {v1, v6, v11}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v6

    .line 1485
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1487
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1488
    const v4, 0x3f7ae148    # 0.98f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1489
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1490
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1491
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 1492
    const/16 v4, 0x12

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1493
    const/16 v4, 0x12

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    .line 1496
    :cond_2
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1497
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1499
    const v0, 0x7f0600e6

    const v5, -0x171718

    invoke-static {v1, v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1500
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1501
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1502
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1505
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1506
    const-string v5, "\u2630"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1507
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1508
    const v5, 0x7f06006f

    invoke-static {v1, v5, v11}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1509
    const/16 v5, 0x8

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-virtual {v0, v5, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1511
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1512
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1514
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1515
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1517
    :goto_3
    new-array v4, v8, [I

    .line 1518
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1519
    aget v5, v4, v7

    int-to-float v5, v5

    sub-float v5, p1, v5

    sput v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    .line 1520
    aget v4, v4, v9

    int-to-float v4, v4

    sub-float v4, p2, v4

    sput v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    .line 1522
    new-array v4, v8, [I

    .line 1523
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1525
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1526
    const/16 v0, 0x33

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1527
    aget v0, v4, v7

    int-to-float v0, v0

    sub-float v0, p1, v0

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1528
    aget v0, v4, v9

    int-to-float v0, v0

    sub-float v0, p2, v0

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1529
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    goto/16 :goto_0

    .line 1474
    :cond_3
    const-string v0, ""

    goto/16 :goto_1

    .line 1514
    :cond_4
    const/16 v0, 0x11c

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    goto :goto_2

    .line 1515
    :cond_5
    const/16 v4, 0x28

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    goto :goto_3
.end method

.method public static showError(I)V
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 488
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 489
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_1

    .line 491
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 493
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 494
    return-void
.end method

.method public static showIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 454
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_1

    .line 455
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 457
    :cond_1
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 458
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 459
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 460
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 461
    return-void
.end method

.method private static showOverlay(Landroid/app/Activity;)Z
    .locals 8

    .prologue
    const/16 v7, 0x12c

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 571
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v1

    .line 574
    :cond_1
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 577
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0b007c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 582
    sput-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 583
    const v0, 0x7f09027a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 584
    const v0, 0x7f09028e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    .line 585
    const v0, 0x7f09027b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 586
    const v0, 0x7f09028f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    .line 587
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stylePlayLoadingSpinner(Landroid/app/Activity;)V

    .line 588
    const v0, 0x7f09027d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 589
    const v0, 0x7f09027e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 590
    const v0, 0x7f09027f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 591
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    .line 592
    const v0, 0x7f090282

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 593
    const v0, 0x7f090283

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 594
    const v0, 0x7f090229

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 595
    const v0, 0x7f090228

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 596
    const v0, 0x7f0902c3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 597
    const v0, 0x7f0902c4

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 598
    const v0, 0x7f0902c5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 599
    const v0, 0x7f0902c2

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->meterView:Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    .line 600
    const v0, 0x7f0902c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    .line 601
    const v0, 0x7f09027c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    .line 602
    const/4 v0, 0x3

    new-array v5, v0, [Landroid/widget/TextView;

    const v0, 0x7f0902c6

    .line 603
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v1

    const v0, 0x7f0902c7

    .line 604
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    const v0, 0x7f0902c8

    .line 605
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v6

    sput-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 608
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 609
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSettings()V

    .line 610
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleOverlay(Landroid/app/Activity;Landroid/view/View;)V

    .line 611
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSeekBar()V

    .line 612
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 613
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;-><init>(Z)V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 614
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;

    invoke-direct {v5, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;-><init>(Z)V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    move v0, v1

    .line 615
    :goto_1
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 616
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    new-instance v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;

    invoke-direct {v6, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;-><init>(I)V

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 578
    :catch_0
    move-exception v0

    .line 579
    const-string v2, "music_player_overlay_inflate"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 618
    :cond_2
    const v0, 0x7f090280

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 619
    const v0, 0x7f090288

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 620
    const v0, 0x7f090289

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 622
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 623
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 624
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 625
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 626
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 629
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_4

    .line 630
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 631
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_4

    .line 632
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 635
    :goto_2
    if-eqz v0, :cond_3

    .line 636
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 637
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 638
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 641
    :cond_3
    const/16 v0, 0xc0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    .line 642
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 643
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 644
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 645
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    :try_start_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 652
    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;-><init>()V

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 653
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 654
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 655
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 656
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 658
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_0

    .line 662
    const v4, 0x106000d

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 663
    const v4, 0x800033

    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    .line 664
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 665
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 666
    const/16 v5, 0x14

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 667
    const/16 v5, 0x12c

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 668
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 669
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    or-int/lit8 v5, v5, 0x20

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 673
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 674
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 675
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 676
    goto/16 :goto_0

    .line 677
    :catch_1
    move-exception v0

    .line 678
    const-string v2, "music_player_overlay_show"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 680
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    goto/16 :goto_0

    :cond_4
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public static showPreparing()V
    .locals 2

    .prologue
    .line 464
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    .line 465
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 468
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 469
    return-void
.end method

.method private static skip(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 993
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int v2, v0, p0

    .line 997
    if-ltz v2, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1000
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1001
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1002
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1004
    :cond_2
    sput v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1005
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1006
    const/4 v2, 0x0

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 1007
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1008
    if-eqz v0, :cond_4

    .line 1009
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    goto :goto_0

    .line 1000
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1011
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    goto :goto_0
.end method

.method public static skipTrack(I)V
    .locals 0

    .prologue
    .line 1806
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skip(I)V

    .line 1807
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    .line 1808
    return-void
.end method

.method private static startCurrentTrack(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1158
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return v0

    .line 1161
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1162
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1163
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1164
    if-eqz p0, :cond_2

    .line 1165
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackResumedByUser()V

    :cond_2
    move v0, v1

    .line 1168
    goto :goto_0

    .line 1170
    :cond_3
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v2, :cond_4

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 1171
    :cond_4
    if-eqz p0, :cond_0

    .line 1172
    const v1, 0x7f0d0112

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_0

    .line 1176
    :cond_5
    const/4 v2, 0x0

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 1177
    if-nez v2, :cond_6

    .line 1178
    const v1, 0x7f0d010b

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_0

    .line 1181
    :cond_6
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    .line 1182
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 1183
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1184
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1185
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V

    move v0, v1

    .line 1186
    goto :goto_0
.end method

.method private static startProgressUpdates()V
    .locals 2

    .prologue
    .line 1149
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1150
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1151
    return-void
.end method

.method private static stopProgressUpdates()V
    .locals 2

    .prologue
    .line 1154
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1155
    return-void
.end method

.method private static styleChip(Landroid/widget/TextView;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 923
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 924
    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 925
    if-eqz p1, :cond_0

    .line 926
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v3, 0x2a

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    int-to-float v3, v1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v5, 0xcc

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 927
    :goto_0
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    int-to-float v1, v1

    .line 925
    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    if-eqz p1, :cond_1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 929
    return-void

    .line 927
    :cond_0
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    int-to-float v3, v1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_0

    .line 928
    :cond_1
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_1
.end method

.method private static styleOverlay(Landroid/app/Activity;Landroid/view/View;)V
    .locals 11

    .prologue
    .line 838
    :try_start_0
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 839
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    aput v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v6, -0x1000000

    const v7, 0x3e4ccccd    # 0.2f

    .line 840
    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v5

    aput v5, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 841
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 844
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v3, 0x7

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 845
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x38

    .line 846
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    aput-object v4, v3, v1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 847
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;-><init>(Landroid/graphics/drawable/LayerDrawable;)V

    .line 849
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 850
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 851
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 854
    :cond_0
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 856
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setElevation(F)V

    .line 857
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 859
    :cond_1
    const v1, 0x7f090288

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleRound(Landroid/view/View;II)V

    .line 860
    const v1, 0x7f090289

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleRound(Landroid/view/View;II)V

    .line 861
    const v1, 0x7f090288

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addMinimize(Landroid/app/Activity;Landroid/view/View;)V

    .line 862
    const v1, 0x7f090280

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 863
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 864
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    const-string v3, "+  \u0414\u043e\u0431\u0430\u0432\u0438 \u043f\u0435\u0441\u043d\u0438"

    const-string v4, "+  Add songs"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 866
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/16 v3, 0x14

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/4 v5, 0x1

    .line 867
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 866
    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x14

    .line 867
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    .line 866
    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 868
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 870
    :cond_2
    const v1, 0x7f0902c1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 871
    if-eqz v1, :cond_3

    .line 872
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/16 v3, 0xe

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    :cond_3
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 875
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 877
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addPrevNext(Landroid/app/Activity;)V

    .line 878
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 879
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 880
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x50

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 881
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x3

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 882
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addHzRows(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v1

    .line 884
    const-string v2, "music_player_style"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static stylePlayLoadingSpinner(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 1119
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1124
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1125
    if-eqz v0, :cond_0

    .line 1126
    const v1, 0x7f06006f

    const v2, -0x994496

    .line 1127
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1126
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static styleRound(Landroid/view/View;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 908
    if-nez p0, :cond_0

    .line 920
    :goto_0
    return-void

    .line 911
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 912
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 913
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 914
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 915
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 916
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 917
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 919
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static syncTrainingState()V
    .locals 2

    .prologue
    .line 304
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingStateImpl()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string v1, "MusicPlayerHelper.syncTrainingState"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static syncTrainingStateImpl()V
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isTargetTrainingRunning()Z

    move-result v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tryStartFromTrainingSync()V

    .line 315
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->syncWithTrainingState(Z)V

    .line 316
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 1727
    if-nez p0, :cond_0

    .line 1734
    :goto_0
    return-void

    .line 1731
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1732
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static togglePlayPause()V
    .locals 6

    .prologue
    .line 1776
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1777
    sget-wide v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1c2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    sput-wide v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    .line 1781
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1785
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1786
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackResumedByUser()V

    .line 1787
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1794
    :goto_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 1795
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    goto :goto_0

    .line 1791
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1792
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackPausedByUser()V

    goto :goto_1

    .line 1798
    :cond_3
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez v0, :cond_4

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1799
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1801
    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    goto :goto_0
.end method

.method private static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1039
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static tryStartFromTrainingSync()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez v0, :cond_3

    .line 355
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 357
    :cond_3
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    goto :goto_0
.end method

.method private static updateDragHover(I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1299
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-gez v0, :cond_1

    .line 1339
    :cond_0
    return-void

    .line 1302
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 1303
    if-eqz v4, :cond_0

    .line 1306
    if-gez p0, :cond_8

    move v0, v2

    .line 1309
    :goto_0
    if-lt v0, v4, :cond_2

    .line 1310
    add-int/lit8 v0, v4, -0x1

    .line 1312
    :cond_2
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    if-eq v0, v1, :cond_0

    .line 1315
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1316
    sget v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1317
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1318
    if-gtz v1, :cond_3

    .line 1319
    const/4 v1, 0x0

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1320
    if-eqz v1, :cond_6

    const/16 v3, 0x2c

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    :cond_3
    :goto_1
    move v3, v2

    .line 1322
    :goto_2
    if-ge v3, v4, :cond_0

    .line 1323
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1324
    const/4 v2, 0x0

    .line 1325
    if-ge v5, v0, :cond_7

    .line 1326
    if-le v3, v5, :cond_4

    if-gt v3, v0, :cond_4

    .line 1327
    neg-int v2, v1

    int-to-float v2, v2

    .line 1334
    :cond_4
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v8, 0x5a

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1335
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-eq v6, v2, :cond_5

    .line 1336
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1322
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 1320
    :cond_6
    const/16 v1, 0x84

    goto :goto_1

    .line 1329
    :cond_7
    if-le v5, v0, :cond_4

    .line 1330
    if-lt v3, v0, :cond_4

    if-ge v3, v5, :cond_4

    .line 1331
    int-to-float v2, v1

    goto :goto_3

    :cond_8
    move v0, p0

    goto :goto_0
.end method

.method private static updatePlayPauseLabel()V
    .locals 3

    .prologue
    .line 1135
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    .line 1136
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1140
    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v1, :cond_4

    .line 1141
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/XemsIcon;->setType(I)V

    goto :goto_0

    .line 1139
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1142
    :cond_3
    const/4 v0, 0x7

    goto :goto_2

    .line 1144
    :cond_4
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const-string v0, "\u23f8"

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v0, "\u25b6"

    goto :goto_3
.end method

.method private static updateTimeLabel(II)V
    .locals 3

    .prologue
    .line 1075
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1078
    :cond_0
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

    goto :goto_0
.end method
