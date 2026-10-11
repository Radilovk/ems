.class public final Lcom/isaigu/gymapp/widget/XemsNav;
.super Ljava/lang/Object;
.source "XemsNav.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsNav$Tile;,
        Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;,
        Lcom/isaigu/gymapp/widget/XemsNav$BarAttach;,
        Lcom/isaigu/gymapp/widget/XemsNav$DropZone;,
        Lcom/isaigu/gymapp/widget/XemsNav$Lift;,
        Lcom/isaigu/gymapp/widget/XemsNav$WorkoutsClick;,
        Lcom/isaigu/gymapp/widget/XemsNav$PageClick;,
        Lcom/isaigu/gymapp/widget/XemsNav$TileClick;,
        Lcom/isaigu/gymapp/widget/XemsNav$InfoClick;,
        Lcom/isaigu/gymapp/widget/XemsNav$MenuClick;,
        Lcom/isaigu/gymapp/widget/XemsNav$MenuDrop;,
        Lcom/isaigu/gymapp/widget/XemsNav$CloseMenu;,
        Lcom/isaigu/gymapp/widget/XemsNav$ModuleClick;,
        Lcom/isaigu/gymapp/widget/XemsNav$OpenLater;,
        Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;,
        Lcom/isaigu/gymapp/widget/XemsNav$Tick;
    }
.end annotation


# static fields
.field private static final AI_TAG:Ljava/lang/String; = "xems_ai_button"

