.class public final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$AutoTuneListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;,
        Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;
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

.field private static final OVERLAY_MAX_HEIGHT_FRACTION:F = 0.82f

.field private static final OVERLAY_MAX_HEIGHT_MARGIN_DP:I = 0x30

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

.field private static autoChip:Landroid/widget/TextView;

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

.field private static overlayScrollView:Landroid/widget/ScrollView;

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
            "Ljava/util/ArrayList<",
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
    .registers 4

    .line 131
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/widget/TextView;

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 137
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    .line 141
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 154
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 155
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 169
    const/4 v1, 0x3

    new-array v2, v1, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_4a

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_54

    const/4 v3, 0x1

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_5e

    const/4 v1, 0x2

    aput-object v0, v2, v1

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    .line 1830
    sput-boolean v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->compactMode:Z

    return-void

    nop

    :array_4a
    .array-data 4
        0x14
        0x1e
        0x32
    .end array-data

    :array_54
    .array-data 4
        0x32
        0x14
        0x14
    .end array-data

    :array_5e
    .array-data 4
        0x55
        0xa
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    return v0
.end method

.method static synthetic access$1000()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    return p0
.end method

.method static synthetic access$1100()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    return-void
.end method

.method static synthetic access$1202(I)I
    .registers 1

    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return p0
.end method

.method static synthetic access$1300(Z)Z
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1402(I)I
    .registers 1

    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    return p0
.end method

.method static synthetic access$1500()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    return-void
.end method

.method static synthetic access$1600()Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object p0
.end method

.method static synthetic access$1700()Ljava/lang/Runnable;
    .registers 1

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1800()Landroid/os/Handler;
    .registers 1

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(FF)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveDragGhost(FF)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    return v0
.end method

.method static synthetic access$2000(F)I
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    return p0
.end method

.method static synthetic access$2100(I)V
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateDragHover(I)V

    return-void
.end method

.method static synthetic access$2200(F)V
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoScrollPlaylist(F)V

    return-void
.end method

.method static synthetic access$2300(II)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->finishDragReorder(II)V

    return-void
.end method

.method static synthetic access$2400(Z)V
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    return-void
.end method

