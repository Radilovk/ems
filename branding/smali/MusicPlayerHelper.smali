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

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x3

    .line 104
    new-array v0, v2, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    .line 113
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 126
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 127
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 140
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_48

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_52

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_5c

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    return-void

    .line 140
    nop

    :array_48
    .array-data 4
        0x14
        0x1e
        0x32
    .end array-data

    :array_52
    .array-data 4
        0x32
        0x14
        0x14
    .end array-data

    :array_5c
    .array-data 4
        0x55
        0xa
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100()J
    .registers 2

    .prologue
    .line 42
    sget-wide v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    return-wide v0
.end method

.method static synthetic access$1000()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    return-void
.end method

.method static synthetic access$102(J)J
    .registers 2

    .prologue
    .line 42
    sput-wide p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J

    return-wide p0
.end method

.method static synthetic access$1100(I)V
    .registers 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyPreset(I)V

    return-void
.end method

.method static synthetic access$1200()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    return-void
.end method

.method static synthetic access$1300()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    return-void
.end method

.method static synthetic access$1400()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->closePlayer()V

    return-void
.end method

.method static synthetic access$1500()Z
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method static synthetic access$1600()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1700()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    return-void
.end method

.method static synthetic access$1802(I)I
    .registers 1

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    return p0
.end method

.method static synthetic access$1900()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    return-void
.end method

.method static synthetic access$2000()Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object p0
.end method

.method static synthetic access$2100()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(FF)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveDragGhost(FF)V

    return-void
.end method

.method static synthetic access$2400(F)I
    .registers 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(I)V
    .registers 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateDragHover(I)V

    return-void
.end method

.method static synthetic access$2600(F)V
    .registers 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoScrollPlaylist(F)V

    return-void
.end method

.method static synthetic access$2700(II)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->finishDragReorder(II)V

    return-void
.end method

.method static synthetic access$2800(Z)V
    .registers 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    return-void
.end method

.method static synthetic access$2900()Landroid/widget/ScrollView;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    return-void
.end method