.field private static final BAR_DEFAULT:[I

.field private static final BAR_MAX:I = 0x7

.field private static final ID_FL_FRAGMENT:I = 0x7f0900a3

.field private static final ID_HEART:I = 0x7f090297

.field private static final ID_LINE:I = 0x7f0900de

.field private static final ID_MUSIC:I = 0x7f090226

.field private static final ID_RIGHT_LAYOUT:I = 0x7f090155

.field private static final ID_TAB_BAR:I = 0x7f0900ea

.field private static final ID_TAB_FIRST:I = 0x7f0900ec

.field private static final ID_TIMER:I = 0x7f090230

.field static final K_PROGRAMS:Ljava/lang/String; = "programs"

.field private static final MOD_ORDER:[I

.field static final M_AI:I = 0x3

.field static final M_AUTO:I = 0x4

.field static final M_MUSIC:I = 0x1

.field static final M_PULSE:I = 0x2

.field static final M_TIMER:I = 0x0

.field static final M_VR:I = 0x5

.field private static final PAGE_ICONS:[I

.field private static final PREFS:Ljava/lang/String; = "xems_nav"

.field private static final TAB_COUNT:I = 0x5

.field private static barView:Landroid/widget/LinearLayout;

.field private static currentPage:I

.field private static final handler:Landroid/os/Handler;

.field private static mainRoot:Landroid/view/View;

.field private static menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

.field private static menuBox:Landroid/widget/LinearLayout;

.field private static menuButton:Landroid/widget/TextView;

.field private static menuClosedAt:J

.field private static final tick:Ljava/lang/Runnable;

.field private static ticking:Z

.field private static final tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$Tick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsNav$Tick;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tick:Ljava/lang/Runnable;

    .line 69
    new-array v0, v3, [Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    .line 70
    const v0, 0x7f0900ec

    sput v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    .line 214
    new-array v0, v3, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->MOD_ORDER:[I

    .line 216
    new-array v0, v2, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->BAR_DEFAULT:[I

    .line 855
    new-array v0, v2, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->PAGE_ICONS:[I

    return-void

    .line 214
    nop

    :array_34
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x3
        0x5
    .end array-data

    .line 216
    :array_44
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x3
    .end array-data

    .line 855
    :array_52
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->restoreAlpha()V

    return-void
.end method

.method static synthetic access$1000()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->startTicking()V

    return-void
.end method

.method static synthetic access$102(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 39
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1100()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->stopTicking()V

    return-void
.end method

.method static synthetic access$1200()[Lcom/isaigu/gymapp/widget/XemsNav$Tile;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/view/View;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->showMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(I)V
    .registers 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->goPage(I)V

    return-void
.end method

.method static synthetic access$202(J)J
    .registers 2

    .prologue
    .line 39
    sput-wide p0, Lcom/isaigu/gymapp/widget/XemsNav;->menuClosedAt:J

    return-wide p0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/View;I)V
    .registers 2

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsNav;->openModule(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    return v0
.end method

.method static synthetic access$600()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 39
    sget v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    return v0
.end method

.method static synthetic access$800(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->hideSidebarModules(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static addMenuTile(Landroid/widget/LinearLayout;)V
    .registers 12

    .prologue
    const/high16 v10, 0x41900000    # 18.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 711
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 712
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 713
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 714
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 715
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 716
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v4, 0x22

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v5, 0x88

    .line 717
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 716
    invoke-static {v3, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 718
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 719
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$MenuClick;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsNav$MenuClick;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$MenuDrop;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsNav$MenuDrop;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 721
    const-string v2, "\u041c\u0435\u043d\u044e"

    const-string v3, "Menu"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 722
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 724
    const-string v2, "\u2630"

    const/4 v3, -0x1

    invoke-static {v0, v2, v10, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 725
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 726
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 727
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 728
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 729
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 730
    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 731
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    const-string v2, "\u041c\u0435\u043d\u044e"

    const-string v3, "Menu"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v2, v3, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 733
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 734
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 736
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 738
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 739
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 740
    invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    sput-object v2, Lcom/isaigu/gymapp/widget/XemsNav;->menuButton:Landroid/widget/TextView;

    .line 742
    return-void
.end method

.method private static addTile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .prologue
    .line 637
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 638
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsNav$Tile;-><init>()V

    .line 639
    iput p1, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->module:I

    .line 640
    iput p4, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    .line 641
    iput-object p3, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->label:Ljava/lang/String;

    .line 643
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 644
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 645
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 646
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 647
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 648
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$TileClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsNav$TileClick;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 651
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    if-gt v0, v4, :cond_4b

    const-string v0, "A"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    :cond_4b
    const/high16 v0, 0x41700000    # 15.0f

    :goto_4d
    const/4 v4, 0x1

    invoke-static {v1, p2, v0, p4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 652
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 653
    const/high16 v4, 0x42180000    # 38.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 654
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 657
    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {v1, p3, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 658
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 659
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 660
    const-string v6, ""

    const/high16 v7, 0x41300000    # 11.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x0

    invoke-static {v1, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 661
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 662
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 663
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 664
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 666
    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 667
    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 670
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 671
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    const/16 v4, 0x2a

    .line 676
    const-string v5, "i"

    const/high16 v7, 0x41a80000    # 21.0f

    const/4 v8, 0x1

    invoke-static {v1, v5, v7, p4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 677
    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 678
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 679
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 680
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 681
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 682
    const/16 v8, 0x24

    invoke-static {p4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 683
    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/16 v9, 0x99

    invoke-static {p4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 684
    int-to-float v8, v4

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, p4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 686
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 687
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsNav$InfoClick;

    invoke-direct {v7, p1}, Lcom/isaigu/gymapp/widget/XemsNav$InfoClick;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    const-string v7, "\u0418\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f"

    const-string v8, "Info"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 689
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v8, v4

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 690
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 691
    invoke-virtual {v3, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 695
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 696
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 697
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 698
    invoke-virtual {p0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    iput-object v3, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    .line 701
    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->icon:Landroid/widget/TextView;

    .line 702
    iput-object v6, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    .line 703
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    aput-object v2, v0, p1

    .line 704
    return-void

    .line 651
    :cond_159
    const/high16 v0, 0x41980000    # 19.0f

    goto/16 :goto_4d
.end method

.method static allKeys()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 254
    :goto_7
    const/4 v3, 0x5

    if-ge v1, v3, :cond_23

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 257
    :cond_23
    const-string v1, "programs"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->MOD_ORDER:[I

    array-length v3, v1

    :goto_2b
    if-ge v0, v3, :cond_48

    aget v4, v1, v0

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mod:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 261
    :cond_48
    return-object v2
.end method

.method public static attach(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 90
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->attachImpl(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 94
    :goto_3
    return-void

    .line 91
    :catch_4
    move-exception v0

    .line 92
    const-string v1, "XemsNav.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static attachImpl(Landroid/view/View;)V
    .registers 8

    .prologue
    const/16 v4, 0x8

    .line 158
    if-nez p0, :cond_5

    .line 188
    :cond_4
    :goto_4
    return-void

    .line 161
    :cond_5
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 167
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLang;->init(Landroid/content/Context;)V

    .line 168
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 169
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_33

    move-object v0, v1

    .line 170
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->apply(Landroid/app/Activity;)V

    move-object v0, v1

    .line 171
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoCheck(Landroid/app/Activity;)V

    .line 173
    :cond_33
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    .line 174
    const v0, 0x7f0900ec

    sput v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    .line 176
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 177
    const v3, 0x7f0900de

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 178
    if-eqz v3, :cond_4c

    .line 179
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_4c
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->buildModuleBar(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 183
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42880000    # 68.0f

    .line 184
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$BarAttach;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsNav$BarAttach;-><init>()V

    invoke-virtual {v3, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    goto :goto_4
.end method

.method static barKeys(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    sget-object v3, Lcom/isaigu/gymapp/widget/XemsNav;->BAR_DEFAULT:[I

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v4, :cond_2a

    aget v5, v3, v1

    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_27

    const-string v0, ","

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "mod:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 283
    :cond_27
    const-string v0, ""

    goto :goto_16

    .line 285
    :cond_2a
    const-string v0, "bar"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildModuleBar(Landroid/content/Context;)Landroid/view/View;
    .registers 5

    .prologue
    const/high16 v3, 0x41400000    # 12.0f

    .line 191
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 192
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 193
    const-string v1, "tab_bar_bg"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 194
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 195
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 198
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 199
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 201
    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    .line 202
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 203
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->fillBar(Landroid/widget/LinearLayout;)V

    .line 204
    return-object v0
.end method

.method static clickModule(I)V
    .registers 2

    .prologue
    .line 1061
    const/4 v0, 0x5

    if-ne p0, v0, :cond_10

    .line 1062
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->open(Landroid/app/Activity;)V

    .line 1063
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    .line 1079
    :goto_f
    return-void

    .line 1066
    :cond_10
    const/4 v0, 0x4

    if-ne p0, v0, :cond_22

    .line 1067
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1068
    if-eqz v0, :cond_1e

    .line 1069
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V

    .line 1071
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    goto :goto_f

    .line 1074
    :cond_22
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->findModuleButton(I)Landroid/view/View;

    move-result-object v0

    .line 1075
    if-eqz v0, :cond_2b

    .line 1076
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1078
    :cond_2b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    goto :goto_f
.end method

.method public static compact(Z)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 124
    :try_start_1
    sget-object v5, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    .line 125
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1a

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p0, :cond_1a

    .line 143
    :cond_19
    :goto_19
    return-void

    .line 128
    :cond_1a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move v4, v2

    .line 129
    :goto_22
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_19

    .line 130
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_34

    .line 129
    :cond_30
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_22

    .line 134
    :cond_34
    check-cast v0, Landroid/widget/LinearLayout;

    .line 135
    if-eqz p0, :cond_54

    const/16 v1, 0x11

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 136
    const/4 v1, 0x1

    move v3, v1

    :goto_3f
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_30

    .line 137
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz p0, :cond_57

    const/16 v1, 0x8

    :goto_4d
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_50} :catch_59

    .line 136
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3f

    .line 135
    :cond_54
    const/16 v1, 0x10

    goto :goto_3a

    :cond_57
    move v1, v2

    .line 137
    goto :goto_4d

    .line 140
    :catch_59
    move-exception v0

    .line 141
    const-string v1, "XemsNav.compact"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method static drop(Landroid/content/Context;Ljava/lang/String;ZI)Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 609
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->barKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 610
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->menuKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 611
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 612
    if-eqz p2, :cond_29

    if-nez v0, :cond_29

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x7

    if-lt v0, v4, :cond_29

    .line 613
    const-string v0, "\u041b\u0435\u043d\u0442\u0430\u0442\u0430 \u0435 \u043f\u044a\u043b\u043d\u0430 \u2014 \u043f\u044a\u0440\u0432\u043e \u043c\u0430\u0445\u043d\u0438 \u043d\u0435\u0449\u043e \u043e\u0442 \u043d\u0435\u044f."

    const-string v1, "The bar is full \u2014 take something off first."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 633
    :goto_28
    return v0

    .line 617
    :cond_29
    if-eqz p2, :cond_65

    move-object v0, v1

    .line 618
    :goto_2c
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 619
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 620
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 621
    if-ltz v4, :cond_3c

    if-ge v4, p3, :cond_3c

    .line 622
    add-int/lit8 p3, p3, -0x1

    .line 624
    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 625
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->save(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 626
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5a

    .line 627
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->fillBar(Landroid/widget/LinearLayout;)V

    .line 628
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    .line 630
    :cond_5a
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_63

    .line 631
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->fillMenu(Landroid/widget/LinearLayout;)V

    .line 633
    :cond_63
    const/4 v0, 0x1

    goto :goto_28

    :cond_65
    move-object v0, v2

    .line 617
    goto :goto_2c
.end method

.method private static extraRow(Landroid/content/Context;ILjava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v9, 0x42100000    # 36.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 912
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 913
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 914
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v6, v0, v8, v2, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 915
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 916
    invoke-static {v8, v0, v8, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 917
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 918
    invoke-virtual {v6, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 920
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 921
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 922
    const/16 v0, 0x2e

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 923
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-direct {v3, p1, p3}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    .line 924
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v8

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 926
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 927
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 928
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 929
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    const/high16 v0, 0x41700000    # 15.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v0, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 931
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 932
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 933
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    return-object v6
.end method

.method private static fillBar(Landroid/widget/LinearLayout;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x40a00000    # 5.0f

    .line 318
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 319
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 320
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 321
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->addMenuTile(Landroid/widget/LinearLayout;)V

    .line 323
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->barKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    const-string v3, "mod:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 325
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 326
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->modGlyph(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->modLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->modTint(I)I

    move-result v6

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsNav;->addTile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;I)V

    .line 327
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 328
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/isaigu/gymapp/widget/XemsNav$Lift;

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/widget/XemsNav$Lift;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1d

    .line 330
    :cond_61
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsNav;->linkTile(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_1d

    .line 332
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 333
    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 334
    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 335
    invoke-virtual {p0, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1d

    .line 339
    :cond_80
    return-void
.end method

.method private static fillMenu(Landroid/widget/LinearLayout;)V
    .registers 12

    .prologue
    const v10, 0x7f0900ec

    const/4 v9, 0x0

    const/high16 v8, 0x437a0000    # 250.0f

    const/high16 v7, 0x41400000    # 12.0f

    .line 408
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 409
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 410
    const-string v0, "XEMS"

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 411
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 412
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->menuKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    const/4 v2, 0x0

    .line 415
    const-string v1, "page:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 416
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 417
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    add-int v6, v10, v5

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 418
    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_ed

    .line 419
    check-cast v1, Landroid/view/ViewGroup;

    add-int v2, v10, v5

    invoke-static {v3, v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->menuRow(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 426
    :goto_65
    if-eqz v1, :cond_33

    .line 429
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 430
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$Lift;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/widget/XemsNav$Lift;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 431
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_33

    .line 421
    :cond_85
    const-string v1, "programs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 422
    const/16 v1, 0x10

    const-string v2, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v5, "Programs"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v5, -0xdd1c01

    new-instance v6, Lcom/isaigu/gymapp/widget/XemsNav$WorkoutsClick;

    invoke-direct {v6}, Lcom/isaigu/gymapp/widget/XemsNav$WorkoutsClick;-><init>()V

    invoke-static {v3, v1, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsNav;->extraRow(Landroid/content/Context;ILjava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    goto :goto_65

    .line 424
    :cond_a4
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->moduleRow(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    goto :goto_65

    .line 433
    :cond_b2
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->menuKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 434
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u043e \u0435 \u0432 \u043b\u0435\u043d\u0442\u0430\u0442\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u0442\u0443\u043a, \u0437\u0430 \u0434\u0430 \u0432\u044a\u0440\u043d\u0435\u0448."

    const-string v1, "Everything is on the bar \u2014 drop here to bring it back."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v3, v0, v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 436
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 437
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    :cond_ec
    return-void

    :cond_ed
    move-object v1, v2

    goto/16 :goto_65
.end method

.method private static findModuleButton(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 1082
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_6

    .line 1083
    const/4 v0, 0x0

    .line 1093
    :goto_5
    return-object v0

    .line 1085
    :cond_6
    packed-switch p0, :pswitch_data_30

    .line 1093
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 1087
    :pswitch_12
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 1089
    :pswitch_1c
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f090226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 1091
    :pswitch_26
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f090297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 1085
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method

.method private static glyphDisc(Landroid/content/Context;IIZ)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v1, 0x1

    .line 382
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 383
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 384
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 385
    if-eqz p3, :cond_3a

    move v0, p2

    :goto_11
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 386
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz p3, :cond_1a

    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :cond_1a
    invoke-direct {v3, p1, p2}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    .line 387
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 389
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 390
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 391
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 392
    return-object v6

    .line 385
    :cond_3a
    const/16 v0, 0x2e

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_11
.end method

.method private static goPage(I)V
    .registers 2

    .prologue
    .line 1011
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    if-eqz v0, :cond_9

    .line 1012
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->dismiss()V

    .line 1014
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1015
    :goto_13
    if-eqz v0, :cond_18

    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1018
    :cond_18
    return-void

    .line 1014
    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static goTraining()V
    .registers 2

    .prologue
    .line 1004
    const v0, 0x7f0900ec

    :try_start_3
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->goPage(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    .line 1008
    :goto_6
    return-void

    .line 1005
    :catch_7
    move-exception v0

    .line 1006
    const-string v1, "XemsNav.goTraining"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static hide(Landroid/view/View;)V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1129
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_d

    .line 1130
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    :cond_d
    return-void
.end method

.method private static hideSidebarModules(Landroid/view/View;)V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 1099
    if-eqz p0, :cond_8

    .line 1100
    :goto_5
    if-nez p0, :cond_b

    .line 1126
    :cond_7
    return-void

    .line 1099
    :cond_8
    sget-object p0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    goto :goto_5

    .line 1103
    :cond_b
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1104
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1107
    check-cast v0, Landroid/view/ViewGroup;

    .line 1108
    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    .line 1109
    const v1, 0x7f090226

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    .line 1110
    const v1, 0x7f090297

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    .line 1111
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    move v1, v2

    move v3, v2

    .line 1114
    :goto_41
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1115
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1116
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_54

    .line 1114
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1119
    :cond_54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Landroid/view/View;

    if-ne v4, v6, :cond_65

    const/4 v4, 0x1

    .line 1120
    :goto_5d
    if-eqz v4, :cond_67

    if-eqz v3, :cond_67

    .line 1121
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51

    :cond_65
    move v4, v2

    .line 1119
    goto :goto_5d

    :cond_67
    move v3, v4

    .line 1124
    goto :goto_51
.end method

.method public static isTrainingPage()Z
    .registers 2

    .prologue
    .line 1057
    sget v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    const v1, 0x7f0900ec

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static join(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_25

    const-string v1, ","

    :goto_1d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_25
    const-string v1, ""

    goto :goto_1d

    .line 314
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static licenseId(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1176
    packed-switch p0, :pswitch_data_12

    .line 1186
    :pswitch_3
    const-string v0, "ai"

    :goto_5
    return-object v0

    .line 1178
    :pswitch_6
    const-string v0, "timer"

    goto :goto_5

    .line 1180
    :pswitch_9
    const-string v0, "music"

    goto :goto_5

    .line 1182
    :pswitch_c
    const-string v0, "pulse"

    goto :goto_5

    .line 1184
    :pswitch_f
    const-string v0, "auto"

    goto :goto_5

    .line 1176
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method private static linkTile(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 13

    .prologue
    const/16 v4, 0x10

    const/high16 v10, 0x42180000    # 38.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 347
    const-string v0, "programs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 349
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v1, "Programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    const v1, -0xdd1c01

    .line 351
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$WorkoutsClick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsNav$WorkoutsClick;-><init>()V

    move v3, v4

    .line 363
    :goto_21
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 364
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 365
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v4, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 366
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 367
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$Lift;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsNav$Lift;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 369
    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 370
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 371
    invoke-static {p0, v3, v1, v7}, Lcom/isaigu/gymapp/widget/XemsNav;->glyphDisc(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    const/high16 v0, 0x41600000    # 14.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v0, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 373
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 374
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 375
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 376
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 377
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v5

    .line 378
    :goto_7f
    return-object v0

    .line 353
    :cond_80
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 354
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-eqz v0, :cond_9d

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f0900ec

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 355
    :goto_97
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_9f

    .line 356
    const/4 v0, 0x0

    goto :goto_7f

    .line 354
    :cond_9d
    const/4 v0, 0x0

    goto :goto_97

    .line 358
    :cond_9f
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->PAGE_ICONS:[I

    aget v3, v1, v5

    .line 359
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->tabLabel(Landroid/view/ViewGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsNav;->pageTint(I)I

    move-result v1

    .line 361
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;

    const v6, 0x7f0900ec

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;-><init>(I)V

    goto/16 :goto_21
.end method

.method private static locY(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 812
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 813
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 814
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method static menuKeys(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->barKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    const-string v0, "menu"

    const-string v3, ""

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsNav;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 294
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 297
    :cond_2b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->allKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_33
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 299
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 302
    :cond_4f
    return-object v2
.end method

.method private static menuRow(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v11, 0x42100000    # 36.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 869
    sget v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    if-ne p2, v0, :cond_38

    move v6, v1

    .line 870
    :goto_b
    const/4 v0, 0x4

    const v2, 0x7f0900ec

    sub-int v2, p2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 871
    const-string v8, ""

    move v2, v7

    .line 872
    :goto_1c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3a

    .line 873
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 874
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_f3

    instance-of v4, v0, Landroid/widget/Button;

    if-nez v4, :cond_f3

    .line 875
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 872
    :goto_34
    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    goto :goto_1c

    :cond_38
    move v6, v7

    .line 869
    goto :goto_b

    .line 878
    :cond_3a
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->pageTint(I)I

    move-result v2

    .line 879
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 880
    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 881
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v9, v0, v7, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 882
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    .line 883
    if-eqz v6, :cond_e6

    const/16 v0, 0x24

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    .line 884
    :goto_61
    invoke-static {v0, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v5, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 885
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 886
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;

    invoke-direct {v0, p2}, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 890
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 891
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 892
    if-eqz v6, :cond_e9

    move v0, v2

    :goto_89
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 893
    new-instance v5, Lcom/isaigu/gymapp/widget/XemsIcon;

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->PAGE_ICONS:[I

    aget v0, v0, v3

    if-eqz v6, :cond_96

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :cond_96
    invoke-direct {v5, v0, v2}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    .line 894
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v7

    aput-object v5, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 896
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 897
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 898
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 899
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    .line 902
    if-eqz v6, :cond_f0

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 901
    :goto_ce
    invoke-static {p0, v1, v2, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 903
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 905
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 906
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    return-object v9

    :cond_e6
    move v0, v7

    .line 883
    goto/16 :goto_61

    .line 892
    :cond_e9
    const/16 v0, 0x2e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_89

    .line 902
    :cond_f0
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_ce

    :cond_f3
    move-object v0, v8

    goto/16 :goto_34
.end method

.method static modGlyph(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    packed-switch p0, :pswitch_data_16

    .line 225
    :pswitch_3
    const-string v0, "AI"

    :goto_5
    return-object v0

    .line 220
    :pswitch_6
    const-string v0, "\u23f1"

    goto :goto_5

    .line 221
    :pswitch_9
    const-string v0, "\u266b"

    goto :goto_5

    .line 222
    :pswitch_c
    const-string v0, "\u2665"

    goto :goto_5

    .line 223
    :pswitch_f
    const-string v0, "A"

    goto :goto_5

    .line 224
    :pswitch_12
    const-string v0, "VR"

    goto :goto_5

    .line 219
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_3
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method static modLabel(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 230
    packed-switch p0, :pswitch_data_3a

    .line 236
    :pswitch_3
    const-string v0, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "AI session"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 231
    :pswitch_c
    const-string v0, "\u0422\u0430\u0439\u043c\u0435\u0440"

    const-string v1, "Timer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 232
    :pswitch_15
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430"

    const-string v1, "Music"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 233
    :pswitch_1e
    const-string v0, "\u041f\u0443\u043b\u0441"

    const-string v1, "Heart rate"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 234
    :pswitch_27
    const-string v0, "\u0410\u0432\u0442\u043e"

    const-string v1, "Auto"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 235
    :pswitch_30
    const-string v0, "VR"

    const-string v1, "VR"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 230
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_3
        :pswitch_27
        :pswitch_30
    .end packed-switch
.end method

.method static modTint(I)I
    .registers 2

    .prologue
    .line 241
    packed-switch p0, :pswitch_data_18

    .line 247
    :pswitch_3
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    :goto_5
    return v0

    .line 242
    :pswitch_6
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_5

    .line 243
    :pswitch_9
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_5

    .line 244
    :pswitch_c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    goto :goto_5

    .line 245
    :pswitch_f
    const v0, -0xd95966

    goto :goto_5

    .line 246
    :pswitch_13
    const v0, -0xa39440

    goto :goto_5

    .line 241
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_3
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method private static moduleRow(Landroid/content/Context;I)Landroid/view/View;
    .registers 11

    .prologue
    const/high16 v8, 0x42100000    # 36.0f

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 939
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    aget-object v0, v0, p1

    .line 940
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 941
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 942
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 943
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 944
    invoke-static {v6, v2, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 945
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 946
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$ModuleClick;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/widget/XemsNav$ModuleClick;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->modTint(I)I

    move-result v2

    .line 948
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->modGlyph(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {p0, v3, v4, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 949
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 950
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 951
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 952
    const/16 v5, 0x2e

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 953
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 954
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 956
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->modLabel(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 957
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 958
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 959
    if-eqz v0, :cond_c5

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 960
    :goto_92
    if-eqz v0, :cond_b1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_b1

    .line 961
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41300000    # 11.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 962
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 963
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 964
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 966
    :cond_b1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 967
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 968
    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    return-object v1

    .line 959
    :cond_c5
    const/4 v0, 0x0

    goto :goto_92
.end method

.method public static onLicenseChanged()V
    .registers 5

    .prologue
    .line 1193
    :try_start_0
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    .line 1194
    if-eqz v3, :cond_10

    .line 1195
    const/4 v4, -0x1

    iput v4, v3, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    .line 1196
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastText:Ljava/lang/String;

    .line 1193
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1199
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 1203
    :goto_16
    return-void

    .line 1200
    :catch_17
    move-exception v0

    .line 1201
    const-string v1, "XemsNav.license"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public static onPage(I)V
    .registers 6

    .prologue
    const v4, 0x7f0900ec

    const/4 v0, 0x0

    .line 98
    if-lt p0, v4, :cond_d

    const v1, 0x7f0900f1

    if-ge p0, v1, :cond_d

    .line 99
    :try_start_b
    sput p0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_d} :catch_42

    .line 101
    :cond_d
    const v1, 0x7f0900ed

    if-ne p0, v1, :cond_28

    .line 104
    :try_start_12
    const-string v1, "com.isaigu.gymapp.widget.XemsClientSync"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "poke"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_28} :catch_49

    .line 108
    :cond_28
    :goto_28
    :try_start_28
    sget v1, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    if-ne v1, v4, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->onPage(Z)V

    .line 109
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 110
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->dismiss()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_41} :catch_42

    .line 116
    :cond_41
    :goto_41
    return-void

    .line 113
    :catch_42
    move-exception v0

    .line 114
    const-string v1, "XemsNav.onPage"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    .line 105
    :catch_49
    move-exception v1

    goto :goto_28
.end method

.method public static onTrainingPanel(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 147
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->hideSidebarModules(Landroid/view/View;)V

    .line 148
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->attach(Landroid/view/View;)V

    .line 149
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard;->sync(Landroid/view/View;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 153
    :goto_9
    return-void

    .line 150
    :catch_a
    move-exception v0

    .line 151
    const-string v1, "XemsNav.onTrainingPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static onVrLinked()V
    .registers 5

    .prologue
    .line 1155
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1172
    :cond_4
    :goto_4
    return-void

    .line 1158
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1159
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1160
    const-string v2, "vr_auto"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1163
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vr_auto"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1164
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->barKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1165
    const-string v2, "mod:5"

    .line 1166
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_4

    .line 1167
    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->drop(Landroid/content/Context;Ljava/lang/String;ZI)Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_4

    .line 1169
    :catch_42
    move-exception v0

    .line 1170
    const-string v1, "XemsNav.vr"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static openModule(Landroid/view/View;I)V
    .registers 6

    .prologue
    const v1, 0x7f0900ec

    .line 1023
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1043
    :goto_7
    return-void

    .line 1026
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1027
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->unlocked(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1029
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->showInfo(I)V

    goto :goto_7

    .line 1032
    :cond_15
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1c

    .line 1033
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->clickModule(I)V

    goto :goto_7

    .line 1036
    :cond_1c
    sget v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    if-eq v0, v1, :cond_30

    .line 1038
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->goPage(I)V

    .line 1039
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsNav$OpenLater;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/widget/XemsNav$OpenLater;-><init>(I)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 1042
    :cond_30
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->clickModule(I)V

    goto :goto_7
.end method

.method private static pageTint(I)I
    .registers 2

    .prologue
    .line 859
    packed-switch p0, :pswitch_data_12

    .line 864
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    :goto_5
    return v0

    .line 860
    :pswitch_6
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_5

    .line 861
    :pswitch_9
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_5

    .line 862
    :pswitch_c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_5

    .line 863
    :pswitch_f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_5

    .line 859
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_nav"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->allKeys()Ljava/util/List;

    move-result-object v2

    .line 271
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v4, :cond_2f

    aget-object v5, v3, v0

    .line 272
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 273
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 276
    :cond_2f
    return-object v1
.end method

.method private static refreshTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1207
    .line 1208
    const-string v3, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v4, "Off"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1209
    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->module:I

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->unlocked(I)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1210
    const/4 v1, 0x3

    .line 1211
    const-string v0, "\ud83d\udd12 \u041d\u044f\u043c\u0430 \u0434\u043e\u0441\u0442\u044a\u043f"

    const-string v2, "\ud83d\udd12 No access"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    .line 1279
    :goto_1d
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    if-eq v2, v0, :cond_26

    .line 1280
    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    .line 1281
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->styleTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;I)V

    .line 1283
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1284
    iput-object v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastText:Ljava/lang/String;

    .line 1285
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    :cond_35
    return-void

    .line 1212
    :cond_36
    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->module:I

    packed-switch v3, :pswitch_data_14a

    .line 1267
    :pswitch_3b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v3

    .line 1268
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v3, v4, :cond_12c

    .line 1270
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u25cf %.0f kcal"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    goto :goto_1d

    .line 1214
    :pswitch_5a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->isCounting()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1216
    const-string v0, "\u25cf \u041e\u0442\u0431\u0440\u043e\u044f\u0432\u0430"

    const-string v2, "\u25cf Counting"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    goto :goto_1d

    .line 1217
    :cond_6b
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->isArmed()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1219
    const-string v0, "\u0413\u043e\u0442\u043e\u0432"

    const-string v1, "Ready"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1d

    .line 1221
    :cond_7b
    const-string v1, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u0437\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430"

    const-string v2, "Tap to set up"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v2, v0

    .line 1223
    goto :goto_1d

    .line 1225
    :pswitch_86
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 1226
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1228
    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    const-string v1, "Paused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_1d

    .line 1231
    :cond_a3
    const-string v0, "\u25b6 \u0421\u0432\u0438\u0440\u0438"

    const-string v2, "\u25b6 Playing"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    goto/16 :goto_1d

    .line 1234
    :cond_af
    const-string v1, "\u0421\u043f\u0440\u044f\u043d\u0430"

    const-string v2, "Stopped"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v2, v0

    .line 1236
    goto/16 :goto_1d

    .line 1238
    :pswitch_bb
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1239
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v0

    .line 1240
    if-lez v0, :cond_e4

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2665 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bpm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e0
    move-object v3, v0

    move v2, v1

    .line 1247
    goto/16 :goto_1d

    .line 1245
    :cond_e4
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_e0

    .line 1248
    :cond_ee
    const-string v1, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0441\u043b\u0443\u0448\u0430"

    const-string v2, "Band idle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v2, v0

    .line 1250
    goto/16 :goto_1d

    .line 1252
    :pswitch_fa
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tileState()I

    move-result v1

    .line 1253
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->status()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    .line 1254
    goto/16 :goto_1d

    .line 1256
    :pswitch_106
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 1258
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->name()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    .line 1259
    goto/16 :goto_1d

    .line 1261
    :cond_114
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v3

    .line 1262
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v3, v4, :cond_124

    .line 1264
    :goto_11c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->status()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    .line 1265
    goto/16 :goto_1d

    .line 1263
    :cond_124
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v3, v1, :cond_12a

    move v1, v0

    goto :goto_11c

    :cond_12a
    move v1, v2

    goto :goto_11c

    .line 1271
    :cond_12c
    if-eqz v3, :cond_13d

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v3, v1, :cond_13d

    .line 1273
    const-string v0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430"

    const-string v1, "Setting up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_1d

    .line 1275
    :cond_13d
    const-string v1, "\u0423\u043c\u043d\u0430 \u0441\u0435\u0441\u0438\u044f"

    const-string v2, "Smart session"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v2, v0

    goto/16 :goto_1d

    .line 1212
    nop

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_86
        :pswitch_bb
        :pswitch_3b
        :pswitch_106
        :pswitch_fa
    .end packed-switch
.end method

.method private static refreshTiles()V
    .registers 4

    .prologue
    .line 1137
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 1138
    if-eqz v3, :cond_d

    .line 1139
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;)V

    .line 1137
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1142
    :cond_10
    return-void
.end method

.method private static restoreAlpha()V
    .registers 1

    .prologue
    .line 594
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->restoreAlpha(Landroid/view/ViewGroup;)V

    .line 595
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->restoreAlpha(Landroid/view/ViewGroup;)V

    .line 596
    return-void
.end method

.method private static restoreAlpha(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 599
    if-nez p0, :cond_3

    .line 605
    :cond_2
    return-void

    .line 602
    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 603
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static save(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bar"

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "menu"

    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsNav;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 307
    return-void
.end method

.method static showInfo(I)V
    .registers 4

    .prologue
    .line 1047
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1053
    :goto_4
    return-void

    .line 1050
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 1051
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1f

    const-string v0, "vr"

    .line 1052
    :goto_10
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->unlocked(I)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;-><init>(I)V

    :goto_1b
    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1051
    :cond_1f
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->licenseId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 1052
    :cond_24
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static showMenu(Landroid/view/View;)V
    .registers 13

    .prologue
    .line 747
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_5

    .line 809
    :cond_4
    :goto_4
    return-void

    .line 750
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 751
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->dismiss()V

    goto :goto_4

    .line 754
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/widget/XemsNav;->menuClosedAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 757
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 758
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 759
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 760
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 762
    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;

    .line 763
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 764
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->fillMenu(Landroid/widget/LinearLayout;)V

    .line 767
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 768
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 769
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 770
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 771
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 772
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 773
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 774
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 775
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 774
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 776
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 777
    invoke-virtual {p0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 778
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 779
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 780
    const/high16 v6, 0x43200000    # 160.0f

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x1

    aget v7, v5, v7

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v7, v4

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v4, v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 781
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 782
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_16d

    .line 787
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 788
    :goto_da
    if-eqz v1, :cond_4

    .line 791
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 792
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 793
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_171

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->locY(Landroid/view/View;)I

    move-result v0

    :goto_ec
    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int/2addr v0, v7

    .line 794
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 795
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 796
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 797
    new-instance v9, Lcom/isaigu/gymapp/widget/XemsNav$CloseMenu;

    invoke-direct {v9}, Lcom/isaigu/gymapp/widget/XemsNav$CloseMenu;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 799
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 798
    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 801
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x33

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 803
    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, 0x0

    aget v5, v5, v10

    const/4 v10, 0x0

    aget v6, v6, v10

    sub-int/2addr v5, v6

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 804
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    sub-int v4, v0, v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sub-int v2, v4, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 805
    invoke-virtual {v7, v3, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v2, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-direct {v0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    .line 808
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_4

    .line 787
    :cond_16d
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_da

    .line 793
    :cond_171
    const/4 v0, 0x1

    aget v0, v5, v0

    goto/16 :goto_ec
.end method

.method private static startTicking()V
    .registers 2

    .prologue
    .line 1312
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    if-nez v0, :cond_e

    .line 1313
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    .line 1314
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1316
    :cond_e
    return-void
.end method

.method private static stopTicking()V
    .registers 2

    .prologue
    .line 1319
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    .line 1320
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1321
    return-void
.end method

.method private static styleTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;I)V
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 1290
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1291
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_6f

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_11
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1292
    if-ne p1, v5, :cond_17

    move p1, v2

    .line 1295
    :cond_17
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v7, v0

    .line 1296
    const/4 v0, 0x2

    if-ne p1, v0, :cond_71

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1297
    :goto_23
    if-nez p1, :cond_74

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    move v5, v0

    .line 1298
    :goto_28
    if-nez p1, :cond_7f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    .line 1299
    :goto_2c
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    .line 1300
    if-nez p1, :cond_81

    :goto_30
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1299
    invoke-static {v5, v7, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1302
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1303
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1304
    if-ne p1, v4, :cond_84

    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    :goto_4b
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1305
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->icon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1306
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->icon:Landroid/widget/TextView;

    if-ne p1, v4, :cond_8d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1307
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    if-nez p1, :cond_62

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :cond_62
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1308
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-nez p1, :cond_90

    :goto_6b
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1309
    return-void

    :cond_6f
    move v0, v1

    .line 1291
    goto :goto_11

    .line 1296
    :cond_71
    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    goto :goto_23

    .line 1297
    :cond_74
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const v5, 0x3e23d70a    # 0.16f

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    move v5, v0

    goto :goto_28

    :cond_7f
    move v0, v3

    .line 1298
    goto :goto_2c

    .line 1300
    :cond_81
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_30

    .line 1304
    :cond_84
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    const/16 v5, 0x33

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_4b

    .line 1306
    :cond_8d
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    goto :goto_59

    :cond_90
    move v2, v4

    .line 1308
    goto :goto_6b
.end method

.method private static tabLabel(Landroid/view/ViewGroup;)Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 396
    const-string v1, ""

    .line 397
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_20

    .line 398
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 399
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_21

    instance-of v3, v0, Landroid/widget/Button;

    if-nez v3, :cond_21

    .line 400
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 397
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_4

    .line 403
    :cond_20
    return-object v1

    :cond_21
    move-object v0, v1

    goto :goto_1c
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1325
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    .line 1327
    :goto_4
    return-object p0

    .line 1326
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method static unlocked(I)Z
    .registers 2

    .prologue
    .line 1146
    const/4 v0, 0x5

    if-eq p0, v0, :cond_d

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->licenseId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
