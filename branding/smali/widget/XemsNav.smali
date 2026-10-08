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

    .line 185
    new-array v0, v3, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->MOD_ORDER:[I

    .line 187
    new-array v0, v2, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->BAR_DEFAULT:[I

    .line 825
    new-array v0, v2, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->PAGE_ICONS:[I

    return-void

    .line 185
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

    .line 187
    :array_44
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x3
    .end array-data

    .line 825
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

    .line 681
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 682
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 683
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 684
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 685
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 686
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v4, 0x22

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v5, 0x88

    .line 687
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 686
    invoke-static {v3, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 688
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 689
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$MenuClick;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsNav$MenuClick;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$MenuDrop;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsNav$MenuDrop;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 691
    const-string v2, "\u041c\u0435\u043d\u044e"

    const-string v3, "Menu"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 692
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 694
    const-string v2, "\u2630"

    const/4 v3, -0x1

    invoke-static {v0, v2, v10, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 695
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 696
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 697
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 698
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 699
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 700
    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 701
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    const-string v2, "\u041c\u0435\u043d\u044e"

    const-string v3, "Menu"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v2, v3, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 703
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 704
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 706
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 708
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 709
    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 710
    invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    sput-object v2, Lcom/isaigu/gymapp/widget/XemsNav;->menuButton:Landroid/widget/TextView;

    .line 712
    return-void
.end method

.method private static addTile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 608
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsNav$Tile;-><init>()V

    .line 609
    iput p1, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->module:I

    .line 610
    iput p4, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    .line 611
    iput-object p3, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->label:Ljava/lang/String;

    .line 613
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 614
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 615
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 616
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 617
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 618
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$TileClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsNav$TileClick;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 621
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

    .line 622
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 623
    const/high16 v4, 0x42180000    # 38.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 624
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 627
    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {v1, p3, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 628
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 629
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 630
    const-string v6, ""

    const/high16 v7, 0x41300000    # 11.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x0

    invoke-static {v1, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 631
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 632
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 633
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 634
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 636
    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 637
    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 640
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 641
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    const/16 v4, 0x2a

    .line 646
    const-string v5, "i"

    const/high16 v7, 0x41a80000    # 21.0f

    const/4 v8, 0x1

    invoke-static {v1, v5, v7, p4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 647
    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 648
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 649
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 650
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 651
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 652
    const/16 v8, 0x24

    invoke-static {p4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 653
    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/16 v9, 0x99

    invoke-static {p4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 654
    int-to-float v8, v4

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, p4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 656
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 657
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsNav$InfoClick;

    invoke-direct {v7, p1}, Lcom/isaigu/gymapp/widget/XemsNav$InfoClick;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    const-string v7, "\u0418\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f"

    const-string v8, "Info"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 659
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v8, v4

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 660
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 661
    invoke-virtual {v3, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 665
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 666
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 667
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 668
    invoke-virtual {p0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    iput-object v3, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    .line 671
    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->icon:Landroid/widget/TextView;

    .line 672
    iput-object v6, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    .line 673
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    aput-object v2, v0, p1

    .line 674
    return-void

    .line 621
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

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 225
    :goto_7
    const/4 v3, 0x5

    if-ge v1, v3, :cond_23

    .line 226
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

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 228
    :cond_23
    const-string v1, "programs"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->MOD_ORDER:[I

    array-length v3, v1

    :goto_2b
    if-ge v0, v3, :cond_48

    aget v4, v1, v0

    .line 230
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

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 232
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

    .line 129
    if-nez p0, :cond_5

    .line 159
    :cond_4
    :goto_4
    return-void

    .line 132
    :cond_5
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 138
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLang;->init(Landroid/content/Context;)V

    .line 139
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 140
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_33

    move-object v0, v1

    .line 141
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->apply(Landroid/app/Activity;)V

    move-object v0, v1

    .line 142
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoCheck(Landroid/app/Activity;)V

    .line 144
    :cond_33
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    .line 145
    const v0, 0x7f0900ec

    sput v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 148
    const v3, 0x7f0900de

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_4c

    .line 150
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_4c
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->buildModuleBar(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 154
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42880000    # 68.0f

    .line 155
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$BarAttach;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsNav$BarAttach;-><init>()V

    invoke-virtual {v3, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 158
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
    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    sget-object v3, Lcom/isaigu/gymapp/widget/XemsNav;->BAR_DEFAULT:[I

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v4, :cond_2a

    aget v5, v3, v1

    .line 254
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

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 254
    :cond_27
    const-string v0, ""

    goto :goto_16

    .line 256
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

    .line 162
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 163
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 164
    const-string v1, "tab_bar_bg"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 165
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 166
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 169
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 170
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 172
    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    .line 173
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 174
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->fillBar(Landroid/widget/LinearLayout;)V

    .line 175
    return-object v0
.end method

.method static clickModule(I)V
    .registers 2

    .prologue
    .line 1031
    const/4 v0, 0x5

    if-ne p0, v0, :cond_10

    .line 1032
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->open(Landroid/app/Activity;)V

    .line 1033
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    .line 1049
    :goto_f
    return-void

    .line 1036
    :cond_10
    const/4 v0, 0x4

    if-ne p0, v0, :cond_22

    .line 1037
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_1e

    .line 1039
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->open(Landroid/app/Activity;)V

    .line 1041
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    goto :goto_f

    .line 1044
    :cond_22
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->findModuleButton(I)Landroid/view/View;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_2b

    .line 1046
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1048
    :cond_2b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    goto :goto_f
.end method

.method static drop(Landroid/content/Context;Ljava/lang/String;ZI)Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 579
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->barKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 580
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->menuKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 581
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 582
    if-eqz p2, :cond_29

    if-nez v0, :cond_29

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x7

    if-lt v0, v4, :cond_29

    .line 583
    const-string v0, "\u041b\u0435\u043d\u0442\u0430\u0442\u0430 \u0435 \u043f\u044a\u043b\u043d\u0430 \u2014 \u043f\u044a\u0440\u0432\u043e \u043c\u0430\u0445\u043d\u0438 \u043d\u0435\u0449\u043e \u043e\u0442 \u043d\u0435\u044f."

    const-string v1, "The bar is full \u2014 take something off first."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 603
    :goto_28
    return v0

    .line 587
    :cond_29
    if-eqz p2, :cond_65

    move-object v0, v1

    .line 588
    :goto_2c
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 589
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 590
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 591
    if-ltz v4, :cond_3c

    if-ge v4, p3, :cond_3c

    .line 592
    add-int/lit8 p3, p3, -0x1

    .line 594
    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 595
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->save(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 596
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5a

    .line 597
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->fillBar(Landroid/widget/LinearLayout;)V

    .line 598
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    .line 600
    :cond_5a
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_63

    .line 601
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->fillMenu(Landroid/widget/LinearLayout;)V

    .line 603
    :cond_63
    const/4 v0, 0x1

    goto :goto_28

    :cond_65
    move-object v0, v2

    .line 587
    goto :goto_2c
.end method

.method private static extraRow(Landroid/content/Context;ILjava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v9, 0x42100000    # 36.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 882
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 883
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 884
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v6, v0, v8, v2, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 885
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 886
    invoke-static {v8, v0, v8, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 887
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 888
    invoke-virtual {v6, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 890
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 891
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 892
    const/16 v0, 0x2e

    invoke-static {p3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 893
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-direct {v3, p1, p3}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    .line 894
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v8

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

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
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 899
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    const/high16 v0, 0x41700000    # 15.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v0, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 901
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 902
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 903
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    return-object v6
.end method

.method private static fillBar(Landroid/widget/LinearLayout;)V
    .registers 9

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    .line 289
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 290
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 291
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->addMenuTile(Landroid/widget/LinearLayout;)V

    .line 293
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->barKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    const-string v3, "mod:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 295
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 296
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->modGlyph(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->modLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->modTint(I)I

    move-result v6

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsNav;->addTile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;I)V

    .line 297
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 298
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/isaigu/gymapp/widget/XemsNav$Lift;

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/widget/XemsNav$Lift;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1a

    .line 300
    :cond_5e
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsNav;->linkTile(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_1a

    .line 302
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 303
    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 304
    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 305
    invoke-virtual {p0, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a

    .line 309
    :cond_7d
    return-void
.end method

.method private static fillMenu(Landroid/widget/LinearLayout;)V
    .registers 12

    .prologue
    const v10, 0x7f0900ec

    const/4 v9, 0x0

    const/high16 v8, 0x437a0000    # 250.0f

    const/high16 v7, 0x41400000    # 12.0f

    .line 378
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 379
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 380
    const-string v0, "XEMS"

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 381
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 382
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
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

    .line 384
    const/4 v2, 0x0

    .line 385
    const-string v1, "page:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 386
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 387
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    add-int v6, v10, v5

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 388
    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_ed

    .line 389
    check-cast v1, Landroid/view/ViewGroup;

    add-int v2, v10, v5

    invoke-static {v3, v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->menuRow(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 396
    :goto_65
    if-eqz v1, :cond_33

    .line 399
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 400
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$Lift;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/widget/XemsNav$Lift;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 401
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v5, 0x42500000    # 52.0f

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_33

    .line 391
    :cond_85
    const-string v1, "programs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 392
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

    .line 394
    :cond_a4
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->moduleRow(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    goto :goto_65

    .line 403
    :cond_b2
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->menuKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 404
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u043e \u0435 \u0432 \u043b\u0435\u043d\u0442\u0430\u0442\u0430 \u2014 \u043f\u0443\u0441\u043d\u0438 \u0442\u0443\u043a, \u0437\u0430 \u0434\u0430 \u0432\u044a\u0440\u043d\u0435\u0448."

    const-string v1, "Everything is on the bar \u2014 drop here to bring it back."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v3, v0, v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 406
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 407
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    :cond_ec
    return-void

    :cond_ed
    move-object v1, v2

    goto/16 :goto_65
.end method

.method private static findModuleButton(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 1052
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_6

    .line 1053
    const/4 v0, 0x0

    .line 1063
    :goto_5
    return-object v0

    .line 1055
    :cond_6
    packed-switch p0, :pswitch_data_30

    .line 1063
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 1057
    :pswitch_12
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 1059
    :pswitch_1c
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f090226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 1061
    :pswitch_26
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f090297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 1055
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

    .line 352
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 354
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 355
    if-eqz p3, :cond_3a

    move v0, p2

    :goto_11
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 356
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz p3, :cond_1a

    sget p2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :cond_1a
    invoke-direct {v3, p1, p2}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    .line 357
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 359
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 360
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 361
    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 362
    return-object v6

    .line 355
    :cond_3a
    const/16 v0, 0x2e

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_11
.end method

.method private static goPage(I)V
    .registers 2

    .prologue
    .line 981
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    if-eqz v0, :cond_9

    .line 982
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->dismiss()V

    .line 984
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 985
    :goto_13
    if-eqz v0, :cond_18

    .line 986
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 988
    :cond_18
    return-void

    .line 984
    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static goTraining()V
    .registers 2

    .prologue
    .line 974
    const v0, 0x7f0900ec

    :try_start_3
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->goPage(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    .line 978
    :goto_6
    return-void

    .line 975
    :catch_7
    move-exception v0

    .line 976
    const-string v1, "XemsNav.goTraining"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static hide(Landroid/view/View;)V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1099
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_d

    .line 1100
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    :cond_d
    return-void
.end method

.method private static hideSidebarModules(Landroid/view/View;)V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 1069
    if-eqz p0, :cond_8

    .line 1070
    :goto_5
    if-nez p0, :cond_b

    .line 1096
    :cond_7
    return-void

    .line 1069
    :cond_8
    sget-object p0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    goto :goto_5

    .line 1073
    :cond_b
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1074
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1077
    check-cast v0, Landroid/view/ViewGroup;

    .line 1078
    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    .line 1079
    const v1, 0x7f090226

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    .line 1080
    const v1, 0x7f090297

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    .line 1081
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    move v1, v2

    move v3, v2

    .line 1084
    :goto_41
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 1085
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1086
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_54

    .line 1084
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 1089
    :cond_54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Landroid/view/View;

    if-ne v4, v6, :cond_65

    const/4 v4, 0x1

    .line 1090
    :goto_5d
    if-eqz v4, :cond_67

    if-eqz v3, :cond_67

    .line 1091
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51

    :cond_65
    move v4, v2

    .line 1089
    goto :goto_5d

    :cond_67
    move v3, v4

    .line 1094
    goto :goto_51
.end method

.method public static isTrainingPage()Z
    .registers 2

    .prologue
    .line 1027
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
    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
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

    .line 285
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static licenseId(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1146
    packed-switch p0, :pswitch_data_12

    .line 1156
    :pswitch_3
    const-string v0, "ai"

    :goto_5
    return-object v0

    .line 1148
    :pswitch_6
    const-string v0, "timer"

    goto :goto_5

    .line 1150
    :pswitch_9
    const-string v0, "music"

    goto :goto_5

    .line 1152
    :pswitch_c
    const-string v0, "pulse"

    goto :goto_5

    .line 1154
    :pswitch_f
    const-string v0, "auto"

    goto :goto_5

    .line 1146
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

    .line 317
    const-string v0, "programs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 319
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0438"

    const-string v1, "Programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    const v1, -0xdd1c01

    .line 321
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$WorkoutsClick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsNav$WorkoutsClick;-><init>()V

    move v3, v4

    .line 333
    :goto_21
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 334
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 335
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v4, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 336
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 337
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$Lift;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsNav$Lift;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 339
    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 340
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 341
    invoke-static {p0, v3, v1, v7}, Lcom/isaigu/gymapp/widget/XemsNav;->glyphDisc(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    const/high16 v0, 0x41600000    # 14.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v0, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 344
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 345
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 346
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 347
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v5

    .line 348
    :goto_7f
    return-object v0

    .line 323
    :cond_80
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 324
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-eqz v0, :cond_9d

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f0900ec

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    :goto_97
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_9f

    .line 326
    const/4 v0, 0x0

    goto :goto_7f

    .line 324
    :cond_9d
    const/4 v0, 0x0

    goto :goto_97

    .line 328
    :cond_9f
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->PAGE_ICONS:[I

    aget v3, v1, v5

    .line 329
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->tabLabel(Landroid/view/ViewGroup;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsNav;->pageTint(I)I

    move-result v1

    .line 331
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;

    const v6, 0x7f0900ec

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;-><init>(I)V

    goto/16 :goto_21
.end method

.method private static locY(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 782
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 783
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 784
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
    .line 261
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->barKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
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

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 265
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 268
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

    .line 269
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 270
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 273
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

    .line 839
    sget v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    if-ne p2, v0, :cond_38

    move v6, v1

    .line 840
    :goto_b
    const/4 v0, 0x4

    const v2, 0x7f0900ec

    sub-int v2, p2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 841
    const-string v8, ""

    move v2, v7

    .line 842
    :goto_1c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3a

    .line 843
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 844
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_f3

    instance-of v4, v0, Landroid/widget/Button;

    if-nez v4, :cond_f3

    .line 845
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 842
    :goto_34
    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    goto :goto_1c

    :cond_38
    move v6, v7

    .line 839
    goto :goto_b

    .line 848
    :cond_3a
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->pageTint(I)I

    move-result v2

    .line 849
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 850
    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 851
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v9, v0, v7, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 852
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    .line 853
    if-eqz v6, :cond_e6

    const/16 v0, 0x24

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    .line 854
    :goto_61
    invoke-static {v0, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v5, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 855
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 856
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;

    invoke-direct {v0, p2}, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 860
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 861
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 862
    if-eqz v6, :cond_e9

    move v0, v2

    :goto_89
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 863
    new-instance v5, Lcom/isaigu/gymapp/widget/XemsIcon;

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->PAGE_ICONS:[I

    aget v0, v0, v3

    if-eqz v6, :cond_96

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :cond_96
    invoke-direct {v5, v0, v2}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    .line 864
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v7

    aput-object v5, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 866
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 867
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 868
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 869
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    .line 872
    if-eqz v6, :cond_f0

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 871
    :goto_ce
    invoke-static {p0, v1, v2, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 873
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 875
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 876
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    return-object v9

    :cond_e6
    move v0, v7

    .line 853
    goto/16 :goto_61

    .line 862
    :cond_e9
    const/16 v0, 0x2e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_89

    .line 872
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
    .line 190
    packed-switch p0, :pswitch_data_16

    .line 196
    :pswitch_3
    const-string v0, "AI"

    :goto_5
    return-object v0

    .line 191
    :pswitch_6
    const-string v0, "\u23f1"

    goto :goto_5

    .line 192
    :pswitch_9
    const-string v0, "\u266b"

    goto :goto_5

    .line 193
    :pswitch_c
    const-string v0, "\u2665"

    goto :goto_5

    .line 194
    :pswitch_f
    const-string v0, "A"

    goto :goto_5

    .line 195
    :pswitch_12
    const-string v0, "VR"

    goto :goto_5

    .line 190
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
    .line 201
    packed-switch p0, :pswitch_data_3a

    .line 207
    :pswitch_3
    const-string v0, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "AI session"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 202
    :pswitch_c
    const-string v0, "\u0422\u0430\u0439\u043c\u0435\u0440"

    const-string v1, "Timer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 203
    :pswitch_15
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430"

    const-string v1, "Music"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 204
    :pswitch_1e
    const-string v0, "\u041f\u0443\u043b\u0441"

    const-string v1, "Heart rate"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 205
    :pswitch_27
    const-string v0, "\u0410\u0432\u0442\u043e"

    const-string v1, "Auto"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 206
    :pswitch_30
    const-string v0, "VR"

    const-string v1, "VR"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 201
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
    .line 212
    packed-switch p0, :pswitch_data_18

    .line 218
    :pswitch_3
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    :goto_5
    return v0

    .line 213
    :pswitch_6
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_5

    .line 214
    :pswitch_9
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_5

    .line 215
    :pswitch_c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_5

    .line 216
    :pswitch_f
    const v0, -0xd95966

    goto :goto_5

    .line 217
    :pswitch_13
    const v0, -0xa39440

    goto :goto_5

    .line 212
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

    .line 909
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    aget-object v0, v0, p1

    .line 910
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 911
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 912
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 913
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 914
    invoke-static {v6, v2, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 915
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 916
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$ModuleClick;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/widget/XemsNav$ModuleClick;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->modTint(I)I

    move-result v2

    .line 918
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->modGlyph(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {p0, v3, v4, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 919
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 920
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 921
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 922
    const/16 v5, 0x2e

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 923
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 924
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 926
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->modLabel(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 927
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 928
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 929
    if-eqz v0, :cond_c5

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 930
    :goto_92
    if-eqz v0, :cond_b1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_b1

    .line 931
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41300000    # 11.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 932
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 933
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 934
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 936
    :cond_b1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 937
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 938
    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    return-object v1

    .line 929
    :cond_c5
    const/4 v0, 0x0

    goto :goto_92
.end method

.method public static onLicenseChanged()V
    .registers 5

    .prologue
    .line 1163
    :try_start_0
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    .line 1164
    if-eqz v3, :cond_10

    .line 1165
    const/4 v4, -0x1

    iput v4, v3, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    .line 1166
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastText:Ljava/lang/String;

    .line 1163
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1169
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 1173
    :goto_16
    return-void

    .line 1170
    :catch_17
    move-exception v0

    .line 1171
    const-string v1, "XemsNav.license"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public static onPage(I)V
    .registers 4

    .prologue
    .line 98
    const v0, 0x7f0900ec

    if-lt p0, v0, :cond_c

    const v0, 0x7f0900f1

    if-ge p0, v0, :cond_c

    .line 99
    :try_start_a
    sput p0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_39

    .line 101
    :cond_c
    const v0, 0x7f0900ed

    if-ne p0, v0, :cond_27

    .line 104
    :try_start_11
    const-string v0, "com.isaigu.gymapp.widget.XemsClientSync"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "poke"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_27} :catch_40

    .line 108
    :cond_27
    :goto_27
    :try_start_27
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    if-eqz v0, :cond_38

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 109
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->dismiss()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_38} :catch_39

    .line 115
    :cond_38
    :goto_38
    return-void

    .line 112
    :catch_39
    move-exception v0

    .line 113
    const-string v1, "XemsNav.onPage"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    .line 105
    :catch_40
    move-exception v0

    goto :goto_27
.end method

.method public static onTrainingPanel(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->hideSidebarModules(Landroid/view/View;)V

    .line 120
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->attach(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 124
    :goto_6
    return-void

    .line 121
    :catch_7
    move-exception v0

    .line 122
    const-string v1, "XemsNav.onTrainingPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public static onVrLinked()V
    .registers 5

    .prologue
    .line 1125
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1142
    :cond_4
    :goto_4
    return-void

    .line 1128
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1129
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1130
    const-string v2, "vr_auto"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1133
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vr_auto"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1134
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->barKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 1135
    const-string v2, "mod:5"

    .line 1136
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_4

    .line 1137
    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->drop(Landroid/content/Context;Ljava/lang/String;ZI)Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_4

    .line 1139
    :catch_42
    move-exception v0

    .line 1140
    const-string v1, "XemsNav.vr"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static openModule(Landroid/view/View;I)V
    .registers 6

    .prologue
    const v1, 0x7f0900ec

    .line 993
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1013
    :goto_7
    return-void

    .line 996
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 997
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->unlocked(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 999
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->showInfo(I)V

    goto :goto_7

    .line 1002
    :cond_15
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1c

    .line 1003
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->clickModule(I)V

    goto :goto_7

    .line 1006
    :cond_1c
    sget v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    if-eq v0, v1, :cond_30

    .line 1008
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->goPage(I)V

    .line 1009
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsNav$OpenLater;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/widget/XemsNav$OpenLater;-><init>(I)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 1012
    :cond_30
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->clickModule(I)V

    goto :goto_7
.end method

.method private static pageTint(I)I
    .registers 2

    .prologue
    .line 829
    packed-switch p0, :pswitch_data_12

    .line 834
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    :goto_5
    return v0

    .line 830
    :pswitch_6
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_5

    .line 831
    :pswitch_9
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_5

    .line 832
    :pswitch_c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_5

    .line 833
    :pswitch_f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_5

    .line 829
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
    .line 236
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
    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->allKeys()Ljava/util/List;

    move-result-object v2

    .line 242
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

    .line 243
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 244
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 247
    :cond_2f
    return-object v1
.end method

.method private static refreshTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1177
    .line 1178
    const-string v3, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v4, "Off"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1179
    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->module:I

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->unlocked(I)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1180
    const/4 v1, 0x3

    .line 1181
    const-string v0, "\ud83d\udd12 \u041d\u044f\u043c\u0430 \u0434\u043e\u0441\u0442\u044a\u043f"

    const-string v2, "\ud83d\udd12 No access"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    .line 1249
    :goto_1d
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    if-eq v2, v0, :cond_26

    .line 1250
    iput v2, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    .line 1251
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->styleTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;I)V

    .line 1253
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1254
    iput-object v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastText:Ljava/lang/String;

    .line 1255
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    :cond_35
    return-void

    .line 1182
    :cond_36
    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->module:I

    packed-switch v3, :pswitch_data_14a

    .line 1237
    :pswitch_3b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v3

    .line 1238
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v3, v4, :cond_12c

    .line 1240
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

    .line 1184
    :pswitch_5a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->isCounting()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1186
    const-string v0, "\u25cf \u041e\u0442\u0431\u0440\u043e\u044f\u0432\u0430"

    const-string v2, "\u25cf Counting"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    goto :goto_1d

    .line 1187
    :cond_6b
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->isArmed()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1189
    const-string v0, "\u0413\u043e\u0442\u043e\u0432"

    const-string v1, "Ready"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1d

    .line 1191
    :cond_7b
    const-string v1, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u0437\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430"

    const-string v2, "Tap to set up"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v2, v0

    .line 1193
    goto :goto_1d

    .line 1195
    :pswitch_86
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 1196
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1198
    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    const-string v1, "Paused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_1d

    .line 1201
    :cond_a3
    const-string v0, "\u25b6 \u0421\u0432\u0438\u0440\u0438"

    const-string v2, "\u25b6 Playing"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    goto/16 :goto_1d

    .line 1204
    :cond_af
    const-string v1, "\u0421\u043f\u0440\u044f\u043d\u0430"

    const-string v2, "Stopped"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v2, v0

    .line 1206
    goto/16 :goto_1d

    .line 1208
    :pswitch_bb
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1209
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v0

    .line 1210
    if-lez v0, :cond_e4

    .line 1212
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

    .line 1217
    goto/16 :goto_1d

    .line 1215
    :cond_e4
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_e0

    .line 1218
    :cond_ee
    const-string v1, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0441\u043b\u0443\u0448\u0430"

    const-string v2, "Band idle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v2, v0

    .line 1220
    goto/16 :goto_1d

    .line 1222
    :pswitch_fa
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tileState()I

    move-result v1

    .line 1223
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->status()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    .line 1224
    goto/16 :goto_1d

    .line 1226
    :pswitch_106
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 1228
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->name()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    .line 1229
    goto/16 :goto_1d

    .line 1231
    :cond_114
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v3

    .line 1232
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v3, v4, :cond_124

    .line 1234
    :goto_11c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->status()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v2, v1

    .line 1235
    goto/16 :goto_1d

    .line 1233
    :cond_124
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v3, v1, :cond_12a

    move v1, v0

    goto :goto_11c

    :cond_12a
    move v1, v2

    goto :goto_11c

    .line 1241
    :cond_12c
    if-eqz v3, :cond_13d

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v3, v1, :cond_13d

    .line 1243
    const-string v0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430"

    const-string v1, "Setting up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_1d

    .line 1245
    :cond_13d
    const-string v1, "\u0423\u043c\u043d\u0430 \u0441\u0435\u0441\u0438\u044f"

    const-string v2, "Smart session"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v2, v0

    goto/16 :goto_1d

    .line 1182
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
    .line 1107
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 1108
    if-eqz v3, :cond_d

    .line 1109
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;)V

    .line 1107
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1112
    :cond_10
    return-void
.end method

.method private static restoreAlpha()V
    .registers 1

    .prologue
    .line 564
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->restoreAlpha(Landroid/view/ViewGroup;)V

    .line 565
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->restoreAlpha(Landroid/view/ViewGroup;)V

    .line 566
    return-void
.end method

.method private static restoreAlpha(Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 569
    if-nez p0, :cond_3

    .line 575
    :cond_2
    return-void

    .line 572
    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 573
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 572
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
    .line 277
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

    .line 278
    return-void
.end method

.method static showInfo(I)V
    .registers 4

    .prologue
    .line 1017
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1023
    :goto_4
    return-void

    .line 1020
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 1021
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1f

    const-string v0, "vr"

    .line 1022
    :goto_10
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->unlocked(I)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsNav$OpenFromInfo;-><init>(I)V

    :goto_1b
    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1021
    :cond_1f
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->licenseId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 1022
    :cond_24
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static showMenu(Landroid/view/View;)V
    .registers 13

    .prologue
    .line 717
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_5

    .line 779
    :cond_4
    :goto_4
    return-void

    .line 720
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 721
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;->dismiss()V

    goto :goto_4

    .line 724
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/widget/XemsNav;->menuClosedAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 727
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 728
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 729
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 730
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 732
    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuBox:Landroid/widget/LinearLayout;

    .line 733
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 734
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->fillMenu(Landroid/widget/LinearLayout;)V

    .line 737
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 738
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 739
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 740
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 741
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 742
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

    .line 743
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 744
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 745
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 744
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 746
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 747
    invoke-virtual {p0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 748
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 749
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 750
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

    .line 751
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 752
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_16d

    .line 757
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 758
    :goto_da
    if-eqz v1, :cond_4

    .line 761
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 762
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 763
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_171

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->barView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->locY(Landroid/view/View;)I

    move-result v0

    :goto_ec
    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int/2addr v0, v7

    .line 764
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 765
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 766
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 767
    new-instance v9, Lcom/isaigu/gymapp/widget/XemsNav$CloseMenu;

    invoke-direct {v9}, Lcom/isaigu/gymapp/widget/XemsNav$CloseMenu;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 769
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 768
    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 771
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x33

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 773
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

    .line 774
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

    .line 775
    invoke-virtual {v7, v3, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v2, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 777
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    invoke-direct {v0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Lcom/isaigu/gymapp/widget/XemsNav$MenuLayer;

    .line 778
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_4

    .line 757
    :cond_16d
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_da

    .line 763
    :cond_171
    const/4 v0, 0x1

    aget v0, v5, v0

    goto/16 :goto_ec
.end method

.method private static startTicking()V
    .registers 2

    .prologue
    .line 1282
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    if-nez v0, :cond_e

    .line 1283
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    .line 1284
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1286
    :cond_e
    return-void
.end method

.method private static stopTicking()V
    .registers 2

    .prologue
    .line 1289
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    .line 1290
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1291
    return-void
.end method

.method private static styleTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;I)V
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 1260
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1261
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_6f

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_11
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1262
    if-ne p1, v5, :cond_17

    move p1, v2

    .line 1265
    :cond_17
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v7, v0

    .line 1266
    const/4 v0, 0x2

    if-ne p1, v0, :cond_71

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 1267
    :goto_23
    if-nez p1, :cond_74

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    move v5, v0

    .line 1268
    :goto_28
    if-nez p1, :cond_7f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    .line 1269
    :goto_2c
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    .line 1270
    if-nez p1, :cond_81

    :goto_30
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1269
    invoke-static {v5, v7, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1272
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1273
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1274
    if-ne p1, v4, :cond_84

    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    :goto_4b
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1275
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->icon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1276
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->icon:Landroid/widget/TextView;

    if-ne p1, v4, :cond_8d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1277
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    if-nez p1, :cond_62

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :cond_62
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1278
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-nez p1, :cond_90

    :goto_6b
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1279
    return-void

    :cond_6f
    move v0, v1

    .line 1261
    goto :goto_11

    .line 1266
    :cond_71
    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    goto :goto_23

    .line 1267
    :cond_74
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const v5, 0x3e23d70a    # 0.16f

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    move v5, v0

    goto :goto_28

    :cond_7f
    move v0, v3

    .line 1268
    goto :goto_2c

    .line 1270
    :cond_81
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_30

    .line 1274
    :cond_84
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    const/16 v5, 0x33

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_4b

    .line 1276
    :cond_8d
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    goto :goto_59

    :cond_90
    move v2, v4

    .line 1278
    goto :goto_6b
.end method

.method private static tabLabel(Landroid/view/ViewGroup;)Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 366
    const-string v1, ""

    .line 367
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_20

    .line 368
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 369
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_21

    instance-of v3, v0, Landroid/widget/Button;

    if-nez v3, :cond_21

    .line 370
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 367
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_4

    .line 373
    :cond_20
    return-object v1

    :cond_21
    move-object v0, v1

    goto :goto_1c
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1295
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    .line 1297
    :goto_4
    return-object p0

    .line 1296
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method static unlocked(I)Z
    .registers 2

    .prologue
    .line 1116
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
