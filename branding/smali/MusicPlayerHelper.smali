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

.field private static final DRAG_LONG_PRESS_MS:J = 0x15eL

.field private static final ID_ADD_TRACK:I = 0x7f090280

.field private static final ID_CLOSE:I = 0x7f090288

.field private static final ID_INFO:I = 0x7f090289

.field private static final ID_LEVEL:I = 0x7f09022a

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

.field static final OVERLAY_LAYOUT_ID:I = 0x7f0b007c

.field private static final OVERLAY_PANEL_WIDTH_DP:I = 0x104

.field private static final OVERLAY_SIZE_DP:I = 0xc0

.field private static final OVERLAY_TAP_SLOP_DP:F = 10.0f

.field static final PICK_AUDIO:I = 0x4255

.field static final PLAYLIST_ITEM_LAYOUT_ID:I = 0x7f0b007d

.field private static final PROGRESS_TICK_MS:J = 0xc8L

.field private static final SEEK_MAX:I = 0x3e8

.field private static final STR_INFO_BODY:I = 0x7f0d0173

.field private static final STR_INFO_TITLE:I = 0x7f0d0172

.field private static activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

.field private static controlPanel:Landroid/view/View;

.field private static controlsExpanded:Z

.field private static currentIndex:I

.field private static dragFromIndex:I

.field private static dragHighlightIndex:I

.field private static final handler:Landroid/os/Handler;

.field private static itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

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

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    .line 79
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 91
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    .line 92
    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
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

.method static synthetic access$1000()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    return-void
.end method

.method static synthetic access$102(I)I
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    return p0
.end method