.method static synthetic access$3000()Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Landroid/view/View;)Landroid/view/View;
    .registers 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findPlaylistRow(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    return-void
.end method

.method static synthetic access$3402(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3502(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3600()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return v0
.end method

.method static synthetic access$3602(I)I
    .registers 1

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    return p0
.end method

.method static synthetic access$3700(Landroid/app/Activity;I)I
    .registers 3

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/view/View;FF)V
    .registers 3

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showDragGhost(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$3902(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    return p0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return v0
.end method

.method static synthetic access$4000(II)I
    .registers 3

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return p0
.end method

.method static synthetic access$4100(II)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    return-void
.end method

.method static synthetic access$4200()Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    return-object v0
.end method

.method static synthetic access$4300()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    return-void
.end method

.method static synthetic access$4400()F
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$4402(F)F
    .registers 1

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$4500()F
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$4502(F)F
    .registers 1

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$4600()F
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$4602(F)F
    .registers 1

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$4700()F
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$4702(F)F
    .registers 1

    .prologue
    .line 42
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$4800()Z
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$4802(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$4900(II)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(I)V
    .registers 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeTrack(I)V

    return-void
.end method

.method static synthetic access$5100(I)V
    .registers 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->skip(I)V

    return-void
.end method

.method static synthetic access$5200(I)I
    .registers 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5302(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$5400()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    return-void
.end method

.method static synthetic access$600(Z)Z
    .registers 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    return p0
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    return p0
.end method

.method static synthetic access$900()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    return-void
.end method

.method private static addPrevNext(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/16 v6, 0x20

    .line 868
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_11

    .line 882
    :cond_10
    :goto_10
    return-void

    .line 871
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 872
    const-string v1, "\u23ee"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 873
    const-string v2, "\u23ed"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 874
    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 875
    new-instance v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SkipListener;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 876
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 877
    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 878
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 880
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 881
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10
.end method

.method private static addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 1125
    if-eqz p1, :cond_4

    if-nez p0, :cond_5

    .line 1139
    :cond_4
    :goto_4
    return-void

    .line 1128
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->resolve(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    invoke-direct {v2, p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez v0, :cond_21

    .line 1131
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1133
    :cond_21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 1134
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1135
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1136
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1137
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    goto :goto_4
.end method

.method private static addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 4

    .prologue
    .line 1117
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 1122
    :goto_3
    return-void

    .line 1118
    :catch_4
    move-exception v0

    .line 1119
    const-string v1, "player_add_track"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1120
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_3
.end method

.method public static advanceToNextTrack()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 254
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_e

    .line 258
    :goto_d
    return v0

    .line 257
    :cond_e
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 258
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    goto :goto_d
.end method

.method private static applyExpandedState()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 737
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 738
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 741
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    sget-boolean v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    if-eqz v3, :cond_2f

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 743
    :cond_1e
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->markToggle(Landroid/view/View;Z)V

    .line 744
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    sget-boolean v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->markToggle(Landroid/view/View;Z)V

    .line 745
    return-void

    :cond_2d
    move v0, v2

    .line 738
    goto :goto_e

    :cond_2f
    move v1, v2

    .line 741
    goto :goto_1b
.end method

.method private static applyPreset(I)V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 701
    if-ltz p0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    array-length v0, v0

    if-lt p0, v0, :cond_b

    .line 714
    :cond_a
    :goto_a
    return-void

    .line 704
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    aget-object v0, v0, p0

    .line 705
    aget v1, v0, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 706
    aget v1, v0, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    .line 707
    aget v1, v0, v4

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 708
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 709
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v2, v0, v3

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 710
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    aget v0, v0, v4

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V

    .line 711
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSettingSteppers()V

    .line 712
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 713
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    goto :goto_a
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .prologue
    .line 154
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 158
    :goto_3
    return-void

    .line 155
    :catch_4
    move-exception v0

    .line 156
    const-string v1, "MusicPlayerHelper.attachMasterPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static attachMasterPanelImpl(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 161
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 173
    :cond_5
    :goto_5
    return-void

    .line 164
    :cond_6
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_5

    .line 168
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 172
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method private static autoScrollPlaylist(F)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1268
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_6

    .line 1282
    :cond_5
    :goto_5
    return-void

    .line 1271
    :cond_6
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1272
    if-eqz v0, :cond_35

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1273
    :goto_15
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1274
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 1275
    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1276
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 1277
    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpg-float v1, p0, v1

    if-gez v1, :cond_38

    .line 1278
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v1, -0x10

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_5

    .line 1272
    :cond_35
    const/16 v0, 0x78

    goto :goto_15

    .line 1279
    :cond_38
    sub-int v0, v2, v0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_5

    .line 1280
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x10

    invoke-virtual {v0, v3, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_5
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1551
    if-nez p0, :cond_4

    .line 1557
    :goto_3
    return-void

    .line 1554
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1555
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1556
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method private static cancelPendingDrag()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 1490
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 1491
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1492
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    .line 1494
    :cond_e
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1495
    return-void
.end method

.method private static clearDragHighlight()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1319
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1320
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 1321
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 1322
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 1323
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1324
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1325
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1326
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1327
    return-void
.end method

.method private static clearOverlayRefs()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1586
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1587
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 1588
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 1589
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 1590
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 1591
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 1592
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 1593
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 1594
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 1595
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 1596
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1597
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1598
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1599
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 1600
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 1601
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    .line 1602
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    .line 1603
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->meterView:Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    .line 1604
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 1605
    return-void
.end method

.method private static closePlayer()V
    .registers 1

    .prologue
    .line 1560
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1561
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStop()V

    .line 1562
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1563
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 1564
    return-void
.end method

.method private static configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V
    .registers 7

    .prologue
    .line 676
    if-nez p0, :cond_3

    .line 688
    :goto_2
    return-void

    .line 680
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 681
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 682
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 683
    const-string v0, "%"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0, p4}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V

    .line 685
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;

    invoke-direct {v0, p5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setOnAmountChangeListener(Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_2

    .line 686
    :catch_1d
    move-exception v0

    goto :goto_2
.end method

.method private static configureSeekBar()V
    .registers 2

    .prologue
    .line 654
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-nez v0, :cond_5

    .line 665
    :goto_4
    return-void

    .line 658
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setMaxProcess(I)V

    .line 659
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 660
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setClickable(Z)V

    .line 661
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setFocusable(Z)V

    .line 662
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_4

    .line 663
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

    .line 668
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v4

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 669
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v8

    const/4 v9, 0x1

    move v5, v1

    move v6, v2

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 670
    sget-object v8, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v10, 0x50

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v12

    const/4 v13, 0x2

    move v9, v1

    move v11, v3

    invoke-static/range {v8 .. v13}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 671
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v4

    const/4 v5, 0x3

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureAmount(Lcom/isaigu/gymapp/widget/AmountView;IIIII)V

    .line 672
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V

    .line 673
    return-void
.end method

.method private static dismissOverlay(Z)V
    .registers 2

    .prologue
    .line 1567
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 1568
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    .line 1569
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 1570
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1e

    .line 1572
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_26

    .line 1575
    :goto_12
    if-nez p0, :cond_1e

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez v0, :cond_1e

    .line 1576
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1577
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 1580
    :cond_1e
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    if-nez v0, :cond_25

    .line 1581
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1583
    :cond_25
    return-void

    .line 1573
    :catch_26
    move-exception v0

    goto :goto_12
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 4

    .prologue
    .line 1643
    if-nez p0, :cond_3

    .line 1647
    :goto_2
    return p1

    .line 1646
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1647
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

    .line 1185
    if-nez p0, :cond_5

    move-object v0, v1

    .line 1193
    :goto_4
    return-object v0

    .line 1188
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_17

    .line 1189
    instance-of v2, v0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_12

    .line 1190
    check-cast v0, Landroid/widget/ScrollView;

    goto :goto_4

    .line 1188
    :cond_12
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_9

    :cond_17
    move-object v0, v1

    .line 1193
    goto :goto_4
.end method

.method private static findPlaylistRow(Landroid/view/View;)Landroid/view/View;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1345
    if-nez p0, :cond_5

    move-object v0, v1

    .line 1358
    :goto_4
    return-object v0

    :cond_5
    move-object v0, p0

    .line 1349
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1d

    .line 1350
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1351
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-ne v2, v3, :cond_6

    goto :goto_4

    .line 1355
    :cond_1d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 1356
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_4

    :cond_2c
    move-object v0, v1

    .line 1358
    goto :goto_4
.end method

.method private static finishDragReorder(II)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 1300
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1301
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resetPlaylistRowTransforms()V

    .line 1302
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V

    .line 1303
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V

    .line 1304
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1305
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1306
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1307
    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1308
    if-eq p0, p1, :cond_1d

    .line 1309
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V

    .line 1316
    :cond_1c
    :goto_1c
    return-void

    .line 1311
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1312
    if-eqz v0, :cond_1c

    .line 1313
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    goto :goto_1c
.end method

.method private static formatTime(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1030
    if-gez p0, :cond_3

    .line 1031
    const/4 p0, 0x0

    .line 1033
    :cond_3
    div-int/lit16 v0, p0, 0x3e8

    .line 1034
    div-int/lit8 v1, v0, 0x3c

    .line 1035
    rem-int/lit8 v0, v0, 0x3c

    .line 1036
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

    .line 1037
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

    .line 1036
    :cond_38
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private static grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 1540
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    .line 1542
    if-eqz v0, :cond_f

    .line 1543
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 1548
    :cond_f
    :goto_f
    return-void

    .line 1545
    :catch_10
    move-exception v0

    .line 1546
    const-string v1, "player_uri_persist"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method static hasPlaylistTracks()Z
    .registers 1

    .prologue
    .line 309
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
    .line 1498
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V

    .line 1499
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 1500
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1501
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 1502
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1504
    :cond_18
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_21

    .line 1506
    :try_start_1c
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_21} :catch_25

    .line 1510
    :cond_21
    :goto_21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1511
    return-void

    .line 1507
    :catch_25
    move-exception v0

    goto :goto_21
.end method

.method private static isAnyTrainingRunning()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 400
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_7

    move v0, v1

    .line 416
    :goto_6
    return v0

    .line 404
    :cond_7
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 405
    if-nez v3, :cond_11

    move v0, v1

    .line 406
    goto :goto_6

    :cond_11
    move v2, v1

    .line 408
    :goto_12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_37

    .line 409
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 410
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

    .line 411
    const/4 v0, 0x1

    goto :goto_6

    .line 408
    :cond_32
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 414
    :catch_36
    move-exception v0

    :cond_37
    move v0, v1

    .line 416
    goto :goto_6
.end method

.method static isOverlayOpen()Z
    .registers 1

    .prologue
    .line 305
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    return v0
.end method

.method private static isOverlayShowing()Z
    .registers 1

    .prologue
    .line 247
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

    .line 249
    :goto_d
    return v0

    .line 247
    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 248
    :catch_10
    move-exception v0

    .line 249
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    goto :goto_d
.end method

.method private static isTargetTrainingRunning()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 348
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_14

    iget-object v1, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_15

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 351
    :cond_14
    :goto_14
    return v0

    .line 350
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method private static loadPlaylist(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 527
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 528
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 529
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_23

    .line 530
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, -0x1

    :goto_21
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 532
    :cond_23
    return-void

    .line 530
    :cond_24
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static lockPlaylistScroll(Z)V
    .registers 2

    .prologue
    .line 1197
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_9

    .line 1198
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1200
    :cond_9
    return-void
.end method

.method private static mapSeekProgressToMs(II)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    .line 1014
    if-gtz p1, :cond_7

    move p1, v0

    .line 1026
    :cond_6
    :goto_6
    return p1

    .line 1018
    :cond_7
    if-gez p0, :cond_13

    .line 1023
    :goto_9
    if-ge v0, v1, :cond_6

    .line 1026
    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    goto :goto_6

    .line 1020
    :cond_13
    if-le p0, v1, :cond_17

    move v0, v1

    .line 1021
    goto :goto_9

    :cond_17
    move v0, p0

    goto :goto_9
.end method

.method private static markToggle(Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 748
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 754
    :goto_4
    return-void

    .line 751
    :cond_5
    if-eqz p1, :cond_1b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    move v1, v0

    .line 752
    :goto_10
    if-eqz p1, :cond_1f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 751
    :goto_14
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleRound(Landroid/view/View;II)V

    .line 753
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_4

    .line 751
    :cond_1b
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    move v1, v0

    goto :goto_10

    .line 752
    :cond_1f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_14
.end method

.method private static moveDragGhost(FF)V
    .registers 6

    .prologue
    .line 1460
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1476
    :cond_4
    :goto_4
    return-void

    .line 1463
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1464
    if-eqz v0, :cond_4

    .line 1467
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1468
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1469
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1470
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_4

    .line 1471
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1472
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    sub-float v2, p0, v2

    sget v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1473
    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p1, v1

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1474
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method private static moveOverlayWindow(II)V
    .registers 4

    .prologue
    .line 1608
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1615
    :cond_c
    :goto_c
    return-void

    .line 1611
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1612
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1613
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1614
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_c
.end method

.method private static movePlaylistItem(II)V
    .registers 4

    .prologue
    .line 1165
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

    .line 1182
    :cond_16
    :goto_16
    return-void

    .line 1168
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 1169
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1170
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v0, p0, :cond_3a

    .line 1171
    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 1177
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_16

    .line 1179
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 1180
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    goto :goto_16

    .line 1172
    :cond_3a
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ge p0, v0, :cond_49

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-lt p1, v0, :cond_49

    .line 1173
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_2a

    .line 1174
    :cond_49
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-le p0, v0, :cond_2a

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gt p1, v0, :cond_2a

    .line 1175
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_2a
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 208
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onActivityResultImpl(IILandroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 212
    :goto_3
    return-void

    .line 209
    :catch_4
    move-exception v0

    .line 210
    const-string v1, "MusicPlayerHelper.onActivityResult"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onActivityResultImpl(IILandroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 215
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 216
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V

    .line 217
    const/16 v1, 0x4255

    if-ne p0, v1, :cond_f

    const/4 v1, -0x1

    if-ne p1, v1, :cond_f

    if-nez p2, :cond_10

    .line 243
    :cond_f
    :goto_f
    return-void

    .line 220
    :cond_10
    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_f

    .line 224
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z

    .line 225
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 227
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_44

    .line 228
    :goto_2b
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 229
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 230
    if-eqz v3, :cond_41

    .line 231
    invoke-static {v1, p2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 232
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 228
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 237
    :cond_44
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_f

    .line 241
    invoke-static {v1, p2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 242
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrackSafe(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_f
.end method

.method public static onPlaybackEndedNaturally()V
    .registers 0

    .prologue
    .line 343
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 344
    return-void
.end method

.method public static onPlaybackPausedByUser()V
    .registers 0

    .prologue
    .line 335
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingPause()V

    .line 336
    return-void
.end method

.method public static onPlaybackResumedByUser()V
    .registers 0

    .prologue
    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 340
    return-void
.end method

.method public static onPlaybackStarted()V
    .registers 0

    .prologue
    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->onPlayerPlaybackStarted()V

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->requestTrainingStart()V

    .line 332
    return-void
.end method

.method public static onTrainingFullStop()V
    .registers 2

    .prologue
    .line 290
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onTrainingFullStopImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 294
    :goto_3
    return-void

    .line 291
    :catch_4
    move-exception v0

    .line 292
    const-string v1, "MusicPlayerHelper.onTrainingFullStop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static onTrainingFullStopImpl()V
    .registers 1

    .prologue
    .line 297
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingState()V

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 299
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 302
    :cond_15
    return-void
.end method

.method private static persistPlaylist(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 535
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 536
    return-void
.end method

.method private static persistSettings()V
    .registers 2

    .prologue
    .line 733
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->saveSettings(Landroid/content/Context;)V

    .line 734
    return-void
.end method

.method private static reShowOverlay(Landroid/app/Activity;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1514
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v2, :cond_e

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    .line 1534
    :goto_f
    return v0

    .line 1518
    :cond_10
    :try_start_10
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1519
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1520
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 1521
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1522
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 1523
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTransportState()V

    .line 1524
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1525
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_33} :catch_34

    goto :goto_f

    .line 1530
    :catch_34
    move-exception v0

    .line 1531
    const-string v2, "music_player_overlay_reshow"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1532
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1533
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    move v0, v1

    .line 1534
    goto :goto_f

    .line 1527
    :cond_42
    :try_start_42
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_34

    goto :goto_f
.end method

.method private static rebuildPlaylistViews(Landroid/app/Activity;)V
    .registers 15

    .prologue
    const/16 v13, 0x1e

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 757
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    if-nez p0, :cond_b

    .line 799
    :cond_a
    :goto_a
    return-void

    .line 760
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 761
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    move v4, v5

    .line 762
    :goto_15
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_11f

    .line 764
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 767
    const v1, 0x7f0b007d

    :try_start_28
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2e} :catch_124

    move-result-object v3

    .line 771
    const v1, 0x7f090284

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 772
    const v2, 0x7f090285

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 773
    sget v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v4, v6, :cond_f6

    move v9, v8

    .line 774
    :goto_44
    if-eqz v9, :cond_f9

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v7, 0x26

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v6

    :goto_4e
    const/16 v7, 0xc

    .line 775
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v7

    int-to-float v11, v7

    if-eqz v9, :cond_fd

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v12, 0xaa

    invoke-static {v7, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    :goto_5f
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v12

    .line 774
    invoke-static {v6, v11, v7, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    if-eqz v1, :cond_9d

    .line 777
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_101

    const-string v6, "\u25b6  "

    :goto_75
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    if-eqz v9, :cond_118

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_8a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 779
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eqz v9, :cond_11c

    move v0, v8

    :goto_92
    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 781
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    :cond_9d
    instance-of v0, v2, Landroid/widget/TextView;

    if-eqz v0, :cond_a9

    move-object v0, v2

    .line 784
    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 786
    :cond_a9
    instance-of v0, v3, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_e2

    .line 787
    const-string v0, "\u2715"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v6, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v6

    .line 788
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RemoveTrackListener;-><init>(I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 790
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move-object v0, v3

    .line 791
    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v3

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 793
    :cond_e2
    if-eqz v2, :cond_ec

    .line 794
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 796
    :cond_ec
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 762
    :goto_f1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_15

    :cond_f6
    move v9, v5

    .line 773
    goto/16 :goto_44

    .line 774
    :cond_f9
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    goto/16 :goto_4e

    .line 775
    :cond_fd
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    goto/16 :goto_5f

    .line 777
    :cond_101
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

    goto/16 :goto_75

    .line 778
    :cond_118
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_8a

    :cond_11c
    move v0, v5

    .line 780
    goto/16 :goto_92

    .line 798
    :cond_11f
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    goto/16 :goto_a

    .line 768
    :catch_124
    move-exception v0

    goto :goto_f1
.end method

.method private static refreshPresetHighlight()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 718
    :goto_3
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_38

    .line 719
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    aget-object v4, v2, v0

    .line 720
    if-nez v4, :cond_11

    .line 718
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 723
    :cond_11
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->PRESETS:[[I

    aget-object v2, v2, v0

    .line 724
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v5

    aget v6, v2, v1

    if-ne v5, v6, :cond_36

    .line 725
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v5

    aget v6, v2, v3

    if-ne v5, v6, :cond_36

    .line 726
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v5

    const/4 v6, 0x2

    aget v2, v2, v6

    if-ne v5, v2, :cond_36

    move v2, v3

    .line 727
    :goto_2f
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleChip(Landroid/widget/TextView;Z)V

    .line 728
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_e

    :cond_36
    move v2, v1

    .line 726
    goto :goto_2f

    .line 730
    :cond_38
    return-void
.end method

.method private static refreshSeekFromPlayer()V
    .registers 8

    .prologue
    const/16 v1, 0x3e8

    const/4 v0, 0x0

    .line 987
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    if-eqz v2, :cond_c

    .line 1004
    :cond_b
    :goto_b
    return-void

    .line 990
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v2

    .line 991
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v3

    .line 992
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    .line 993
    if-gtz v2, :cond_1f

    .line 994
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    goto :goto_b

    .line 997
    :cond_1f
    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    int-to-long v2, v2

    div-long v2, v4, v2

    long-to-int v2, v2

    .line 998
    if-gez v2, :cond_2f

    .line 1003
    :goto_29
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    goto :goto_b

    .line 1000
    :cond_2f
    if-le v2, v1, :cond_33

    move v0, v1

    .line 1001
    goto :goto_29

    :cond_33
    move v0, v2

    goto :goto_29
.end method

.method private static refreshSettingSteppers()V
    .registers 4

    .prologue
    .line 917
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 918
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    .line 919
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v1, v1, v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 922
    :cond_20
    return-void
.end method

.method private static refreshTrackTitle()V
    .registers 3

    .prologue
    .line 976
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 984
    :goto_4
    return-void

    .line 979
    :cond_5
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_13

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1c

    .line 980
    :cond_13
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 983
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
    .line 262
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 263
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_1f

    .line 264
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 265
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 266
    :goto_1a
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 268
    :cond_1f
    return-void

    .line 265
    :cond_20
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static removeDragGhost()V
    .registers 2

    .prologue
    .line 1479
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1487
    :goto_4
    return-void

    .line 1482
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1483
    if-eqz v0, :cond_14

    .line 1484
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1486
    :cond_14
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    goto :goto_4
.end method

.method private static removeTrack(I)V
    .registers 3

    .prologue
    .line 949
    if-ltz p0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_b

    .line 969
    :cond_a
    :goto_a
    return-void

    .line 952
    :cond_b
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne p0, v0, :cond_21

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 953
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 954
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 956
    :cond_21
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 957
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 958
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 962
    :cond_31
    :goto_31
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 963
    if-eqz v0, :cond_40

    .line 964
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 965
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 967
    :cond_40
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 968
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    goto :goto_a

    .line 959
    :cond_47
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-lt p0, v0, :cond_55

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_31

    .line 960
    :cond_55
    const/4 v0, 0x0

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_31
.end method

.method private static replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V
    .registers 16

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 887
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_d

    .line 905
    :cond_c
    :goto_c
    return-void

    .line 890
    :cond_d
    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/AmountView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 891
    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 892
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/widget/AmountView;->setVisibility(I)V

    .line 893
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_30

    .line 894
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 896
    :cond_30
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

    .line 897
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;-><init>(IIIILcom/isaigu/gymapp/widget/XemsUi$Stepper;)V

    .line 898
    iget-object v1, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 899
    iget-object v1, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 900
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 901
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 902
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 903
    iget-object v1, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 904
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingSteppers:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aput-object v5, v0, p2

    goto :goto_c
.end method

.method private static requestTrainingPause()V
    .registers 2

    .prologue
    .line 373
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 387
    :cond_4
    :goto_4
    return-void

    .line 377
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_1d

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_1d

    .line 379
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    goto :goto_4

    .line 385
    :catch_1b
    move-exception v0

    goto :goto_4

    .line 382
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_1b

    goto :goto_4
.end method

.method private static requestTrainingStart()V
    .registers 2

    .prologue
    .line 356
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 370
    :cond_4
    :goto_4
    return-void

    .line 360
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v1, :cond_23

    .line 362
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->start()V

    goto :goto_4

    .line 368
    :catch_21
    move-exception v0

    goto :goto_4

    .line 365
    :cond_23
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isAnyTrainingRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 366
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->startAll()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2e} :catch_21

    goto :goto_4
.end method

.method private static requestTrainingStop()V
    .registers 1

    .prologue
    .line 390
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 397
    :goto_4
    return-void

    .line 394
    :cond_5
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->stopAll()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 395
    :catch_b
    move-exception v0

    goto :goto_4
.end method

.method private static resetPlaylistRowTransforms()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1285
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    .line 1297
    :cond_7
    return-void

    :cond_8
    move v0, v1

    .line 1288
    :goto_9
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1289
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1290
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1291
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1292
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1293
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1294
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1295
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1288
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private static resizeOverlayWindow()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 1618
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1619
    if-eqz v0, :cond_1a

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1620
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1640
    :cond_1a
    :goto_1a
    return-void

    .line 1623
    :cond_1b
    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 1624
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    .line 1625
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1626
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1624
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1627
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1628
    const/16 v3, 0xf8

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 1629
    if-ge v1, v0, :cond_55

    .line 1632
    :goto_3e
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1633
    if-eqz v1, :cond_1a

    .line 1634
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 1635
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1636
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1637
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1638
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1a

    :cond_55
    move v0, v1

    goto :goto_3e
.end method

.method public static resolveActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 466
    move-object v0, p0

    :goto_2
    if-eqz v0, :cond_18

    .line 467
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_b

    .line 468
    check-cast v0, Landroid/app/Activity;

    .line 476
    :goto_a
    return-object v0

    .line 470
    :cond_b
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_16

    .line 471
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    :cond_16
    move-object v0, v1

    .line 473
    goto :goto_a

    :cond_18
    move-object v0, v1

    .line 476
    goto :goto_a
.end method

.method private static resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1362
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_19

    .line 1364
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1365
    if-eqz v0, :cond_19

    .line 1366
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1367
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_19

    .line 1368
    check-cast v0, Landroid/view/ViewGroup;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_17} :catch_18

    .line 1378
    :goto_17
    return-object v0

    .line 1371
    :catch_18
    move-exception v0

    .line 1374
    :cond_19
    invoke-static {v1, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1375
    if-eqz v0, :cond_2a

    .line 1376
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_17

    :cond_2a
    move-object v0, v1

    .line 1378
    goto :goto_17
.end method

.method private static resolveDropIndex(F)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1203
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_14

    .line 1204
    :cond_d
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-ltz v1, :cond_13

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1221
    :cond_13
    :goto_13
    return v0

    .line 1206
    :cond_14
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1207
    :goto_1a
    if-ge v0, v1, :cond_5a

    .line 1208
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1209
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1210
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1211
    const/4 v4, 0x1

    aget v3, v3, v4

    .line 1212
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 1213
    int-to-float v4, v3

    cmpl-float v4, p0, v4

    if-ltz v4, :cond_52

    int-to-float v4, v2

    cmpg-float v4, p0, v4

    if-gtz v4, :cond_52

    .line 1214
    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    .line 1215
    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_13

    .line 1217
    :cond_52
    int-to-float v2, v3

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_13

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1221
    :cond_5a
    add-int/lit8 v0, v1, -0x1

    goto :goto_13
.end method

.method static resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 484
    if-eqz p0, :cond_3

    .line 503
    :cond_2
    :goto_2
    return-object p0

    .line 487
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_13

    .line 488
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 489
    if-nez p0, :cond_2

    .line 493
    :cond_13
    if-eqz p1, :cond_1f

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 495
    if-nez p0, :cond_2

    .line 499
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 500
    if-nez p0, :cond_2

    .line 503
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    goto :goto_2
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 507
    if-nez p0, :cond_5

    .line 508
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 510
    :cond_5
    if-nez p0, :cond_9

    move-object v0, v2

    .line 523
    :cond_8
    :goto_8
    return-object v0

    .line 513
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 514
    if-nez v3, :cond_11

    move-object v0, v2

    .line 515
    goto :goto_8

    .line 517
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 518
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 519
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 517
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_2b
    move-object v0, v2

    .line 523
    goto :goto_8
.end method

.method private static resolveThemeColor(Landroid/app/Activity;II)I
    .registers 4

    .prologue
    .line 1382
    if-nez p0, :cond_3

    .line 1388
    :goto_2
    return p2

    .line 1386
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_c

    move-result p2

    goto :goto_2

    .line 1387
    :catch_c
    move-exception v0

    goto :goto_2
.end method

.method private static restoreDragSourceRow()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1330
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1342
    :goto_7
    return-void

    .line 1333
    :cond_8
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1335
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1336
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1337
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    .line 1338
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1340
    :cond_28
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    .line 1341
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_7
.end method

.method private static restoreOverlayAfterPick()V
    .registers 2

    .prologue
    .line 1143
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 1144
    if-nez v0, :cond_5

    .line 1162
    :cond_4
    :goto_4
    return-void

    .line 1148
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1149
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 1152
    :cond_11
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_4

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1154
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 1155
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1156
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1157
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_4

    .line 1159
    :catch_2b
    move-exception v0

    .line 1160
    const-string v1, "music_player_restore_pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static setAmountSafe(Lcom/isaigu/gymapp/widget/AmountView;I)V
    .registers 3

    .prologue
    .line 691
    if-nez p0, :cond_3

    .line 698
    :goto_2
    return-void

    .line 695
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 696
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private static setPlayLoadingUi(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1041
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 1042
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-nez p0, :cond_21

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1043
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz p0, :cond_23

    const/4 v0, 0x4

    :goto_12
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 1046
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    if-eqz p0, :cond_25

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    :cond_20
    return-void

    :cond_21
    move v0, v1

    .line 1042
    goto :goto_a

    :cond_23
    move v0, v1

    .line 1043
    goto :goto_12

    .line 1046
    :cond_25
    const/16 v1, 0x8

    goto :goto_1d
.end method

.method private static settingValue(I)I
    .registers 2

    .prologue
    .line 908
    packed-switch p0, :pswitch_data_18

    .line 912
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSmoothness()I

    move-result v0

    :goto_7
    return v0

    .line 909
    :pswitch_8
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getSensitivity()I

    move-result v0

    goto :goto_7

    .line 910
    :pswitch_d
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getRhythmMix()I

    move-result v0

    goto :goto_7

    .line 911
    :pswitch_12
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getFloorPercent()I

    move-result v0

    goto :goto_7

    .line 908
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    .line 176
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 177
    if-nez v0, :cond_9

    .line 204
    :cond_8
    :goto_8
    return-void

    .line 180
    :cond_9
    if-nez p1, :cond_12

    .line 181
    const v1, 0x7f0d011a

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_8

    .line 184
    :cond_12
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 185
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v1

    if-nez v1, :cond_21

    .line 188
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->captureCeilingFromSlider()I

    .line 190
    :cond_21
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 191
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hidePlayerOverlay()V

    goto :goto_8

    .line 194
    :cond_2b
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_35

    .line 195
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->reShowOverlay(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 199
    :cond_35
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->loadPlaylist(Landroid/app/Activity;)V

    .line 200
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->loadSettings(Landroid/content/Context;)V

    .line 201
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showOverlay(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 202
    const v1, 0x7f0d0113

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    goto :goto_8
.end method

.method public static showActive(II)V
    .registers 4

    .prologue
    .line 441
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 442
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 444
    :cond_c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 445
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 446
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_1d

    .line 447
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 449
    :cond_1d
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 450
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

    .line 1393
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->removeDragGhost()V

    .line 1394
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1395
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDragOverlayRoot(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 1396
    if-eqz v1, :cond_1b

    if-eqz p0, :cond_1b

    if-nez v2, :cond_1c

    .line 1457
    :cond_1b
    :goto_1b
    return-void

    .line 1399
    :cond_1c
    const v0, 0x7f090284

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1400
    if-eqz v0, :cond_145

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1402
    :goto_2b
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1403
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1404
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1405
    const/16 v4, 0xa

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    .line 1406
    const/16 v5, 0x8

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 1407
    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1408
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1409
    const v5, 0x7f0600c3

    const v6, -0xdadadb

    invoke-static {v1, v5, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1410
    const/16 v5, 0xa

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1411
    invoke-static {v1, v8}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v6, 0x7f06006f

    .line 1412
    invoke-static {v1, v6, v11}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v6

    .line 1411
    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1413
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1414
    const v4, 0x3f7ae148    # 0.98f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1415
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1416
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1417
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_9e

    .line 1418
    const/16 v4, 0x12

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1419
    const/16 v4, 0x12

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTranslationZ(F)V

    .line 1422
    :cond_9e
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1423
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1425
    const v0, 0x7f0600e6

    const v5, -0x171718

    invoke-static {v1, v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1426
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1427
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1428
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1431
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1432
    const-string v5, "\u2630"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1434
    const v5, 0x7f06006f

    invoke-static {v1, v5, v11}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1435
    const/16 v5, 0x8

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    invoke-virtual {v0, v5, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1437
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1438
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1440
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_149

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1441
    :goto_fd
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_150

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1443
    :goto_107
    new-array v4, v8, [I

    .line 1444
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1445
    aget v5, v4, v7

    int-to-float v5, v5

    sub-float v5, p1, v5

    sput v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    .line 1446
    aget v4, v4, v9

    int-to-float v4, v4

    sub-float v4, p2, v4

    sput v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    .line 1448
    new-array v4, v8, [I

    .line 1449
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1451
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1452
    const/16 v0, 0x33

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1453
    aget v0, v4, v7

    int-to-float v0, v0

    sub-float v0, p1, v0

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1454
    aget v0, v4, v9

    int-to-float v0, v0

    sub-float v0, p2, v0

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostOffsetY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1455
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1456
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragGhostView:Landroid/view/View;

    goto/16 :goto_1b

    .line 1400
    :cond_145
    const-string v0, ""

    goto/16 :goto_2b

    .line 1440
    :cond_149
    const/16 v0, 0x11c

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    goto :goto_fd

    .line 1441
    :cond_150
    const/16 v4, 0x28

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    goto :goto_107
.end method

.method public static showError(I)V
    .registers 3

    .prologue
    .line 453
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 454
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 456
    :cond_9
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 457
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_19

    .line 459
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 461
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 462
    return-void
.end method

.method public static showIdle()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 420
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 421
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 423
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    if-eqz v0, :cond_16

    .line 424
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 426
    :cond_16
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 427
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 428
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 429
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 430
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

    .line 539
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 649
    :cond_e
    :goto_e
    return v1

    .line 542
    :cond_f
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 545
    :try_start_12
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0b007c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1d} :catch_141

    move-result-object v4

    .line 550
    sput-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 551
    const v0, 0x7f09027a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 552
    const v0, 0x7f09028e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    .line 553
    const v0, 0x7f09027b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 554
    const v0, 0x7f09028f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    .line 555
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stylePlayLoadingSpinner(Landroid/app/Activity;)V

    .line 556
    const v0, 0x7f09027d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 557
    const v0, 0x7f09027e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 558
    const v0, 0x7f09027f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 559
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;

    .line 560
    const v0, 0x7f090282

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 561
    const v0, 0x7f090283

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 562
    const v0, 0x7f090229

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 563
    const v0, 0x7f090228

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 564
    const v0, 0x7f0902c3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 565
    const v0, 0x7f0902c4

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 566
    const v0, 0x7f0902c5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 567
    const v0, 0x7f0902c2

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->meterView:Lcom/isaigu/gymapp/widget/MusicImpulseMeterView;

    .line 568
    const v0, 0x7f0902c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    .line 569
    const v0, 0x7f09027c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    .line 570
    const/4 v0, 0x3

    new-array v5, v0, [Landroid/widget/TextView;

    const v0, 0x7f0902c6

    .line 571
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v1

    const v0, 0x7f0902c7

    .line 572
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v2

    const v0, 0x7f0902c8

    .line 573
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v6

    sput-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    .line 576
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 577
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSettings()V

    .line 578
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleOverlay(Landroid/app/Activity;Landroid/view/View;)V

    .line 579
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSeekBar()V

    .line 580
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 581
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistButton:Landroid/view/View;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;-><init>(Z)V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 582
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsButton:Landroid/view/View;

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;

    invoke-direct {v5, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;-><init>(Z)V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    move v0, v1

    .line 583
    :goto_12d
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    array-length v5, v5

    if-ge v0, v5, :cond_149

    .line 584
    sget-object v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->presetViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    new-instance v6, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;

    invoke-direct {v6, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PresetListener;-><init>(I)V

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_12d

    .line 546
    :catch_141
    move-exception v0

    .line 547
    const-string v2, "music_player_overlay_inflate"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 586
    :cond_149
    const v0, 0x7f090280

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 587
    const v0, 0x7f090288

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 588
    const v0, 0x7f090289

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;-><init>()V

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 590
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 591
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 592
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 593
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 594
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 597
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v0, :cond_24c

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_24c

    .line 598
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 599
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_24c

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 603
    :goto_1a9
    if-eqz v0, :cond_1b9

    .line 604
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 606
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 609
    :cond_1b9
    const/16 v0, 0xc0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    .line 610
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 611
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 612
    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 613
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    :try_start_1d3
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 619
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 620
    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;-><init>()V

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 621
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 622
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 623
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 624
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 626
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_e

    .line 630
    const v4, 0x106000d

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 631
    const v4, 0x800033

    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    .line 632
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 633
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 634
    const/16 v5, 0x14

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 635
    const/16 v5, 0x12c

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 636
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 637
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    or-int/lit8 v5, v5, 0x20

    and-int/lit8 v5, v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 641
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 642
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 643
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    :try_end_23c
    .catch Ljava/lang/Throwable; {:try_start_1d3 .. :try_end_23c} :catch_23f

    move v1, v2

    .line 644
    goto/16 :goto_e

    .line 645
    :catch_23f
    move-exception v0

    .line 646
    const-string v2, "music_player_overlay_show"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 647
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 648
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    goto/16 :goto_e

    :cond_24c
    move-object v0, v3

    goto/16 :goto_1a9
.end method

.method public static showPreparing()V
    .registers 2

    .prologue
    .line 433
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 434
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 436
    :cond_c
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->setPlayLoadingUi(Z)V

    .line 437
    return-void
.end method

.method private static skip(I)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 926
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 946
    :cond_9
    :goto_9
    return-void

    .line 929
    :cond_a
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int v2, v0, p0

    .line 930
    if-ltz v2, :cond_9

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 933
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-nez v0, :cond_4f

    move v0, v1

    .line 934
    :goto_2b
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 935
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 937
    :cond_3a
    sput v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 938
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 939
    const/4 v2, 0x0

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 940
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 941
    if-eqz v0, :cond_51

    .line 942
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    goto :goto_9

    .line 933
    :cond_4f
    const/4 v0, 0x0

    goto :goto_2b

    .line 944
    :cond_51
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    goto :goto_9
.end method

.method private static startCurrentTrack(Z)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1084
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1112
    :cond_8
    :goto_8
    return v0

    .line 1087
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1088
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1089
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1090
    if-eqz p0, :cond_23

    .line 1091
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackResumedByUser()V

    :cond_23
    move v0, v1

    .line 1094
    goto :goto_8

    .line 1096
    :cond_25
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v2, :cond_33

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3c

    .line 1097
    :cond_33
    if-eqz p0, :cond_8

    .line 1098
    const v1, 0x7f0d0112

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_8

    .line 1102
    :cond_3c
    const/4 v2, 0x0

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 1103
    if-nez v2, :cond_4c

    .line 1104
    const v1, 0x7f0d010b

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_8

    .line 1107
    :cond_4c
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    .line 1108
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 1109
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 1110
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 1111
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startPlayer(Landroid/app/Activity;Landroid/net/Uri;)V

    move v0, v1

    .line 1112
    goto :goto_8
.end method

.method private static startProgressUpdates()V
    .registers 2

    .prologue
    .line 1075
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1076
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1077
    return-void
.end method

.method private static stopProgressUpdates()V
    .registers 2

    .prologue
    .line 1080
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1081
    return-void
.end method

.method private static styleChip(Landroid/widget/TextView;Z)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 858
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 859
    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 860
    if-eqz p1, :cond_38

    .line 861
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

    .line 862
    :goto_26
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    int-to-float v1, v1

    .line 860
    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 863
    if-eqz p1, :cond_46

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_34
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    return-void

    .line 862
    :cond_38
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    int-to-float v3, v1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_26

    .line 863
    :cond_46
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_34
.end method

.method private static styleOverlay(Landroid/app/Activity;Landroid/view/View;)V
    .registers 10

    .prologue
    .line 806
    :try_start_0
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_4c

    .line 807
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

    .line 808
    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v5

    aput v5, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 809
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 810
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/16 v4, 0x38

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 812
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setElevation(F)V

    .line 813
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 815
    :cond_4c
    const v1, 0x7f090288

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleRound(Landroid/view/View;II)V

    .line 816
    const v1, 0x7f090289

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->styleRound(Landroid/view/View;II)V

    .line 817
    const v1, 0x7f090280

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 818
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_b2

    .line 819
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    const-string v3, "+  \u0414\u043e\u0431\u0430\u0432\u0438 \u043f\u0435\u0441\u043d\u0438"

    const-string v4, "+  Add songs"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 821
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/16 v3, 0x14

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/4 v5, 0x1

    .line 822
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 821
    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v4, 0x14

    .line 822
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v4

    int-to-float v4, v4

    .line 821
    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 823
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 825
    :cond_b2
    const v1, 0x7f0902c1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 826
    if-eqz v1, :cond_d2

    .line 827
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

    .line 829
    :cond_d2
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_dd

    .line 830
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 832
    :cond_dd
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addPrevNext(Landroid/app/Activity;)V

    .line 833
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 834
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rhythmView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 835
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->floorView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x50

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V

    .line 836
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->smoothView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v3, 0x3

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->replaceAmount(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/AmountView;IIII)V
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10e} :catch_10f

    .line 840
    :goto_10e
    return-void

    .line 837
    :catch_10f
    move-exception v1

    .line 838
    const-string v2, "music_player_style"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10e
.end method

.method private static stylePlayLoadingSpinner(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1051
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 1064
    :cond_8
    :goto_8
    return-void

    .line 1054
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playLoadingView:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1056
    :try_start_d
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1057
    if-eqz v0, :cond_8

    .line 1058
    const v1, 0x7f06006f

    const v2, -0x994496

    .line 1059
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1058
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_8

    .line 1062
    :catch_23
    move-exception v0

    goto :goto_8
.end method

.method private static styleRound(Landroid/view/View;II)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 843
    if-nez p0, :cond_4

    .line 855
    :goto_3
    return-void

    .line 846
    :cond_4
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 847
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 848
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 849
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 850
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, p2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 851
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    move-object v0, p0

    .line 852
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 854
    :cond_3c
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    goto :goto_3
.end method

.method public static syncTrainingState()V
    .registers 2

    .prologue
    .line 273
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->syncTrainingStateImpl()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 277
    :goto_3
    return-void

    .line 274
    :catch_4
    move-exception v0

    .line 275
    const-string v1, "MusicPlayerHelper.syncTrainingState"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static syncTrainingStateImpl()V
    .registers 1

    .prologue
    .line 280
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isTargetTrainingRunning()Z

    move-result v0

    .line 281
    if-eqz v0, :cond_9

    .line 282
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->tryStartFromTrainingSync()V

    .line 284
    :cond_9
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->syncWithTrainingState(Z)V

    .line 285
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 1651
    if-nez p0, :cond_3

    .line 1658
    :goto_2
    return-void

    .line 1655
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_2

    .line 1656
    :catch_c
    move-exception v0

    goto :goto_2
.end method

.method private static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 972
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static tryStartFromTrainingSync()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 327
    :cond_7
    :goto_7
    return-void

    .line 317
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 320
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 323
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez v0, :cond_28

    .line 324
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 326
    :cond_28
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    goto :goto_7
.end method

.method private static updateDragHover(I)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 1225
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-gez v0, :cond_a

    .line 1265
    :cond_9
    return-void

    .line 1228
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 1229
    if-eqz v4, :cond_9

    .line 1232
    if-gez p0, :cond_6f

    move v0, v2

    .line 1235
    :goto_15
    if-lt v0, v4, :cond_19

    .line 1236
    add-int/lit8 v0, v4, -0x1

    .line 1238
    :cond_19
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    if-eq v0, v1, :cond_9

    .line 1241
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 1242
    sget v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 1243
    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I

    .line 1244
    if-gtz v1, :cond_34

    .line 1245
    const/4 v1, 0x0

    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1246
    if-eqz v1, :cond_64

    const/16 v3, 0x2c

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    :cond_34
    :goto_34
    move v3, v2

    .line 1248
    :goto_35
    if-ge v3, v4, :cond_9

    .line 1249
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1250
    const/4 v2, 0x0

    .line 1251
    if-ge v5, v0, :cond_67

    .line 1252
    if-le v3, v5, :cond_46

    if-gt v3, v0, :cond_46

    .line 1253
    neg-int v2, v1

    int-to-float v2, v2

    .line 1260
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

    .line 1261
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;

    if-eq v6, v2, :cond_60

    .line 1262
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1248
    :cond_60
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_35

    .line 1246
    :cond_64
    const/16 v1, 0x84

    goto :goto_34

    .line 1255
    :cond_67
    if-le v5, v0, :cond_46

    .line 1256
    if-lt v3, v0, :cond_46

    if-ge v3, v5, :cond_46

    .line 1257
    int-to-float v2, v1

    goto :goto_46

    :cond_6f
    move v0, p0

    goto :goto_15
.end method

.method private static updatePlayPauseLabel()V
    .registers 2

    .prologue
    .line 1067
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1072
    :cond_a
    :goto_a
    return-void

    .line 1070
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

    .line 1071
    :goto_1e
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    const-string v0, "\u23f8"

    :goto_24
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1070
    :cond_28
    const/4 v0, 0x0

    goto :goto_1e

    .line 1071
    :cond_2a
    const-string v0, "\u25b6"

    goto :goto_24
.end method

.method private static updateTimeLabel(II)V
    .registers 5

    .prologue
    .line 1007
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1011
    :goto_4
    return-void

    .line 1010
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