.method static synthetic access$2500()Landroid/widget/ScrollView;
    .registers 1

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;
    .registers 1

    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$2600()Landroid/widget/LinearLayout;
    .registers 1

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findPlaylistRow(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    return-void
.end method

.method static synthetic access$3002(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3102(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3200()I
    .registers 1

    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return v0
.end method

.method static synthetic access$3202(I)I
    .registers 1

    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return p0
.end method

.method static synthetic access$3300(Landroid/app/Activity;I)I
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Landroid/view/View;FF)V
    .registers 3

    .line 42
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showDragGhost(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$3502(Z)Z
    .registers 1

    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    return p0
.end method

.method static synthetic access$3600(II)I
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(II)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    return-void
.end method

.method static synthetic access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    .registers 1

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    return-object v0
.end method

.method static synthetic access$3900()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    return-void
.end method

.method static synthetic access$400()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    return-void
.end method

.method static synthetic access$4000()F
    .registers 1

    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$4002(F)F
    .registers 1

    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$4100()F
    .registers 1

    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$4102(F)F
    .registers 1

    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$4200()F
    .registers 1

    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$4202(F)F
    .registers 1

    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$4300()F
    .registers 1

    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$4302(F)F
    .registers 1

    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$4400()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$4402(Z)Z
    .registers 1

    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$4500(II)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$4600(I)V
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeTrack(I)V

    return-void
.end method

.method static synthetic access$4700(I)V
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skip(I)V

    return-void
.end method

.method static synthetic access$4800(I)I
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4902(Z)Z
    .registers 1

    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$500()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    return-void
.end method

.method static synthetic access$5000()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    return-void
.end method

.method static synthetic access$600(I)V
    .registers 1

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyPreset(I)V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    return-void
.end method

.method static synthetic access$800()V
    .registers 0

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->closePlayer()V

    return-void
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method private static addAutoChip(Landroid/app/Activity;)V
    .registers 7

    .line 1944
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    array-length v1, v0

    if-eqz v1, :cond_6f

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_b

    goto :goto_6f

    .line 1947
    :cond_b
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_16

    .line 1948
    return-void

    .line 1950
    :cond_16
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1951
    const-string v2, "music-auto"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 1952
    return-void

    .line 1954
    :cond_29
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1955
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1956
    const-string v2, "\u0410\u0432\u0442\u043e"

    const-string v4, "Auto"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1957
    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1958
    const/4 v2, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1959
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1960
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$AutoTuneListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$AutoTuneListener;-><init>()V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1961
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x22

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1962
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    iput p0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1963
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1964
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoChip:Landroid/widget/TextView;

    .line 1965
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    .line 1966
    return-void

    .line 1945
    :cond_6f
    :goto_6f
    return-void
.end method

.method private static addHzRows(Landroid/app/Activity;)V
    .registers 13

    .line 2314
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_d

    goto :goto_6a

    .line 2317
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2318
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1e

    .line 2319
    return-void

    .line 2321
    :cond_1e
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/view/ViewGroup;

    .line 2322
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v10, v1, 0x1

    .line 2323
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    move-object v11, v1

    .line 2324
    const-string v1, "Hz \u043f\u0440\u0438 \u0431\u0430\u0441"

    const-string v2, "Hz on bass"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/16 v8, 0x78

    move-object v1, p0

    move-object v2, v0

    move-object v3, v11

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hzRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;IIII)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v9, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2325
    const-string v1, "Hz \u043f\u0440\u0438 \u0432\u0438\u0441\u043e\u043a\u0438"

    const-string v2, "Hz on treble"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v7, 0x5

    move-object v1, p0

    move-object v2, v0

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hzRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;IIII)Landroid/view/View;

    move-result-object p0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, p0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2327
    return-void

    .line 2315
    :cond_6a
    :goto_6a
    return-void
.end method

.method private static addMinimize(Landroid/app/Activity;Landroid/view/View;)V
    .registers 7

    .line 918
    if-eqz p1, :cond_57

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    goto :goto_57

    .line 921
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 922
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v3, "\u2014"

    const/16 v4, 0x24

    invoke-static {p0, v3, v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 923
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    instance-of v2, v0, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_4f

    .line 925
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 926
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 927
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 928
    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    iput p0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 929
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    goto :goto_56

    .line 931
    :cond_4f
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 933
    :goto_56
    return-void

    .line 919
    :cond_57
    :goto_57
    return-void
.end method

.method private static addPrevNext(Landroid/app/Activity;)V
    .registers 8

    .line 961
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_d

    goto :goto_6d

    .line 964
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 965
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v3, "\u23ee"

    const/16 v4, 0x20

    invoke-static {p0, v3, v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 966
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const-string v5, "\u23ed"

    invoke-static {p0, v5, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 967
    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;

    const/4 v5, -0x1

    invoke-direct {v3, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 970
    const/16 v5, 0x8

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 971
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 973
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 974
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    return-void

    .line 962
    :cond_6d
    :goto_6d
    return-void
.end method

.method private static addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5

    .line 1227
    if-eqz p1, :cond_34

    if-nez p0, :cond_5

    goto :goto_34

    .line 1230
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->resolve(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    invoke-direct {v2, p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    sget p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez p1, :cond_21

    .line 1233
    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1235
    :cond_21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 1236
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1237
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1238
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1239
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 1241
    :cond_33
    return-void

    .line 1228
    :cond_34
    :goto_34
    return-void
.end method

.method private static addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 2

    .line 1219
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 1223
    goto :goto_10

    .line 1220
    :catchall_4
    move-exception p0

    .line 1221
    const-string p1, "player_add_track"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1222
    const p0, 0x7f0d0113

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1224
    :goto_10
    return-void
.end method

.method public static advanceToNextTrack()Z
    .registers 3

    .line 290
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_e

    .line 291
    return v2

    .line 293
    :cond_e
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 294
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    return v0
.end method

.method private static applyExpandedState()V
    .registers 4

    .line 796
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_12

    .line 797
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    :cond_d
    const/16 v3, 0x8

    :goto_f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 799
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 800
    sget-boolean v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    if-eqz v3, :cond_1b

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x8

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 802
    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->markToggle(Landroid/view/View;Z)V

    .line 803
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->markToggle(Landroid/view/View;Z)V

    .line 804
    return-void
.end method

.method private static applyPreset(I)V
    .registers 5

    .line 747
    if-ltz p0, :cond_40

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    array-length v0, v0

    if-lt p0, v0, :cond_8

    goto :goto_40

    .line 750
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setAutoTune(Z)V

    .line 751
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    aget-object p0, v1, p0

    .line 752
    aget v1, p0, v0

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 753
    const/4 v1, 0x1

    aget v2, p0, v1

    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    .line 754
    const/4 v2, 0x2

    aget v3, p0, v2

    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 755
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v0, p0, v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 756
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v1, p0, v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 757
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    aget p0, p0, v2

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 758
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSettingSteppers()V

    .line 759
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 760
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    .line 761
    return-void

    .line 748
    :cond_40
    :goto_40
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 2

    .line 183
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 186
    goto :goto_a

    .line 184
    :catchall_4
    move-exception p0

    .line 185
    const-string p1, "MusicPlayerHelper.attachMasterPanel"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :goto_a
    return-void
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .line 190
    if-eqz p0, :cond_25

    if-nez p1, :cond_5

    goto :goto_25

    .line 193
    :cond_5
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 194
    if-nez v0, :cond_f

    .line 195
    return-void

    .line 197
    :cond_f
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 201
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void

    .line 191
    :cond_25
    :goto_25
    return-void
.end method

.method private static autoScrollPlaylist(F)V
    .registers 5

    .line 1370
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_5

    .line 1371
    return-void

    .line 1373
    :cond_5
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1374
    if-eqz v0, :cond_15

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    goto :goto_17

    :cond_15
    const/16 v0, 0x78

    .line 1375
    :goto_17
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1376
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 1377
    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1378
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 1379
    add-int/2addr v1, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_38

    .line 1380
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v0, -0x10

    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_45

    .line 1381
    :cond_38
    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpl-float p0, p0, v0

    if-lez p0, :cond_45

    .line 1382
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v0, 0x10

    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1384
    :cond_45
    :goto_45
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1654
    if-nez p0, :cond_3

    .line 1655
    return-void

    .line 1657
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1658
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1659
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1660
    return-void
.end method

.method private static cancelPendingDrag()V
    .registers 3

    .line 1592
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1593
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1594
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    .line 1596
    :cond_c
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1597
    return-void
.end method

.method private static clearDragHighlight()V
    .registers 2

    .line 1421
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1422
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 1423
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 1424
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 1425
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1426
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1427
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1428
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1429
    return-void
.end method

.method private static clearOverlayRefs()V
    .registers 2

    .line 1689
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1690
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 1691
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayScrollView:Landroid/widget/ScrollView;

    .line 1692
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    .line 1693
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 1694
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 1695
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 1696
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 1697
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 1698
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 1699
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 1700
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 1701
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 1702
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1703
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1704
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1705
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1706
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/widget/TextView;

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 1707
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoChip:Landroid/widget/TextView;

    .line 1708
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    .line 1709
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    .line 1710
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->meterView:Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    .line 1711
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 1712
    return-void
.end method

.method static closeFromDial()V
    .registers 1

    .line 1904
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->dismiss()V

    .line 1905
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1906
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStop()V

    .line 1907
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1908
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 1909
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 1910
    return-void
.end method

.method private static closePlayer()V
    .registers 1

    .line 1663
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1664
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStop()V

    .line 1665
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1666
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 1667
    return-void
.end method

.method private static configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V
    .registers 6

    .line 722
    if-nez p0, :cond_3

    .line 723
    return-void

    .line 726
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 727
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 728
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 729
    const-string p1, "%"

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, p4}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 731
    new-instance p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;

    invoke-direct {p1, p5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    .line 733
    goto :goto_1e

    .line 732
    :catchall_1d
    move-exception p0

    .line 734
    :goto_1e
    return-void
.end method

.method private static configureSeekBar()V
    .registers 2

    .line 700
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-nez v0, :cond_5

    .line 701
    return-void

    .line 704
    :cond_5
    const/16 v1, 0x3e8

    :try_start_7
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setMaxProcess(I)V

    .line 705
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 706
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setClickable(Z)V

    .line 707
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setFocusable(Z)V

    .line 708
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    .line 710
    goto :goto_27

    .line 709
    :catchall_26
    move-exception v0

    .line 711
    :goto_27
    return-void
.end method

.method private static configureSettings()V
    .registers 12

    .line 714
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v4

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 715
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v10

    const/4 v7, 0x0

    const/16 v8, 0x64

    const/16 v9, 0xa

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 716
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v4

    const/16 v2, 0x50

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 717
    sget-object v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v10

    const/4 v11, 0x3

    invoke-static/range {v6 .. v11}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 718
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    .line 719
    return-void
.end method

.method public static currentTitle()Ljava/lang/String;
    .registers 2

    .line 1870
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_19

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method private static dismissOverlay(Z)V
    .registers 2

    .line 1670
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 1671
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    .line 1672
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 1673
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 1675
    :try_start_d
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    .line 1677
    goto :goto_12

    .line 1676
    :catchall_11
    move-exception v0

    .line 1678
    :goto_12
    if-nez p0, :cond_1e

    sget-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez p0, :cond_1e

    .line 1679
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1680
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 1683
    :cond_1e
    sget-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez p0, :cond_25

    .line 1684
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1686
    :cond_25
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 1778
    if-nez p0, :cond_3

    .line 1779
    return p1

    .line 1781
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 1782
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 3

    .line 1287
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1288
    return-object v0

    .line 1290
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_8
    if-eqz p0, :cond_16

    .line 1291
    instance-of v1, p0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_11

    .line 1292
    check-cast p0, Landroid/widget/ScrollView;

    return-object p0

    .line 1290
    :cond_11
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_8

    .line 1295
    :cond_16
    return-object v0
.end method

.method private static findPlaylistRow(Landroid/view/View;)Landroid/view/View;
    .registers 5

    .line 1447
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1448
    return-object v0

    .line 1450
    :cond_4
    move-object v1, p0

    .line 1451
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1c

    .line 1452
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1453
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-ne v2, v3, :cond_5

    .line 1454
    return-object v1

    .line 1457
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 1458
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 1460
    :cond_2b
    return-object v0
.end method

.method private static finishDragReorder(II)V
    .registers 4

    .line 1402
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1403
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 1404
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 1405
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 1406
    const/4 v1, -0x1

    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1407
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1408
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1409
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1410
    if-eq p0, p1, :cond_1d

    .line 1411
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V

    goto :goto_28

    .line 1413
    :cond_1d
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1414
    if-eqz p0, :cond_28

    .line 1415
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1418
    :cond_28
    :goto_28
    return-void
.end method

.method private static formatTime(I)Ljava/lang/String;
    .registers 4

    .line 1126
    if-gez p0, :cond_3

    .line 1127
    const/4 p0, 0x0

    .line 1129
    :cond_3
    div-int/lit16 p0, p0, 0x3e8

    .line 1130
    div-int/lit8 v0, p0, 0x3c

    .line 1131
    rem-int/lit8 p0, p0, 0x3c

    .line 1132
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

    .line 1133
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

    .line 1643
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    .line 1645
    if-eqz p1, :cond_f

    .line 1646
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 1650
    :cond_f
    goto :goto_16

    .line 1648
    :catchall_10
    move-exception p0

    .line 1649
    const-string p1, "player_uri_persist"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1651
    :goto_16
    return-void
.end method

.method static hasPlaylistTracks()Z
    .registers 1

    .line 345
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static hidePlayerOverlay()V
    .registers 1

    .line 1600
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1601
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 1602
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->dismiss()V

    .line 1603
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1604
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 1605
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1607
    :cond_1b
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_24

    .line 1609
    :try_start_1f
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    .line 1611
    goto :goto_24

    .line 1610
    :catchall_23
    move-exception v0

    .line 1613
    :cond_24
    :goto_24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1614
    return-void
.end method

.method private static hzRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;IIII)Landroid/view/View;
    .registers 23

    .line 2331
    move-object v0, p0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2332
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2333
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2334
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2335
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2336
    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2337
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2338
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    if-eqz p2, :cond_5f

    .line 2339
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2340
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2341
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2342
    instance-of v7, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_56

    .line 2343
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_5b

    .line 2344
    :cond_56
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2342
    :goto_5b
    invoke-virtual {v1, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2345
    goto :goto_6c

    .line 2346
    :cond_5f
    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2347
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2349
    :goto_6c
    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingText(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingUnit(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41880000    # 17.0f

    const/4 v8, 0x0

    invoke-static {p0, v3, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v3

    .line 2350
    new-instance v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;

    move-object v9, v6

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;-><init>(IIIILcom/isaigu/gymapp/widget/XemsUi$Stepper;)V

    .line 2351
    iget-object v7, v3, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v7, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 2352
    iget-object v7, v3, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 2353
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2354
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2355
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2356
    iget-object v0, v3, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2357
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aput-object v3, v0, p4

    .line 2358
    return-object v1
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .line 436
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 437
    return v1

    .line 440
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 441
    if-nez v0, :cond_d

    .line 442
    return v1

    .line 444
    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 445
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 446
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

    .line 447
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 451
    :cond_31
    goto :goto_33

    .line 450
    :catchall_32
    move-exception v0

    .line 452
    :goto_33
    return v1
.end method

.method static isOverlayOpen()Z
    .registers 1

    .line 341
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    return v0
.end method

.method private static isOverlayShowing()Z
    .registers 1

    .line 283
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->isShowing()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_16

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    .line 284
    :catchall_16
    move-exception v0

    .line 285
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return v0
.end method

.method private static isTargetTrainingRunning()Z
    .registers 3

    .line 384
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 385
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

    .line 386
    :catchall_15
    move-exception v1

    .line 387
    return v0
.end method

.method private static loadPlaylist(Landroid/app/Activity;)V
    .registers 2

    .line 564
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 566
    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_25

    .line 567
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

    .line 569
    :cond_25
    return-void
.end method

.method private static lockPlaylistScroll(Z)V
    .registers 2

    .line 1299
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_7

    .line 1300
    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1302
    :cond_7
    return-void
.end method

.method private static mapSeekProgressToMs(II)I
    .registers 4

    .line 1110
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 1111
    return v0

    .line 1113
    :cond_4
    nop

    .line 1114
    const/16 v1, 0x3e8

    if-gez p0, :cond_b

    .line 1115
    const/4 p0, 0x0

    goto :goto_f

    .line 1116
    :cond_b
    if-le p0, v1, :cond_f

    .line 1117
    const/16 p0, 0x3e8

    .line 1119
    :cond_f
    :goto_f
    if-lt p0, v1, :cond_12

    .line 1120
    return p1

    .line 1122
    :cond_12
    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private static markToggle(Landroid/view/View;Z)V
    .registers 4

    .line 807
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 808
    return-void

    .line 810
    :cond_5
    if-eqz p1, :cond_10

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_12

    :cond_10
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    .line 811
    :goto_12
    if-eqz p1, :cond_17

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_19

    :cond_17
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 810
    :goto_19
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleRound(Landroid/view/View;II)V

    .line 812
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 813
    return-void
.end method

.method static minimize(Landroid/app/Activity;)V
    .registers 2

    .line 1889
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->compactMode:Z

    .line 1890
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 1892
    :try_start_7
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 1894
    goto :goto_c

    .line 1893
    :catchall_b
    move-exception v0

    .line 1896
    :cond_c
    :goto_c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1897
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicDial;->show(Landroid/app/Activity;)V

    .line 1898
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result p0

    if-eqz p0, :cond_21

    .line 1899
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 1901
    :cond_21
    return-void
.end method

.method private static moveDragGhost(FF)V
    .registers 5

    .line 1562
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1563
    return-void

    .line 1565
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1566
    if-nez v0, :cond_e

    .line 1567
    return-void

    .line 1569
    :cond_e
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1570
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1571
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1572
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_3b

    .line 1573
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1574
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    sub-float/2addr p0, v2

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr p0, v2

    float-to-int p0, p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1575
    const/4 p0, 0x1

    aget p0, v1, p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1576
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1578
    :cond_3b
    return-void
.end method

.method private static moveOverlayWindow(II)V
    .registers 3

    .line 1715
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_23

    .line 1718
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1719
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1720
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1721
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1722
    return-void

    .line 1716
    :cond_23
    :goto_23
    return-void
.end method

.method private static movePlaylistItem(II)V
    .registers 4

    .line 1267
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

    .line 1270
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 1271
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1272
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v0, p0, :cond_2b

    .line 1273
    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_3e

    .line 1274
    :cond_2b
    if-ge p0, v0, :cond_34

    if-lt p1, v0, :cond_34

    .line 1275
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_3e

    .line 1276
    :cond_34
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-le p0, v0, :cond_3e

    if-gt p1, v0, :cond_3e

    .line 1277
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1279
    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1280
    if-eqz p0, :cond_4d

    .line 1281
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 1282
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1284
    :cond_4d
    return-void

    .line 1268
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 3

    .line 244
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onActivityResultImpl(IILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 247
    goto :goto_a

    .line 245
    :catchall_4
    move-exception p0

    .line 246
    const-string p1, "MusicPlayerHelper.onActivityResult"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    :goto_a
    return-void
.end method

.method private static onActivityResultImpl(IILandroid/content/Intent;)V
    .registers 5

    .line 251
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 252
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    .line 253
    const/16 v1, 0x4255

    if-ne p0, v1, :cond_55

    const/4 p0, -0x1

    if-ne p1, p0, :cond_55

    if-nez p2, :cond_10

    goto :goto_55

    .line 256
    :cond_10
    const/4 p0, 0x0

    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 257
    if-nez p0, :cond_1a

    .line 258
    return-void

    .line 260
    :cond_1a
    const/4 p1, 0x1

    sput-boolean p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 263
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_47

    .line 264
    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 265
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_43

    .line 267
    invoke-static {p0, p2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 268
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 264
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 271
    :cond_46
    return-void

    .line 273
    :cond_47
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 274
    if-nez p1, :cond_4e

    .line 275
    return-void

    .line 277
    :cond_4e
    invoke-static {p0, p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 278
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 279
    return-void

    .line 254
    :cond_55
    :goto_55
    return-void
.end method

.method public static onAutoTuneApplied()V
    .registers 0

    .line 787
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSettingSteppers()V

    .line 788
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    .line 789
    return-void
.end method

.method public static onPlaybackEndedNaturally()V
    .registers 0

    .line 379
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 380
    return-void
.end method

.method public static onPlaybackPausedByUser()V
    .registers 0

    .line 371
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 372
    return-void
.end method

.method public static onPlaybackResumedByUser()V
    .registers 0

    .line 375
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 376
    return-void
.end method

.method public static onPlaybackStarted()V
    .registers 0

    .line 366
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->onPlayerPlaybackStarted()V

    .line 367
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 368
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 2

    .line 326
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onTrainingFullStopImpl()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 329
    goto :goto_a

    .line 327
    :catchall_4
    move-exception v0

    .line 328
    const-string v1, "MusicPlayerHelper.onTrainingFullStop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    :goto_a
    return-void
.end method

.method private static onTrainingFullStopImpl()V
    .registers 1

    .line 333
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V

    .line 334
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 335
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 336
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 338
    :cond_15
    return-void
.end method

.method static openFull(Landroid/app/Activity;)V
    .registers 2

    .line 1875
    if-nez p0, :cond_3

    .line 1876
    return-void

    .line 1878
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->compactMode:Z

    .line 1879
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->dismiss()V

    .line 1880
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->reShowOverlay(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1881
    :cond_13
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showOverlay(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1882
    const v0, 0x7f0d0113

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 1885
    :cond_1f
    return-void
.end method

.method private static overlayMaxHeightPx(Landroid/app/Activity;)I
    .registers 4

    .line 1725
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1726
    int-to-float v1, v0

    const v2, 0x3f51eb85    # 0.82f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 1727
    const/16 v2, 0x30

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 1728
    const/16 v2, 0x110

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static persistPlaylist(Landroid/app/Activity;)V
    .registers 2

    .line 572
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 573
    return-void
.end method

.method private static persistSettings()V
    .registers 2

    .line 792
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->saveSettings(Landroid/content/Context;)V

    .line 793
    return-void
.end method

.method private static reShowOverlay(Landroid/app/Activity;)Z
    .registers 3

    .line 1617
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_43

    .line 1621
    :cond_e
    :try_start_e
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1622
    const/4 p0, 0x1

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1623
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 1624
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1625
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 1626
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 1627
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1628
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    goto :goto_35

    .line 1630
    :cond_32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_36

    .line 1632
    :goto_35
    return p0

    .line 1633
    :catchall_36
    move-exception p0

    .line 1634
    const-string v0, "music_player_overlay_reshow"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1635
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1636
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 1637
    return v1

    .line 1618
    :cond_43
    :goto_43
    return v1
.end method

.method private static rebuildPlaylistViews(Landroid/app/Activity;)V
    .registers 14

    .line 816
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_117

    if-nez p0, :cond_8

    goto/16 :goto_117

    .line 819
    :cond_8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 820
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 821
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_113

    .line 822
    nop

    .line 823
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 826
    const v4, 0x7f0b007d

    :try_start_25
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_10d

    .line 829
    nop

    .line 830
    const v5, 0x7f090284

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 831
    const v6, 0x7f090285

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 832
    sget v7, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    const/4 v8, 0x1

    if-ne v2, v7, :cond_43

    const/4 v7, 0x1

    goto :goto_44

    :cond_43
    const/4 v7, 0x0

    .line 833
    :goto_44
    if-eqz v7, :cond_4f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v10, 0x26

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    goto :goto_51

    :cond_4f
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    :goto_51
    const/16 v10, 0xc

    .line 834
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v10

    int-to-float v10, v10

    if-eqz v7, :cond_63

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v12, 0xaa

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v11

    goto :goto_65

    :cond_63
    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    :goto_65
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v12

    .line 833
    invoke-static {v9, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 835
    if-eqz v5, :cond_ba

    .line 836
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_7c

    const-string v10, "\u25b6  "

    goto :goto_8f

    :cond_7c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ".  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_8f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    if-eqz v7, :cond_a3

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_a5

    :cond_a3
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_a5
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 838
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eqz v7, :cond_ae

    .line 839
    const/4 v7, 0x1

    goto :goto_af

    :cond_ae
    const/4 v7, 0x0

    .line 838
    :goto_af
    invoke-virtual {v5, v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 840
    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;

    invoke-direct {v3, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;-><init>(I)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    :cond_ba
    instance-of v3, v6, Landroid/widget/TextView;

    if-eqz v3, :cond_c6

    .line 843
    move-object v3, v6

    check-cast v3, Landroid/widget/TextView;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 845
    :cond_c6
    instance-of v3, v4, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_fd

    .line 846
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const-string v7, "\u2715"

    const/16 v9, 0x1e

    invoke-static {p0, v7, v3, v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 847
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;

    invoke-direct {v5, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v9

    invoke-direct {v5, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 849
    const/4 v7, 0x4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 850
    move-object v7, v4

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v7, v3, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 852
    :cond_fd
    if-eqz v6, :cond_107

    .line 853
    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    invoke-direct {v3, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;-><init>(I)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 855
    :cond_107
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_10f

    .line 827
    :catchall_10d
    move-exception v3

    .line 828
    nop

    .line 821
    :goto_10f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 857
    :cond_113
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 858
    return-void

    .line 817
    :cond_117
    :goto_117
    return-void
.end method

.method private static refreshPresetHighlight()V
    .registers 8

    .line 765
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isAutoTune()Z

    move-result v0

    .line 766
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    array-length v4, v3

    if-ge v2, v4, :cond_3b

    .line 767
    aget-object v3, v3, v2

    .line 768
    if-nez v3, :cond_10

    .line 769
    goto :goto_38

    .line 771
    :cond_10
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    aget-object v4, v4, v2

    .line 772
    const/4 v5, 0x1

    if-nez v0, :cond_31

    .line 773
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v6

    aget v7, v4, v1

    if-ne v6, v7, :cond_31

    .line 774
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v6

    aget v7, v4, v5

    if-ne v6, v7, :cond_31

    .line 775
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v6

    const/4 v7, 0x2

    aget v4, v4, v7

    if-ne v6, v4, :cond_31

    goto :goto_32

    :cond_31
    const/4 v5, 0x0

    .line 776
    :goto_32
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleChip(Landroid/widget/TextView;Z)V

    .line 777
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 766
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 779
    :cond_3b
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoChip:Landroid/widget/TextView;

    if-eqz v1, :cond_47

    .line 780
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleChip(Landroid/widget/TextView;Z)V

    .line 781
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoChip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 783
    :cond_47
    return-void
.end method

.method private static refreshSeekFromPlayer()V
    .registers 7

    .line 1082
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    .line 1083
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v0, :cond_39

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    if-eqz v0, :cond_c

    goto :goto_39

    .line 1086
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 1087
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v1

    .line 1088
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    .line 1089
    const/4 v2, 0x0

    if-gtz v0, :cond_20

    .line 1090
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 1091
    return-void

    .line 1093
    :cond_20
    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    .line 1094
    const/16 v1, 0x3e8

    if-gez v0, :cond_2d

    .line 1095
    goto :goto_33

    .line 1096
    :cond_2d
    if-le v0, v1, :cond_32

    .line 1097
    const/16 v2, 0x3e8

    goto :goto_33

    .line 1096
    :cond_32
    move v2, v0

    .line 1099
    :goto_33
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 1100
    return-void

    .line 1084
    :cond_39
    :goto_39
    return-void
.end method

.method private static refreshSettingSteppers()V
    .registers 4

    .line 1012
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 1013
    aget-object v2, v1, v0

    if-eqz v2, :cond_17

    .line 1014
    aget-object v1, v1, v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingUnit(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1017
    :cond_1a
    return-void
.end method

.method private static refreshTrackTitle()V
    .registers 3

    .line 1071
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1072
    return-void

    .line 1074
    :cond_5
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_24

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    goto :goto_24

    .line 1078
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    return-void

    .line 1075
    :cond_24
    :goto_24
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1076
    return-void
.end method

.method public static refreshTransportState()V
    .registers 2

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 299
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_21

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 301
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 302
    :goto_1c
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 304
    :cond_21
    return-void
.end method

.method private static removeDragGhost()V
    .registers 2

    .line 1581
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1582
    return-void

    .line 1584
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1585
    if-eqz v0, :cond_12

    .line 1586
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1588
    :cond_12
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    .line 1589
    return-void
.end method

.method private static removeTrack(I)V
    .registers 2

    .line 1044
    if-ltz p0, :cond_5f

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_b

    goto :goto_5f

    .line 1047
    :cond_b
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne p0, v0, :cond_21

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1048
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1049
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 1051
    :cond_21
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1053
    const/4 p0, -0x1

    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_49

    .line 1054
    :cond_32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-lt p0, v0, :cond_3e

    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt v0, p0, :cond_49

    .line 1055
    :cond_3e
    const/4 p0, 0x0

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1057
    :cond_49
    :goto_49
    const/4 p0, 0x0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1058
    if-eqz p0, :cond_58

    .line 1059
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 1060
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1062
    :cond_58
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1063
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 1064
    return-void

    .line 1045
    :cond_5f
    :goto_5f
    return-void
.end method

.method private static replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V
    .registers 20

    .line 980
    move-object v0, p0

    move-object v1, p1

    if-eqz v1, :cond_92

    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-nez v2, :cond_e

    goto/16 :goto_92

    .line 983
    :cond_e
    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 984
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 985
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/isaigu/gymapp/widget/AmountView;->setVisibility(I)V

    .line 986
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_31

    .line 987
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 989
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41880000    # 17.0f

    const/4 v6, 0x0

    const-string v7, "%"

    invoke-static {p0, v4, v7, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v4

    .line 990
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;

    move-object v8, v5

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;-><init>(IIIILcom/isaigu/gymapp/widget/XemsUi$Stepper;)V

    .line 991
    iget-object v6, v4, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v6, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 992
    iget-object v6, v4, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 993
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 994
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 995
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 996
    iget-object v0, v4, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 997
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aput-object v4, v0, p2

    .line 998
    return-void

    .line 981
    :cond_92
    :goto_92
    return-void
.end method

.method private static requestTrainingPause()V
    .registers 2

    .line 409
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 410
    return-void

    .line 413
    :cond_5
    :try_start_5
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_19

    .line 415
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 416
    return-void

    .line 418
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 419
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    .line 422
    :cond_24
    goto :goto_26

    .line 421
    :catchall_25
    move-exception v0

    .line 423
    :goto_26
    return-void
.end method

.method private static requestTrainingStart()V
    .registers 2

    .line 392
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 393
    return-void

    .line 396
    :cond_5
    :try_start_5
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v1, :cond_1f

    .line 398
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->start()V

    .line 399
    return-void

    .line 401
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 402
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    .line 405
    :cond_2a
    goto :goto_2c

    .line 404
    :catchall_2b
    move-exception v0

    .line 406
    :goto_2c
    return-void
.end method

.method private static requestTrainingStop()V
    .registers 1

    .line 426
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 427
    return-void

    .line 430
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 432
    goto :goto_a

    .line 431
    :catchall_9
    move-exception v0

    .line 433
    :goto_a
    return-void
.end method

.method private static resetPlaylistRowTransforms()V
    .registers 4

    .line 1387
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 1388
    return-void

    .line 1390
    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1391
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1392
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1393
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1394
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1395
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1396
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1397
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1390
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1399
    :cond_31
    return-void
.end method

.method private static resizeOverlayWindow()V
    .registers 7

    .line 1732
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1733
    if-eqz v0, :cond_9a

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_9a

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v2, :cond_9a

    .line 1734
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_9a

    .line 1737
    :cond_19
    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 1738
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMaxHeightPx(Landroid/app/Activity;)I

    move-result v2

    .line 1739
    const/16 v3, 0xf8

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1740
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/high16 v4, 0x40000000    # 2.0f

    .line 1741
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1742
    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1740
    invoke-virtual {v3, v4, v6}, Landroid/view/View;->measure(II)V

    .line 1743
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1744
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1745
    const/4 v2, 0x1

    if-le v3, v0, :cond_4b

    const/4 v5, 0x1

    .line 1746
    :cond_4b
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayScrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_6a

    .line 1747
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1748
    if-nez v3, :cond_5b

    .line 1749
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_5f

    .line 1751
    :cond_5b
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1752
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1754
    :goto_5f
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1755
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayScrollView:Landroid/widget/ScrollView;

    xor-int/2addr v2, v5

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1757
    :cond_6a
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1758
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_83

    .line 1759
    check-cast v2, Landroid/view/ViewGroup;

    .line 1760
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1761
    if-eqz v3, :cond_83

    .line 1762
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1763
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1764
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1767
    :cond_83
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1768
    if-eqz v2, :cond_99

    .line 1769
    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1770
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1771
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1772
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1773
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1775
    :cond_99
    return-void

    .line 1735
    :cond_9a
    :goto_9a
    return-void
.end method

.method public static resolveActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .line 503
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    .line 504
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_a

    .line 505
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 507
    :cond_a
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_15

    .line 508
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 510
    :cond_15
    return-object v0

    .line 513
    :cond_16
    return-object v0
.end method

.method private static resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3

    .line 1464
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 1466
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1467
    if-eqz v0, :cond_15

    .line 1468
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1469
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    .line 1470
    check-cast v0, Landroid/view/ViewGroup;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_16

    return-object v0

    .line 1474
    :cond_15
    goto :goto_17

    .line 1473
    :catchall_16
    move-exception v0

    .line 1476
    :cond_17
    :goto_17
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1477
    if-eqz p0, :cond_29

    .line 1478
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 1480
    :cond_29
    return-object v0
.end method

.method private static resolveDropIndex(F)I
    .registers 9

    .line 1305
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_54

    .line 1308
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1309
    nop

    :goto_13
    const/4 v2, 0x1

    if-ge v1, v0, :cond_52

    .line 1310
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1311
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 1312
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1313
    aget v5, v5, v2

    .line 1314
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v5

    .line 1315
    int-to-float v6, v5

    cmpl-float v7, p0, v6

    if-ltz v7, :cond_4a

    int-to-float v7, v3

    cmpg-float v7, p0, v7

    if-gtz v7, :cond_4a

    .line 1316
    sub-int/2addr v3, v5

    div-int/2addr v3, v4

    add-int/2addr v5, v3

    .line 1317
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

    .line 1319
    :cond_4a
    cmpg-float v2, p0, v6

    if-gez v2, :cond_4f

    .line 1320
    return v1

    .line 1309
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1323
    :cond_52
    sub-int/2addr v0, v2

    return v0

    .line 1306
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

    .line 521
    if-eqz p0, :cond_3

    .line 522
    return-object p0

    .line 524
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_12

    .line 525
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 526
    if-eqz p0, :cond_12

    .line 527
    return-object p0

    .line 530
    :cond_12
    if-eqz p1, :cond_1f

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 532
    if-eqz p0, :cond_1f

    .line 533
    return-object p0

    .line 536
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 537
    if-eqz p0, :cond_26

    .line 538
    return-object p0

    .line 540
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 517
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 544
    if-nez p0, :cond_4

    .line 545
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 547
    :cond_4
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 548
    return-object v0

    .line 550
    :cond_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object p0

    .line 551
    if-nez p0, :cond_f

    .line 552
    return-object v0

    .line 554
    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 555
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 556
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 557
    return-object v2

    .line 554
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 560
    :cond_28
    return-object v0
.end method

.method private static resolveThemeColor(Landroid/app/Activity;II)I
    .registers 3

    .line 1484
    if-nez p0, :cond_3

    .line 1485
    return p2

    .line 1488
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return p0

    .line 1489
    :catchall_c
    move-exception p0

    .line 1490
    return p2
.end method

.method private static restoreDragSourceRow()V
    .registers 2

    .line 1432
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1433
    return-void

    .line 1435
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1437
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1438
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1439
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    .line 1440
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1442
    :cond_23
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    .line 1443
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    .line 1444
    return-void
.end method

.method private static restoreOverlayAfterPick()V
    .registers 2

    .line 1245
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1246
    if-nez v0, :cond_5

    .line 1247
    return-void

    .line 1250
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1251
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1252
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1254
    :cond_11
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1255
    if-eqz v0, :cond_2a

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 1256
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 1257
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1258
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1259
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    .line 1263
    :cond_2a
    goto :goto_31

    .line 1261
    :catchall_2b
    move-exception v0

    .line 1262
    const-string v1, "music_player_restore_pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1264
    :goto_31
    return-void
.end method

.method private static setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V
    .registers 2

    .line 737
    if-nez p0, :cond_3

    .line 738
    return-void

    .line 741
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 743
    goto :goto_8

    .line 742
    :catchall_7
    move-exception p0

    .line 744
    :goto_8
    return-void
.end method

.method private static setPlayLoadingUi(Z)V
    .registers 4

    .line 1137
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1138
    xor-int/lit8 v2, p0, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1139
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz p0, :cond_10

    const/4 v2, 0x4

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 1142
    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x8

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    :cond_20
    return-void
.end method

.method static settingText(I)Ljava/lang/String;
    .registers 3

    .line 2363
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result v0

    .line 2364
    const/4 v1, 0x4

    if-ne p0, v1, :cond_12

    if-gtz v0, :cond_12

    .line 2365
    const-string p0, "\u0438\u0437\u043a\u043b."

    const-string v0, "off"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2367
    :cond_12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static settingUnit(I)Ljava/lang/String;
    .registers 3

    .line 2371
    const/4 v0, 0x4

    if-ne p0, v0, :cond_c

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result v1

    if-gtz v1, :cond_c

    .line 2372
    const-string p0, ""

    return-object p0

    .line 2374
    :cond_c
    if-lt p0, v0, :cond_11

    const-string p0, "Hz"

    goto :goto_13

    :cond_11
    const-string p0, "%"

    :goto_13
    return-object p0
.end method

.method private static settingValue(I)I
    .registers 2

    .line 1001
    if-eqz p0, :cond_27

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_18

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    .line 1007
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result p0

    return p0

    .line 1006
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHzTreble()I

    move-result p0

    return p0

    .line 1005
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHzBass()I

    move-result p0

    return p0

    .line 1004
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result p0

    return p0

    .line 1003
    :cond_22
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result p0

    return p0

    .line 1002
    :cond_27
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result p0

    return p0
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 205
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 206
    if-nez p0, :cond_9

    .line 207
    return-void

    .line 209
    :cond_9
    if-nez p1, :cond_12

    .line 210
    const p1, 0x7f0d011a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 211
    return-void

    .line 213
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 214
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result p1

    if-nez p1, :cond_21

    .line 217
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 219
    :cond_21
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hidePlayerOverlay()V

    .line 221
    return-void

    .line 223
    :cond_2b
    sget-boolean p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->compactMode:Z

    if-eqz p1, :cond_39

    .line 225
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->loadPlaylist(Landroid/app/Activity;)V

    .line 226
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->loadSettings(Landroid/content/Context;)V

    .line 227
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicDial;->show(Landroid/app/Activity;)V

    .line 228
    return-void

    .line 230
    :cond_39
    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p1, :cond_44

    .line 231
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->reShowOverlay(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 232
    return-void

    .line 235
    :cond_44
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->loadPlaylist(Landroid/app/Activity;)V

    .line 236
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->loadSettings(Landroid/content/Context;)V

    .line 237
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showOverlay(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_56

    .line 238
    const p1, 0x7f0d0113

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 240
    :cond_56
    return-void
.end method

.method public static showActive(II)V
    .registers 2

    .line 478
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz p0, :cond_a

    .line 479
    const p1, 0x7f0d0111

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 481
    :cond_a
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 482
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 483
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz p0, :cond_19

    .line 484
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 486
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 487
    return-void
.end method

.method private static showDragGhost(Landroid/view/View;FF)V
    .registers 16

    .line 1495
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1496
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1497
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1498
    if-eqz v0, :cond_14b

    if-eqz p0, :cond_14b

    if-nez v1, :cond_14

    goto/16 :goto_14b

    .line 1501
    :cond_14
    const v2, 0x7f090284

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1502
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_26

    :cond_24
    const-string v2, ""

    .line 1504
    :goto_26
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1505
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1506
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1507
    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    .line 1508
    const/16 v7, 0x8

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    .line 1509
    invoke-virtual {v3, v6, v8, v6, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1510
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1511
    const v8, 0x7f0600c3

    const v9, -0xdadadb

    invoke-static {v0, v8, v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1512
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1513
    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1514
    const v9, 0x7f06006f

    const v10, -0x994496

    invoke-static {v0, v9, v10}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v11

    .line 1513
    invoke-virtual {v6, v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1515
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1516
    const v6, 0x3f7ae148    # 0.98f

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1517
    const v6, 0x3f87ae14    # 1.06f

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1518
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1519
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_9d

    .line 1520
    const/16 v6, 0x12

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1521
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    .line 1524
    :cond_9d
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1525
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1527
    const v2, 0x7f0600e6

    const v8, -0x171718

    invoke-static {v0, v2, v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1528
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1529
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1530
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1533
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1534
    const-string v11, "\u2630"

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1536
    invoke-static {v0, v9, v10}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1537
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v7

    invoke-virtual {v8, v7, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1539
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1540
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1542
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_f9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    goto :goto_ff

    :cond_f9
    const/16 v6, 0x11c

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    .line 1543
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

    .line 1545
    :goto_110
    new-array v7, v5, [I

    .line 1546
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1547
    aget p0, v7, v4

    int-to-float p0, p0

    sub-float p0, p1, p0

    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    .line 1548
    aget p0, v7, v2

    int-to-float p0, p0

    sub-float p0, p2, p0

    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    .line 1550
    new-array p0, v5, [I

    .line 1551
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1553
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1554
    const/16 v0, 0x33

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1555
    aget v0, p0, v4

    int-to-float v0, v0

    sub-float/2addr p1, v0

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1556
    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr p2, p0

    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr p2, p0

    float-to-int p0, p2

    iput p0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1557
    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    .line 1559
    return-void

    .line 1499
    :cond_14b
    :goto_14b
    return-void
.end method

.method public static showError(I)V
    .registers 3

    .line 490
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 491
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 493
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 494
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_17

    .line 496
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 498
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 499
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 456
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 457
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 459
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 460
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 462
    :cond_12
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 463
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 464
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 466
    return-void
.end method

.method private static showOverlay(Landroid/app/Activity;)Z
    .registers 11

    .line 576
    const/4 v0, 0x0

    if-eqz p0, :cond_263

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_263

    .line 579
    :cond_b
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 582
    :try_start_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_25c

    .line 586
    nop

    .line 587
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 588
    instance-of v2, v1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_25

    move-object v2, v1

    check-cast v2, Landroid/widget/ScrollView;

    goto :goto_26

    :cond_25
    move-object v2, v3

    :goto_26
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayScrollView:Landroid/widget/ScrollView;

    .line 589
    if-nez v2, :cond_30

    .line 590
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayScrollView:Landroid/widget/ScrollView;

    .line 592
    :cond_30
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayScrollView:Landroid/widget/ScrollView;

    const/4 v4, 0x1

    if-eqz v2, :cond_42

    .line 593
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 594
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 595
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 597
    :cond_42
    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 598
    const v2, 0x7f09028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    .line 599
    const v2, 0x7f09027b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 600
    const v2, 0x7f09028f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    .line 601
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stylePlayLoadingSpinner(Landroid/app/Activity;)V

    .line 602
    const v2, 0x7f09027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 603
    const v2, 0x7f09027e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 604
    const v2, 0x7f09027f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 605
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    .line 606
    const v2, 0x7f090282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 607
    const v2, 0x7f090283

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 608
    const v2, 0x7f090229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 609
    const v2, 0x7f090228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 610
    const v2, 0x7f0902c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 611
    const v2, 0x7f0902c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 612
    const v2, 0x7f0902c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 613
    const v2, 0x7f0902c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->meterView:Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    .line 614
    const v2, 0x7f0902c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    .line 615
    const v2, 0x7f09027c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    .line 616
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/widget/TextView;

    const v5, 0x7f0902c6

    .line 617
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v2, v0

    const v5, 0x7f0902c7

    .line 618
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    aput-object v5, v2, v4

    const v5, 0x7f0902c8

    .line 619
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x2

    aput-object v5, v2, v6

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 622
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 623
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSettings()V

    .line 624
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleOverlay(Landroid/app/Activity;Landroid/view/View;)V

    .line 625
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSeekBar()V

    .line 626
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;-><init>()V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 627
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;

    invoke-direct {v5, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;-><init>(Z)V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 628
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;

    invoke-direct {v5, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;-><init>(Z)V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 629
    const/4 v2, 0x0

    :goto_14e
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    array-length v7, v5

    if-ge v2, v7, :cond_160

    .line 630
    aget-object v5, v5, v2

    new-instance v7, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;

    invoke-direct {v7, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;-><init>(I)V

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_14e

    .line 632
    :cond_160
    const v2, 0x7f090280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 633
    const v2, 0x7f090288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;-><init>()V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 634
    const v2, 0x7f090289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;-><init>()V

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 636
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 637
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 638
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 639
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 640
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 642
    nop

    .line 643
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v2, :cond_1c0

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1c0

    .line 644
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 645
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1c0

    .line 646
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_1c1

    .line 649
    :cond_1c0
    move-object v2, v3

    :goto_1c1
    if-eqz v2, :cond_1d1

    .line 650
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 651
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 652
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 655
    :cond_1d1
    const/16 v2, 0xc0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    .line 656
    const/16 v2, 0x12c

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 657
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 658
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 659
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v5, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    :try_start_1ed
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    invoke-virtual {v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 666
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;-><init>()V

    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 667
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 668
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 669
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 670
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 672
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 673
    if-nez v1, :cond_219

    .line 674
    return v0

    .line 676
    :cond_219
    const v5, 0x106000d

    invoke-virtual {v1, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 677
    const v5, 0x800033

    invoke-virtual {v1, v5}, Landroid/view/Window;->setGravity(I)V

    .line 678
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 679
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 680
    const/16 v7, 0x14

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 681
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    iput p0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 682
    const/4 p0, 0x0

    iput p0, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 683
    iget p0, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x20

    and-int/lit8 p0, p0, -0x3

    iput p0, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 687
    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 688
    invoke-virtual {v1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 689
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    :try_end_24f
    .catchall {:try_start_1ed .. :try_end_24f} :catchall_250

    .line 690
    return v4

    .line 691
    :catchall_250
    move-exception p0

    .line 692
    const-string v1, "music_player_overlay_show"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 693
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 694
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 695
    return v0

    .line 583
    :catchall_25c
    move-exception p0

    .line 584
    const-string v1, "music_player_overlay_inflate"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    return v0

    .line 577
    :cond_263
    :goto_263
    return v0
.end method

.method public static showPreparing()V
    .registers 2

    .line 469
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    .line 470
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 471
    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 473
    :cond_d
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 474
    return-void
.end method

.method private static skip(I)V
    .registers 4

    .line 1021
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1022
    return-void

    .line 1024
    :cond_9
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/2addr v0, p0

    .line 1025
    if-ltz v0, :cond_55

    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt v0, p0, :cond_17

    goto :goto_55

    .line 1028
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result p0

    if-nez p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    .line 1029
    :goto_2d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1030
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1032
    :cond_3c
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1033
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1034
    const/4 v0, 0x0

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1035
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1036
    if-eqz p0, :cond_51

    .line 1037
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    goto :goto_54

    .line 1039
    :cond_51
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 1041
    :goto_54
    return-void

    .line 1026
    :cond_55
    :goto_55
    return-void
.end method

.method public static skipTrack(I)V
    .registers 1

    .line 1865
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skip(I)V

    .line 1866
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    .line 1867
    return-void
.end method

.method private static startCurrentTrack(Z)Z
    .registers 5

    .line 1186
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1187
    return v1

    .line 1189
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1190
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1191
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1192
    if-eqz p0, :cond_23

    .line 1193
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackResumedByUser()V

    .line 1196
    :cond_23
    return v2

    .line 1198
    :cond_24
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_5a

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_31

    goto :goto_5a

    .line 1204
    :cond_31
    const/4 p0, 0x0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 1205
    if-nez p0, :cond_41

    .line 1206
    const p0, 0x7f0d010b

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1207
    return v1

    .line 1209
    :cond_41
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    .line 1210
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 1211
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1212
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1213
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1214
    return v2

    .line 1199
    :cond_5a
    :goto_5a
    if-eqz p0, :cond_62

    .line 1200
    const p0, 0x7f0d0112

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1202
    :cond_62
    return v1
.end method

.method private static startProgressUpdates()V
    .registers 2

    .line 1177
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1178
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1179
    return-void
.end method

.method private static stopProgressUpdates()V
    .registers 2

    .line 1182
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1183
    return-void
.end method

.method private static styleChip(Landroid/widget/TextView;Z)V
    .registers 9

    .line 951
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 952
    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 953
    const/4 v2, 0x1

    if-eqz p1, :cond_27

    .line 954
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v4, 0x2a

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    int-to-float v4, v1

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v6, 0xcc

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_34

    .line 955
    :cond_27
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    int-to-float v4, v1

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    :goto_34
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    int-to-float v1, v1

    .line 953
    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 956
    if-eqz p1, :cond_43

    sget p1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_45

    :cond_43
    sget p1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_45
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 957
    return-void
.end method

.method private static styleOverlay(Landroid/app/Activity;Landroid/view/View;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 865
    :try_start_4
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v3, 0x1

    if-eqz v2, :cond_95

    .line 866
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v6, v5, [I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/4 v8, 0x0

    aput v7, v6, v8

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v9, -0x1000000

    const v10, 0x3e4ccccd    # 0.2f

    .line 867
    invoke-static {v7, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v7

    aput v7, v6, v3

    invoke-direct {v2, v4, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 868
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 871
    new-instance v4, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v6, 0x7

    const/4 v7, -0x1

    invoke-direct {v4, v6, v7}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    sput-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 872
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/16 v6, 0x38

    .line 873
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v7, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v5, v8

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    aput-object v2, v5, v3

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 874
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 875
    new-instance v8, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;

    invoke-direct {v8, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;-><init>(Landroid/graphics/drawable/LayerDrawable;)V

    .line 876
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 877
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-lez v2, :cond_79

    .line 878
    sget-object v9, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v8 .. v17}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 881
    :cond_79
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 883
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setElevation(F)V

    .line 884
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 886
    :cond_95
    const v2, 0x7f090288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleRound(Landroid/view/View;II)V

    .line 887
    const v4, 0x7f090289

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleRound(Landroid/view/View;II)V

    .line 888
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addMinimize(Landroid/app/Activity;Landroid/view/View;)V

    .line 889
    const v2, 0x7f090280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 890
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_fd

    .line 891
    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "+  \u0414\u043e\u0431\u0430\u0432\u0438 \u043f\u0435\u0441\u043d\u0438"

    const-string v6, "+  Add songs"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 893
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/16 v5, 0x14

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    .line 894
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v8

    .line 893
    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 894
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    int-to-float v5, v5

    .line 893
    invoke-static {v4, v6, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 895
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 897
    :cond_fd
    const v2, 0x7f0902c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 898
    if-eqz v1, :cond_11c

    .line 899
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/16 v4, 0xe

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    invoke-static {v2, v4, v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 901
    :cond_11c
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_127

    .line 902
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 904
    :cond_127
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addPrevNext(Landroid/app/Activity;)V

    .line 905
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 906
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 907
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x50

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 908
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x3

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 909
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addHzRows(Landroid/app/Activity;)V

    .line 910
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addAutoChip(Landroid/app/Activity;)V
    :try_end_162
    .catchall {:try_start_4 .. :try_end_162} :catchall_163

    .line 913
    goto :goto_169

    .line 911
    :catchall_163
    move-exception v0

    .line 912
    const-string v1, "music_player_style"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 914
    :goto_169
    return-void
.end method

.method private static stylePlayLoadingSpinner(Landroid/app/Activity;)V
    .registers 4

    .line 1147
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_23

    if-nez p0, :cond_9

    goto :goto_23

    .line 1150
    :cond_9
    check-cast v0, Landroid/widget/ProgressBar;

    .line 1152
    :try_start_b
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_20

    .line 1154
    const v1, 0x7f06006f

    const v2, -0x994496

    .line 1155
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1154
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_21

    .line 1159
    :cond_20
    goto :goto_22

    .line 1158
    :catchall_21
    move-exception p0

    .line 1160
    :goto_22
    return-void

    .line 1148
    :cond_23
    :goto_23
    return-void
.end method

.method private static styleRound(Landroid/view/View;II)V
    .registers 5

    .line 936
    if-nez p0, :cond_3

    .line 937
    return-void

    .line 939
    :cond_3
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 940
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 941
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 942
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 943
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    const/16 v1, 0x30

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p2, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    instance-of p1, p0, Landroid/widget/TextView;

    if-eqz p1, :cond_3c

    .line 945
    move-object p1, p0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 947
    :cond_3c
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 948
    return-void
.end method

.method public static syncTrainingState()V
    .registers 2

    .line 309
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingStateImpl()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 312
    goto :goto_a

    .line 310
    :catchall_4
    move-exception v0

    .line 311
    const-string v1, "MusicPlayerHelper.syncTrainingState"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    :goto_a
    return-void
.end method

.method private static syncTrainingStateImpl()V
    .registers 1

    .line 316
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isTargetTrainingRunning()Z

    move-result v0

    .line 317
    if-eqz v0, :cond_9

    .line 318
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tryStartFromTrainingSync()V

    .line 320
    :cond_9
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->syncWithTrainingState(Z)V

    .line 321
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 1786
    if-nez p0, :cond_3

    .line 1787
    return-void

    .line 1790
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 1792
    goto :goto_d

    .line 1791
    :catchall_c
    move-exception p0

    .line 1793
    :goto_d
    return-void
.end method

.method public static togglePlayPause()V
    .registers 7

    .line 1835
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1836
    sget-wide v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1c2

    cmp-long v6, v2, v4

    if-gez v6, :cond_f

    .line 1837
    return-void

    .line 1839
    :cond_f
    sput-wide v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    .line 1840
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1841
    return-void

    .line 1843
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1844
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1845
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackResumedByUser()V

    .line 1846
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    goto :goto_37

    .line 1850
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1851
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackPausedByUser()V

    .line 1853
    :goto_37
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 1854
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 1855
    return-void

    .line 1857
    :cond_3e
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez v0, :cond_4d

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1858
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1860
    :cond_4d
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    .line 1862
    return-void
.end method

.method private static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1067
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static tryStartFromTrainingSync()V
    .registers 2

    .line 350
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    return-void

    .line 353
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 354
    return-void

    .line 356
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_2e

    .line 359
    :cond_23
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_2a

    .line 360
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 362
    :cond_2a
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    .line 363
    return-void

    .line 357
    :cond_2e
    :goto_2e
    return-void
.end method

.method private static updateDragHover(I)V
    .registers 9

    .line 1327
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6f

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-gez v1, :cond_9

    goto :goto_6f

    .line 1330
    :cond_9
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1331
    if-nez v0, :cond_10

    .line 1332
    return-void

    .line 1334
    :cond_10
    const/4 v1, 0x0

    if-gez p0, :cond_14

    .line 1335
    const/4 p0, 0x0

    .line 1337
    :cond_14
    if-lt p0, v0, :cond_18

    .line 1338
    add-int/lit8 p0, v0, -0x1

    .line 1340
    :cond_18
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    if-ne p0, v2, :cond_1d

    .line 1341
    return-void

    .line 1343
    :cond_1d
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1344
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1345
    sget v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1346
    if-gtz v3, :cond_37

    .line 1347
    const/4 v3, 0x0

    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 1348
    if-eqz v3, :cond_35

    const/16 v4, 0x2c

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    goto :goto_37

    :cond_35
    const/16 v3, 0x84

    .line 1350
    :cond_37
    :goto_37
    nop

    :goto_38
    if-ge v1, v0, :cond_6e

    .line 1351
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1352
    const/4 v5, 0x0

    .line 1353
    if-ge v2, p0, :cond_4a

    .line 1354
    if-le v1, v2, :cond_51

    if-gt v1, p0, :cond_51

    .line 1355
    neg-int v5, v3

    int-to-float v5, v5

    goto :goto_51

    .line 1357
    :cond_4a
    if-le v2, p0, :cond_51

    .line 1358
    if-lt v1, p0, :cond_51

    if-ge v1, v2, :cond_51

    .line 1359
    int-to-float v5, v3

    .line 1362
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

    .line 1363
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-eq v4, v5, :cond_6b

    .line 1364
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1350
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1367
    :cond_6e
    return-void

    .line 1328
    :cond_6f
    :goto_6f
    return-void
.end method

.method private static updatePlayPauseLabel()V
    .registers 3

    .line 1163
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    .line 1164
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_47

    .line 1167
    :cond_e
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 1168
    :goto_23
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v1, :cond_3a

    .line 1169
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v0, :cond_35

    const/16 v0, 0x8

    goto :goto_36

    :cond_35
    const/4 v0, 0x7

    :goto_36
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/XemsIcon;->setType(I)V

    goto :goto_46

    .line 1172
    :cond_3a
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_41

    const-string v0, "\u23f8"

    goto :goto_43

    :cond_41
    const-string v0, "\u25b6"

    :goto_43
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    :goto_46
    return-void

    .line 1165
    :cond_47
    :goto_47
    return-void
.end method

.method private static updateTimeLabel(II)V
    .registers 4

    .line 1103
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1104
    return-void

    .line 1106
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

    .line 1107
    return-void
.end method