.method static synthetic access$1100()Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/lang/Runnable;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1202(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300()Landroid/os/Handler;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(F)I
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(I)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->highlightDropTarget(I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/Activity;I)I
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    return-void
.end method

.method static synthetic access$1800(II)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V

    return-void
.end method

.method static synthetic access$1902(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    return p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(II)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    return-void
.end method

.method static synthetic access$2100()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    return-void
.end method

.method static synthetic access$2200()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 32
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 1

    .line 32
    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$2300()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return v0
.end method

.method static synthetic access$2302(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDx:F

    return p0
.end method

.method static synthetic access$2400()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return v0
.end method

.method static synthetic access$2402(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayTouchDy:F

    return p0
.end method

.method static synthetic access$2500()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return v0
.end method

.method static synthetic access$2502(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawX:F

    return p0
.end method

.method static synthetic access$2600()F
    .registers 1

    .line 32
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return v0
.end method

.method static synthetic access$2602(F)F
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDownRawY:F

    return p0
.end method

.method static synthetic access$2700()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return v0
.end method

.method static synthetic access$2702(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayMoved:Z

    return p0
.end method

.method static synthetic access$2800(II)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveOverlayWindow(II)V

    return-void
.end method

.method static synthetic access$2902(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return p0
.end method

.method static synthetic access$300(Z)Z
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    return p0
.end method

.method static synthetic access$500()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    return-void
.end method

.method static synthetic access$600()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    .line 32
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->closePlayer()V

    return-void
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    return p0
.end method

.method static synthetic access$902(I)I
    .registers 1

    .line 32
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    return p0
.end method

.method private static addTrack(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5

    .line 551
    if-eqz p1, :cond_2e

    if-nez p0, :cond_5

    goto :goto_2e

    .line 554
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicTrackLabel;->resolve(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 555
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    invoke-direct {v2, p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    sget p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-gez p1, :cond_21

    .line 557
    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 559
    :cond_21
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 560
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 561
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 562
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 563
    return-void

    .line 552
    :cond_2e
    :goto_2e
    return-void
.end method

.method public static advanceToNextTrack()Z
    .registers 3

    .line 175
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_e

    .line 176
    return v2

    .line 178
    :cond_e
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 179
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z

    move-result v0

    return v0
.end method

.method private static applyExpandedState()V
    .registers 3

    .line 420
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_a

    :cond_8
    const/16 v0, 0x8

    .line 421
    :goto_a
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 422
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_11
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 425
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_18
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    sget-boolean v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    if-nez v2, :cond_23

    .line 428
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :cond_23
    return-void
.end method

.method public static attachMasterPanel(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 4

    .line 103
    if-eqz p0, :cond_27

    if-nez p1, :cond_5

    goto :goto_27

    .line 106
    :cond_5
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    if-nez v0, :cond_f

    .line 108
    return-void

    .line 110
    :cond_f
    sput-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 115
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;-><init>(Landroid/view/View;Lcom/isaigu/gymapp/train/TrainItemManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void

    .line 104
    :cond_27
    :goto_27
    return-void
.end method

.method private static bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 659
    if-nez p0, :cond_3

    .line 660
    return-void

    .line 662
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 663
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 664
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    return-void
.end method

.method private static cancelPendingDrag()V
    .registers 3

    .line 628
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 629
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 630
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;

    .line 632
    :cond_c
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 633
    return-void
.end method

.method private static clearDragHighlight()V
    .registers 4

    .line 617
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 618
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 619
    return-void

    .line 621
    :cond_8
    const/4 v0, 0x0

    :goto_9
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 622
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 624
    :cond_1f
    sput v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 625
    return-void
.end method

.method private static clearOverlayRefs()V
    .registers 1

    .line 690
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 691
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 692
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 693
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 694
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 695
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 696
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 697
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 698
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 699
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 700
    sput-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 701
    return-void
.end method

.method private static closePlayer()V
    .registers 1

    .line 668
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 669
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 670
    return-void
.end method

.method private static configureSeekBar()V
    .registers 2

    .line 394
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-nez v0, :cond_5

    .line 395
    return-void

    .line 398
    :cond_5
    const/16 v1, 0x3e8

    :try_start_7
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setMaxProcess(I)V

    .line 399
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 400
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setOnSeekBarChangeListener(Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    .line 402
    goto :goto_1c

    .line 401
    :catchall_1b
    move-exception v0

    .line 403
    :goto_1c
    return-void
.end method

.method private static configureSensitivity()V
    .registers 2

    .line 406
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    if-nez v0, :cond_5

    .line 407
    return-void

    .line 410
    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setMin(I)V

    .line 411
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setGoods_storage(I)V

    .line 412
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setStep(I)V

    .line 413
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmountUnit(Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView;->setAmount(I)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    .line 416
    goto :goto_26

    .line 415
    :catchall_25
    move-exception v0

    .line 417
    :goto_26
    return-void
.end method

.method private static dismissOverlay(Z)V
    .registers 2

    .line 673
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 674
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V

    .line 675
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 676
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1a

    .line 678
    :try_start_d
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    .line 680
    goto :goto_12

    .line 679
    :catchall_11
    move-exception v0

    .line 681
    :goto_12
    if-nez p0, :cond_1a

    .line 682
    const/4 p0, 0x0

    sput-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 683
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 686
    :cond_1a
    const/4 p0, 0x0

    sput-boolean p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    .line 687
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 2

    .line 738
    if-nez p0, :cond_3

    .line 739
    return p1

    .line 741
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 742
    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static formatTime(I)Ljava/lang/String;
    .registers 4

    .line 503
    if-gez p0, :cond_3

    .line 504
    const/4 p0, 0x0

    .line 506
    :cond_3
    div-int/lit16 p0, p0, 0x3e8

    .line 507
    div-int/lit8 v0, p0, 0x3c

    .line 508
    rem-int/lit8 p0, p0, 0x3c

    .line 509
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

    .line 510
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

    .line 648
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    .line 650
    if-eqz p1, :cond_f

    .line 651
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 655
    :cond_f
    goto :goto_16

    .line 653
    :catchall_10
    move-exception p0

    .line 654
    const-string p1, "player_uri_persist"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 656
    :goto_16
    return-void
.end method

.method private static highlightDropTarget(I)V
    .registers 2

    .line 603
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3f

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    if-ne p0, v0, :cond_9

    goto :goto_3f

    .line 606
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 607
    sput p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragHighlightIndex:I

    .line 608
    if-ltz p0, :cond_24

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_24

    .line 609
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x3f266666    # 0.65f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 611
    :cond_24
    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-ltz p0, :cond_3e

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_3e

    .line 612
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 614
    :cond_3e
    return-void

    .line 604
    :cond_3f
    :goto_3f
    return-void
.end method

.method private static isOverlayShowing()Z
    .registers 1

    .line 168
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

    .line 169
    :catchall_10
    move-exception v0

    .line 170
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z

    return v0
.end method

.method private static loadPlaylist(Landroid/app/Activity;)V
    .registers 2

    .line 287
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_25

    .line 290
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

    .line 292
    :cond_25
    return-void
.end method

.method private static moveOverlayWindow(II)V
    .registers 3

    .line 704
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_23

    .line 707
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 708
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 709
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 710
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 711
    return-void

    .line 705
    :cond_23
    :goto_23
    return-void
.end method

.method private static movePlaylistItem(II)V
    .registers 4

    .line 566
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

    .line 569
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 570
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 571
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v0, p0, :cond_2b

    .line 572
    sput p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_3e

    .line 573
    :cond_2b
    if-ge p0, v0, :cond_34

    if-lt p1, v0, :cond_34

    .line 574
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    goto :goto_3e

    .line 575
    :cond_34
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-le p0, v0, :cond_3e

    if-gt p1, v0, :cond_3e

    .line 576
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    .line 578
    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 579
    if-eqz p0, :cond_4d

    .line 580
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistPlaylist(Landroid/app/Activity;)V

    .line 581
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 583
    :cond_4d
    return-void

    .line 567
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z

    .line 140
    const/16 v1, 0x4255

    if-ne p0, v1, :cond_4c

    const/4 p0, -0x1

    if-ne p1, p0, :cond_4c

    if-nez p2, :cond_d

    goto :goto_4c

    .line 143
    :cond_d
    const/4 p0, 0x0

    sget-object p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 144
    if-nez p0, :cond_17

    .line 145
    return-void

    .line 147
    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 148
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_3e

    .line 149
    nop

    :goto_24
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_3a

    .line 152
    invoke-static {p0, p2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 153
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrack(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 149
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 156
    :cond_3d
    return-void

    .line 158
    :cond_3e
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 159
    if-nez p1, :cond_45

    .line 160
    return-void

    .line 162
    :cond_45
    invoke-static {p0, p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->grantUri(Landroid/app/Activity;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 163
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->addTrack(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 164
    return-void

    .line 141
    :cond_4c
    :goto_4c
    return-void
.end method

.method private static persistPlaylist(Landroid/app/Activity;)V
    .registers 2

    .line 295
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlaylistStorage;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 296
    return-void
.end method

.method private static readSensitivity()I
    .registers 2

    .line 636
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    const/16 v1, 0x14

    if-nez v0, :cond_7

    .line 637
    return v1

    .line 640
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    return v0

    .line 641
    :catchall_c
    move-exception v0

    .line 642
    return v1
.end method

.method private static rebuildPlaylistViews(Landroid/app/Activity;)V
    .registers 7

    .line 433
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6d

    if-nez p0, :cond_7

    goto :goto_6d

    .line 436
    :cond_7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 437
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 438
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 439
    nop

    .line 440
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    .line 443
    const v3, 0x7f0b007d

    :try_start_24
    sget-object v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_64

    .line 446
    nop

    .line 447
    const v4, 0x7f090284

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 448
    const v5, 0x7f090285

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 449
    if-eqz v4, :cond_54

    .line 450
    iget-object v2, v2, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ne v1, v2, :cond_4c

    .line 452
    const v2, -0x830400

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    :cond_4c
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistSelectListener;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    :cond_54
    if-eqz v5, :cond_5e

    .line 457
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    invoke-direct {v2, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;-><init>(I)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 459
    :cond_5e
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_66

    .line 444
    :catchall_64
    move-exception v2

    .line 445
    nop

    .line 438
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 461
    :cond_69
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V

    .line 462
    return-void

    .line 434
    :cond_6d
    :goto_6d
    return-void
.end method

.method private static refreshSeekFromPlayer()V
    .registers 7

    .line 476
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v0, :cond_36

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z

    if-eqz v0, :cond_9

    goto :goto_36

    .line 479
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 480
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackPositionMs()I

    move-result v1

    .line 481
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V

    .line 482
    const/4 v2, 0x0

    if-gtz v0, :cond_1d

    .line 483
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 484
    return-void

    .line 486
    :cond_1d
    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    .line 487
    const/16 v1, 0x3e8

    if-gez v0, :cond_2a

    .line 488
    goto :goto_30

    .line 489
    :cond_2a
    if-le v0, v1, :cond_2f

    .line 490
    const/16 v2, 0x3e8

    goto :goto_30

    .line 489
    :cond_2f
    move v2, v0

    .line 492
    :goto_30
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 493
    return-void

    .line 477
    :cond_36
    :goto_36
    return-void
.end method

.method private static refreshTrackTitle()V
    .registers 3

    .line 465
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 466
    return-void

    .line 468
    :cond_5
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    if-ltz v0, :cond_24

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    goto :goto_24

    .line 472
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    return-void

    .line 469
    :cond_24
    :goto_24
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 470
    return-void
.end method

.method public static refreshTransportState()V
    .registers 0

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 184
    return-void
.end method

.method private static resizeOverlayWindow()V
    .registers 5

    .line 714
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_4e

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    if-nez v1, :cond_12

    goto :goto_4e

    .line 718
    :cond_12
    const/16 v1, 0x104

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v1

    .line 719
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    .line 720
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 721
    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 719
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 722
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 723
    const/16 v3, 0xf8

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 724
    if-ge v2, v0, :cond_37

    .line 725
    move v2, v0

    .line 727
    :cond_37
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 728
    if-eqz v0, :cond_4d

    .line 729
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 730
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 731
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 732
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 733
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 735
    :cond_4d
    return-void

    .line 716
    :cond_4e
    :goto_4e
    return-void
.end method

.method private static resolveDropIndex(F)I
    .registers 7

    .line 586
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_35

    .line 589
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 590
    nop

    :goto_13
    const/4 v2, 0x1

    if-ge v1, v0, :cond_33

    .line 591
    sget-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 592
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 593
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 594
    aget v2, v5, v2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 595
    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_30

    .line 596
    return v1

    .line 590
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 599
    :cond_33
    sub-int/2addr v0, v2

    return v0

    .line 587
    :cond_35
    :goto_35
    sget p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I

    if-ltz p0, :cond_3a

    move v1, p0

    :cond_3a
    return v1
.end method

.method static resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 244
    if-eqz p0, :cond_3

    .line 245
    return-object p0

    .line 247
    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz p0, :cond_12

    .line 248
    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 249
    if-eqz p0, :cond_12

    .line 250
    return-object p0

    .line 253
    :cond_12
    if-eqz p1, :cond_1f

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 255
    if-eqz p0, :cond_1f

    .line 256
    return-object p0

    .line 259
    :cond_1f
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getHostActivity()Landroid/app/Activity;

    move-result-object p0

    .line 260
    if-eqz p0, :cond_26

    .line 261
    return-object p0

    .line 263
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method static resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;
    .registers 2

    .line 240
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 267
    if-nez p0, :cond_4

    .line 268
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->itemManager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 270
    :cond_4
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 271
    return-object v0

    .line 273
    :cond_8
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object p0

    .line 274
    if-nez p0, :cond_f

    .line 275
    return-object v0

    .line 277
    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 278
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 279
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 280
    return-object v2

    .line 277
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 283
    :cond_28
    return-object v0
.end method

.method public static show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 119
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 120
    if-nez p0, :cond_9

    .line 121
    return-void

    .line 123
    :cond_9
    if-nez p1, :cond_12

    .line 124
    const p1, 0x7f0d011a

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 125
    return-void

    .line 127
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 128
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetItem(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isOverlayShowing()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 130
    return-void

    .line 132
    :cond_1f
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->loadPlaylist(Landroid/app/Activity;)V

    .line 133
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showOverlay(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 134
    const p1, 0x7f0d0113

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 136
    :cond_2e
    return-void
.end method

.method public static showActive(II)V
    .registers 5

    .line 208
    const/4 v0, 0x0

    if-gez p0, :cond_4

    .line 209
    const/4 p0, 0x0

    .line 211
    :cond_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_8

    .line 212
    const/4 p1, 0x1

    .line 214
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 215
    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 217
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v1, :cond_3e

    .line 218
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

    .line 219
    sget-object p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    sget-boolean p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z

    if-eqz p1, :cond_39

    goto :goto_3b

    :cond_39
    const/16 v0, 0x8

    :goto_3b
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :cond_3e
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 222
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V

    .line 223
    return-void
.end method

.method public static showError(I)V
    .registers 3

    .line 226
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 227
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    .line 229
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 230
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :cond_10
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_1c

    .line 234
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V

    .line 236
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 237
    return-void
.end method

.method public static showIdle()V
    .registers 2

    .line 187
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 188
    const v1, 0x7f0d0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 191
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->stopProgressUpdates()V

    .line 195
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 196
    return-void
.end method

.method private static showOverlay(Landroid/app/Activity;)Z
    .registers 9

    .line 299
    const/4 v0, 0x0

    if-eqz p0, :cond_1ad

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_1ad

    .line 302
    :cond_b
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dismissOverlay(Z)V

    .line 305
    :try_start_e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b007c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1a6

    .line 309
    nop

    .line 310
    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    .line 311
    const v2, 0x7f09027a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 312
    const v2, 0x7f09027b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    .line 313
    const v2, 0x7f09027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlPanel:Landroid/view/View;

    .line 314
    const v2, 0x7f09027e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistPanel:Landroid/view/View;

    .line 315
    const v2, 0x7f09027f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;

    .line 316
    const v2, 0x7f090282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->trackTitleView:Landroid/widget/TextView;

    .line 317
    const v2, 0x7f090283

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    .line 318
    const v2, 0x7f090229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    .line 319
    const v2, 0x7f09022a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    .line 320
    const v2, 0x7f090228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/widget/AmountView;

    sput-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->sensitivityView:Lcom/isaigu/gymapp/widget/AmountView;

    .line 322
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSensitivity()V

    .line 323
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->configureSeekBar()V

    .line 324
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 325
    const v2, 0x7f09027c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ControlsToggleListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ControlsToggleListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 326
    const v2, 0x7f090280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 327
    const v2, 0x7f090288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$CloseListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 328
    const v2, 0x7f090289

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;

    invoke-direct {v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$InfoListener;-><init>()V

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->bindButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V

    .line 331
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 333
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V

    .line 334
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 336
    nop

    .line 337
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    if-eqz v2, :cond_106

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_106

    .line 338
    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 339
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_106

    .line 340
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_107

    .line 343
    :cond_106
    move-object v2, v3

    :goto_107
    const/4 v4, 0x1

    if-eqz v2, :cond_118

    .line 344
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 345
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 346
    new-instance v5, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;

    invoke-direct {v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 349
    :cond_118
    const/16 v2, 0xc0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    .line 350
    const/16 v2, 0x104

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v2

    .line 351
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 353
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    :try_start_134
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 360
    new-instance v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;

    invoke-direct {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 362
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 363
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 364
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 366
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 367
    if-nez v1, :cond_160

    .line 368
    return v0

    .line 370
    :cond_160
    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 371
    const v2, 0x800033

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 372
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V

    .line 373
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 374
    const/16 v5, 0x14

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 375
    const/16 v5, 0x12c

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I

    move-result p0

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 376
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 377
    iget p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x20

    and-int/lit8 p0, p0, -0x3

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 381
    const/4 p0, 0x2

    invoke-virtual {v1, p0}, Landroid/view/Window;->clearFlags(I)V

    .line 382
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 383
    sput-boolean v4, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    :try_end_199
    .catchall {:try_start_134 .. :try_end_199} :catchall_19a

    .line 384
    return v4

    .line 385
    :catchall_19a
    move-exception p0

    .line 386
    const-string v1, "music_player_overlay_show"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    sput-object v3, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;

    .line 388
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V

    .line 389
    return v0

    .line 306
    :catchall_1a6
    move-exception p0

    .line 307
    const-string v1, "music_player_overlay_inflate"

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    return v0

    .line 300
    :cond_1ad
    :goto_1ad
    return v0
.end method

.method public static showPreparing()V
    .registers 2

    .line 199
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 200
    const v1, 0x7f0d011b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->levelView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 203
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    :cond_13
    return-void
.end method

.method private static startCurrentTrack(Z)Z
    .registers 4

    .line 531
    sget v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_3c

    sget-object v2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_e

    goto :goto_3c

    .line 537
    :cond_e
    const/4 p0, 0x0

    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayContent:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/app/Activity;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 538
    if-nez p0, :cond_1e

    .line 539
    const p0, 0x7f0d010b

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 540
    return v1

    .line 542
    :cond_1e
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;

    sget v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    .line 543
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 544
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshTrackTitle()V

    .line 545
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->rebuildPlaylistViews(Landroid/app/Activity;)V

    .line 546
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startPlayer(Landroid/app/Activity;Landroid/net/Uri;I)V

    .line 547
    const/4 p0, 0x1

    return p0

    .line 532
    :cond_3c
    :goto_3c
    if-eqz p0, :cond_44

    .line 533
    const p0, 0x7f0d0112

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 535
    :cond_44
    return v1
.end method

.method private static startProgressUpdates()V
    .registers 2

    .line 522
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method private static stopProgressUpdates()V
    .registers 2

    .line 527
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method private static toast(Landroid/app/Activity;I)V
    .registers 3

    .line 746
    if-nez p0, :cond_3

    .line 747
    return-void

    .line 750
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    .line 752
    goto :goto_d

    .line 751
    :catchall_c
    move-exception p0

    .line 753
    :goto_d
    return-void
.end method

.method private static updatePlayPauseLabel()V
    .registers 2

    .line 514
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 515
    return-void

    .line 517
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

    .line 518
    :goto_1a
    sget-object v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playPauseBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    const-string v0, "\u23f8"

    goto :goto_23

    :cond_21
    const-string v0, "\u25b6"

    :goto_23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    return-void
.end method

.method private static updateTimeLabel(II)V
    .registers 4

    .line 496
    sget-object v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->timeView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 497
    return-void

    .line 499
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

    .line 500
    return-void
.end method
