.class public final Lcom/isaigu/gymapp/widget/XemsNav;
.super Ljava/lang/Object;
.source "XemsNav.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsNav$BarAttach;,
        Lcom/isaigu/gymapp/widget/XemsNav$Tile;,
        Lcom/isaigu/gymapp/widget/XemsNav$TileClick;,
        Lcom/isaigu/gymapp/widget/XemsNav$MenuClick;,
        Lcom/isaigu/gymapp/widget/XemsNav$PageClick;,
        Lcom/isaigu/gymapp/widget/XemsNav$OpenLater;,
        Lcom/isaigu/gymapp/widget/XemsNav$Tick;
    }
.end annotation


# static fields
.field private static final AI_TAG:Ljava/lang/String; = "xems_ai_button"

.field private static final ID_FL_FRAGMENT:I = 0x7f0900a3

.field private static final ID_HEART:I = 0x7f090297

.field private static final ID_LINE:I = 0x7f0900de

.field private static final ID_MUSIC:I = 0x7f090226

.field private static final ID_RIGHT_LAYOUT:I = 0x7f090155

.field private static final ID_TAB_BAR:I = 0x7f0900ea

.field private static final ID_TAB_FIRST:I = 0x7f0900ec

.field private static final ID_TIMER:I = 0x7f090230

.field static final M_AI:I = 0x3

.field static final M_MUSIC:I = 0x1

.field static final M_PULSE:I = 0x2

.field static final M_TIMER:I = 0x0

.field private static final PAGE_ICONS:[I

.field private static final TAB_COUNT:I = 0x5

.field private static currentPage:I

.field private static final handler:Landroid/os/Handler;

.field private static mainRoot:Landroid/view/View;

.field private static menu:Landroid/widget/PopupWindow;

.field private static menuButton:Landroid/widget/TextView;

.field private static final tick:Ljava/lang/Runnable;

.field private static ticking:Z

.field private static final tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$Tick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsNav$Tick;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tick:Ljava/lang/Runnable;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    .line 63
    const v0, 0x7f0900ec

    sput v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    .line 283
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->PAGE_ICONS:[I

    return-void

    nop

    :array_26
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    return v0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    return-void
.end method

.method static synthetic access$1000(I)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->goPage(I)V

    return-void
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    return v0
.end method

.method static synthetic access$300(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->hideSidebarModules(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->startTicking()V

    return-void
.end method

.method static synthetic access$600()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->stopTicking()V

    return-void
.end method

.method static synthetic access$700()Landroid/widget/PopupWindow;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/View;I)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsNav;->openModule(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/View;)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->showMenu(Landroid/view/View;)V

    return-void
.end method

.method private static addMenuButton(Landroid/widget/FrameLayout;)V
    .registers 8

    .prologue
    const/high16 v6, 0x41400000    # 12.0f

    .line 220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 221
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuButton:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    .line 222
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lcom/isaigu/gymapp/widget/XemsNav;->menuButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 224
    :cond_21
    const-string v0, "\u2630"

    const/high16 v2, 0x41a00000    # 20.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 225
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 227
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 228
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 227
    invoke-static {v3, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setElevation(F)V

    .line 230
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationZ(F)V

    .line 231
    const-string v2, "\u041c\u0435\u043d\u044e"

    const-string v3, "Menu"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$MenuClick;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsNav$MenuClick;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 234
    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 235
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x33

    invoke-direct {v3, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 236
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 237
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 238
    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuButton:Landroid/widget/TextView;

    .line 240
    return-void
.end method

.method private static addTile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 172
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsNav$Tile;-><init>()V

    .line 173
    iput p1, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->module:I

    .line 174
    iput p4, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    .line 176
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 177
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 178
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 181
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$TileClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/XemsNav$TileClick;-><init>(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 184
    const-string v0, "AI"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const/high16 v0, 0x41700000    # 15.0f

    :goto_44
    const/4 v4, 0x1

    invoke-static {v1, p2, v0, p4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 185
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 186
    const/high16 v4, 0x42180000    # 38.0f

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 187
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 190
    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {v1, p3, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 191
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 192
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 193
    const-string v6, ""

    const/high16 v7, 0x41300000    # 11.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x0

    invoke-static {v1, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 194
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 195
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 196
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 200
    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 203
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 204
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 208
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 209
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 210
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 211
    invoke-virtual {p0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iput-object v3, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    .line 214
    iput-object v0, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->icon:Landroid/widget/TextView;

    .line 215
    iput-object v6, v2, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    .line 216
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    aput-object v2, v0, p1

    .line 217
    return-void

    .line 184
    :cond_d0
    const/high16 v0, 0x41980000    # 19.0f

    goto/16 :goto_44
.end method

.method public static attach(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 82
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->attachImpl(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 86
    :goto_3
    return-void

    .line 83
    :catch_4
    move-exception v0

    .line 84
    const-string v1, "XemsNav.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static attachImpl(Landroid/view/View;)V
    .registers 8

    .prologue
    const/16 v4, 0x8

    .line 116
    if-nez p0, :cond_5

    .line 150
    :cond_4
    :goto_4
    return-void

    .line 119
    :cond_5
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 125
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLang;->init(Landroid/content/Context;)V

    .line 126
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 127
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_33

    move-object v0, v1

    .line 128
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsFullscreen;->apply(Landroid/app/Activity;)V

    move-object v0, v1

    .line 129
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoCheck(Landroid/app/Activity;)V

    .line 131
    :cond_33
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    .line 132
    const v0, 0x7f0900ec

    sput v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 135
    const v3, 0x7f0900de

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_4c

    .line 137
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_4c
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->buildModuleBar(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 141
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42880000    # 68.0f

    .line 142
    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 145
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_76

    .line 146
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->addMenuButton(Landroid/widget/FrameLayout;)V

    .line 148
    :cond_76
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$BarAttach;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsNav$BarAttach;-><init>()V

    invoke-virtual {v3, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    goto :goto_4
.end method

.method private static buildModuleBar(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    .prologue
    const/high16 v3, 0x41400000    # 12.0f

    .line 153
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 154
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 155
    const-string v1, "tab_bar_bg"

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 156
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 157
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 160
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 161
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 163
    const/4 v1, 0x0

    const-string v2, "\u23f1"

    const-string v3, "\u0422\u0430\u0439\u043c\u0435\u0440"

    const-string v4, "Timer"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->addTile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;I)V

    .line 164
    const/4 v1, 0x1

    const-string v2, "\u266b"

    const-string v3, "\u041c\u0443\u0437\u0438\u043a\u0430"

    const-string v4, "Music"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->addTile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;I)V

    .line 165
    const/4 v1, 0x2

    const-string v2, "\u2665"

    const-string v3, "\u041f\u0443\u043b\u0441"

    const-string v4, "Heart rate"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->addTile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;I)V

    .line 166
    const/4 v1, 0x3

    const-string v2, "AI"

    const-string v3, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v4, "AI session"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->addTile(Landroid/widget/LinearLayout;ILjava/lang/String;Ljava/lang/String;I)V

    .line 167
    return-object v0
.end method

.method static clickModule(I)V
    .registers 2

    .prologue
    .line 370
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->findModuleButton(I)Landroid/view/View;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_9

    .line 372
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 374
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V

    .line 375
    return-void
.end method

.method private static findModuleButton(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 378
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_6

    .line 379
    const/4 v0, 0x0

    .line 389
    :goto_5
    return-object v0

    .line 381
    :cond_6
    packed-switch p0, :pswitch_data_30

    .line 389
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 383
    :pswitch_12
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 385
    :pswitch_1c
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f090226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 387
    :pswitch_26
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    const v1, 0x7f090297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 381
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method

.method private static goPage(I)V
    .registers 2

    .prologue
    .line 339
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 340
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 342
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 343
    :goto_13
    if-eqz v0, :cond_18

    .line 344
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 346
    :cond_18
    return-void

    .line 342
    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static hide(Landroid/view/View;)V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 425
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_d

    .line 426
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_d
    return-void
.end method

.method private static hideSidebarModules(Landroid/view/View;)V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 395
    if-eqz p0, :cond_8

    .line 396
    :goto_5
    if-nez p0, :cond_b

    .line 422
    :cond_7
    return-void

    .line 395
    :cond_8
    sget-object p0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    goto :goto_5

    .line 399
    :cond_b
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 400
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 403
    check-cast v0, Landroid/view/ViewGroup;

    .line 404
    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    .line 405
    const v1, 0x7f090226

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    .line 406
    const v1, 0x7f090297

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    .line 407
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->hide(Landroid/view/View;)V

    move v1, v2

    move v3, v2

    .line 410
    :goto_41
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 411
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 412
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_54

    .line 410
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 415
    :cond_54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Landroid/view/View;

    if-ne v4, v6, :cond_65

    const/4 v4, 0x1

    .line 416
    :goto_5d
    if-eqz v4, :cond_67

    if-eqz v3, :cond_67

    .line 417
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51

    :cond_65
    move v4, v2

    .line 415
    goto :goto_5d

    :cond_67
    move v3, v4

    .line 420
    goto :goto_51
.end method

.method static licenseId(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 442
    packed-switch p0, :pswitch_data_10

    .line 450
    const-string v0, "ai"

    :goto_5
    return-object v0

    .line 444
    :pswitch_6
    const-string v0, "timer"

    goto :goto_5

    .line 446
    :pswitch_9
    const-string v0, "music"

    goto :goto_5

    .line 448
    :pswitch_c
    const-string v0, "pulse"

    goto :goto_5

    .line 442
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private static menuRow(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v11, 0x42100000    # 36.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 297
    sget v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    if-ne p2, v0, :cond_38

    move v6, v1

    .line 298
    :goto_b
    const/4 v0, 0x4

    const v2, 0x7f0900ec

    sub-int v2, p2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 299
    const-string v8, ""

    move v2, v7

    .line 300
    :goto_1c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3a

    .line 301
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 302
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_f3

    instance-of v4, v0, Landroid/widget/Button;

    if-nez v4, :cond_f3

    .line 303
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 300
    :goto_34
    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    goto :goto_1c

    :cond_38
    move v6, v7

    .line 297
    goto :goto_b

    .line 306
    :cond_3a
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->pageTint(I)I

    move-result v2

    .line 307
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 308
    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 309
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v9, v0, v7, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 310
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    .line 311
    if-eqz v6, :cond_e6

    const/16 v0, 0x24

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    .line 312
    :goto_61
    invoke-static {v0, v4, v7, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v5, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 314
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;

    invoke-direct {v0, p2}, Lcom/isaigu/gymapp/widget/XemsNav$PageClick;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 318
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 319
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 320
    if-eqz v6, :cond_e9

    move v0, v2

    :goto_89
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 321
    new-instance v5, Lcom/isaigu/gymapp/widget/XemsIcon;

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->PAGE_ICONS:[I

    aget v0, v0, v3

    if-eqz v6, :cond_96

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :cond_96
    invoke-direct {v5, v0, v2}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    .line 322
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v7

    aput-object v5, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 324
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 325
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 326
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 327
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    .line 330
    if-eqz v6, :cond_f0

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 329
    :goto_ce
    invoke-static {p0, v1, v2, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 331
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v7, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 333
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 334
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    return-object v9

    :cond_e6
    move v0, v7

    .line 311
    goto/16 :goto_61

    .line 320
    :cond_e9
    const/16 v0, 0x2e

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_89

    .line 330
    :cond_f0
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_ce

    :cond_f3
    move-object v0, v8

    goto/16 :goto_34
.end method

.method public static onLicenseChanged()V
    .registers 5

    .prologue
    .line 457
    :try_start_0
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    .line 458
    if-eqz v3, :cond_10

    .line 459
    const/4 v4, -0x1

    iput v4, v3, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    .line 460
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastText:Ljava/lang/String;

    .line 457
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 463
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTiles()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 467
    :goto_16
    return-void

    .line 464
    :catch_17
    move-exception v0

    .line 465
    const-string v1, "XemsNav.license"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public static onPage(I)V
    .registers 3

    .prologue
    .line 90
    const v0, 0x7f0900ec

    if-lt p0, v0, :cond_c

    const v0, 0x7f0900f1

    if-ge p0, v0, :cond_c

    .line 91
    :try_start_a
    sput p0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    .line 93
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 94
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 96
    :cond_1d
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuButton:Landroid/widget/TextView;

    if-eqz v0, :cond_26

    .line 97
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menuButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_26} :catch_27

    .line 102
    :cond_26
    :goto_26
    return-void

    .line 99
    :catch_27
    move-exception v0

    .line 100
    const-string v1, "XemsNav.onPage"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public static onTrainingPanel(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 106
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsNav;->hideSidebarModules(Landroid/view/View;)V

    .line 107
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->attach(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 111
    :goto_6
    return-void

    .line 108
    :catch_7
    move-exception v0

    .line 109
    const-string v1, "XemsNav.onTrainingPanel"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private static openModule(Landroid/view/View;I)V
    .registers 6

    .prologue
    const v1, 0x7f0900ec

    .line 351
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_8

    .line 367
    :goto_7
    return-void

    .line 354
    :cond_8
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 355
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->licenseId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 356
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041d\u044f\u043c\u0430\u0442\u0435 \u0434\u043e\u0441\u0442\u044a\u043f \u0434\u043e \u0442\u043e\u0437\u0438 \u043c\u043e\u0434\u0443\u043b"

    const-string v2, "You have no access to this module"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 360
    :cond_2c
    sget v0, Lcom/isaigu/gymapp/widget/XemsNav;->currentPage:I

    if-eq v0, v1, :cond_40

    .line 362
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsNav;->goPage(I)V

    .line 363
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsNav$OpenLater;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/widget/XemsNav$OpenLater;-><init>(I)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 366
    :cond_40
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsNav;->clickModule(I)V

    goto :goto_7
.end method

.method private static pageTint(I)I
    .registers 2

    .prologue
    .line 287
    packed-switch p0, :pswitch_data_12

    .line 292
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ORANGE:I

    :goto_5
    return v0

    .line 288
    :pswitch_6
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    goto :goto_5

    .line 289
    :pswitch_9
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_5

    .line 290
    :pswitch_c
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_5

    .line 291
    :pswitch_f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_5

    .line 287
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private static refreshTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 471
    .line 472
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v4, "Off"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->module:I

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsNav;->licenseId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 474
    const/4 v1, 0x3

    .line 475
    const-string v0, "\ud83d\udd12 \u041d\u044f\u043c\u0430 \u0434\u043e\u0441\u0442\u044a\u043f"

    const-string v2, "\ud83d\udd12 No access"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    :goto_1f
    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    if-eq v1, v2, :cond_28

    .line 529
    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastState:I

    .line 530
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->styleTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;I)V

    .line 532
    :cond_28
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 533
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->lastText:Ljava/lang/String;

    .line 534
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_37
    return-void

    .line 476
    :cond_38
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->module:I

    packed-switch v0, :pswitch_data_10e

    .line 516
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    .line 517
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v4, :cond_f1

    .line 519
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "\u25cf %.0f kcal"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 478
    :pswitch_5a
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->isCounting()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 480
    const-string v0, "\u25cf \u041e\u0442\u0431\u0440\u043e\u044f\u0432\u0430"

    const-string v2, "\u25cf Counting"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 481
    :cond_69
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 483
    const-string v0, "\u0413\u043e\u0442\u043e\u0432"

    const-string v1, "Ready"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_1f

    .line 485
    :cond_79
    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u0437\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430"

    const-string v1, "Tap to set up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 487
    goto :goto_1f

    .line 489
    :pswitch_83
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 490
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 492
    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    const-string v1, "Paused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_1f

    .line 495
    :cond_9f
    const-string v0, "\u25b6 \u0421\u0432\u0438\u0440\u0438"

    const-string v2, "\u25b6 Playing"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    .line 498
    :cond_a9
    const-string v0, "\u0421\u043f\u0440\u044f\u043d\u0430"

    const-string v1, "Stopped"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 500
    goto/16 :goto_1f

    .line 502
    :pswitch_b4
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 503
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v0

    .line 504
    if-lez v0, :cond_db

    .line 506
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

    goto/16 :goto_1f

    .line 509
    :cond_db
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1f

    .line 512
    :cond_e6
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0441\u043b\u0443\u0448\u0430"

    const-string v1, "Band idle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 514
    goto/16 :goto_1f

    .line 520
    :cond_f1
    if-eqz v0, :cond_102

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_102

    .line 522
    const-string v0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430"

    const-string v1, "Setting up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1f

    .line 524
    :cond_102
    const-string v0, "\u0423\u043c\u043d\u0430 \u0441\u0435\u0441\u0438\u044f"

    const-string v1, "Smart session"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto/16 :goto_1f

    .line 476
    nop

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_83
        :pswitch_b4
    .end packed-switch
.end method

.method private static refreshTiles()V
    .registers 4

    .prologue
    .line 433
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tiles:[Lcom/isaigu/gymapp/widget/XemsNav$Tile;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 434
    if-eqz v3, :cond_d

    .line 435
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsNav;->refreshTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;)V

    .line 433
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 438
    :cond_10
    return-void
.end method

.method private static showMenu(Landroid/view/View;)V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    .line 245
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    if-nez v0, :cond_a

    .line 281
    :goto_9
    return-void

    .line 248
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 249
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_9

    .line 252
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 253
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 254
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 255
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 256
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v6, 0x3f800000    # 1.0f

    .line 257
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 256
    invoke-static {v0, v1, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 259
    const-string v0, "XEMS"

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 260
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v5, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 261
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v1, v2

    .line 263
    :goto_62
    const/4 v0, 0x5

    if-ge v1, v0, :cond_99

    .line 264
    const v0, 0x7f0900ec

    add-int v5, v0, v1

    .line 265
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->mainRoot:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 266
    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_7a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_7e

    .line 263
    :cond_7a
    :goto_7a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_62

    .line 269
    :cond_7e
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v3, v0, v5}, Lcom/isaigu/gymapp/widget/XemsNav;->menuRow(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x437a0000    # 250.0f

    .line 270
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42500000    # 52.0f

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7a

    .line 273
    :cond_99
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v4, v9, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 275
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 277
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 278
    sput-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;

    .line 279
    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 280
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    goto/16 :goto_9
.end method

.method private static startTicking()V
    .registers 2

    .prologue
    .line 561
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    if-nez v0, :cond_e

    .line 562
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    .line 563
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 565
    :cond_e
    return-void
.end method

.method private static stopTicking()V
    .registers 2

    .prologue
    .line 568
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsNav;->ticking:Z

    .line 569
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsNav;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsNav;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method private static styleTile(Lcom/isaigu/gymapp/widget/XemsNav$Tile;I)V
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 539
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 540
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    if-ne p1, v5, :cond_6f

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_11
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 541
    if-ne p1, v5, :cond_17

    move p1, v2

    .line 544
    :cond_17
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v7, v0

    .line 545
    const/4 v0, 0x2

    if-ne p1, v0, :cond_71

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 546
    :goto_23
    if-nez p1, :cond_74

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    move v5, v0

    .line 547
    :goto_28
    if-nez p1, :cond_7f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    .line 548
    :goto_2c
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->root:Landroid/widget/LinearLayout;

    .line 549
    if-nez p1, :cond_81

    :goto_30
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 548
    invoke-static {v5, v7, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 551
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 552
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 553
    if-ne p1, v4, :cond_84

    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    :goto_4b
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 554
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->icon:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 555
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->icon:Landroid/widget/TextView;

    if-ne p1, v4, :cond_8d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_59
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 556
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    if-nez p1, :cond_62

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :cond_62
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->status:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-nez p1, :cond_90

    :goto_6b
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 558
    return-void

    :cond_6f
    move v0, v1

    .line 540
    goto :goto_11

    .line 545
    :cond_71
    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    goto :goto_23

    .line 546
    :cond_74
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const v5, 0x3e23d70a    # 0.16f

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    move v5, v0

    goto :goto_28

    :cond_7f
    move v0, v3

    .line 547
    goto :goto_2c

    .line 549
    :cond_81
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_30

    .line 553
    :cond_84
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    const/16 v5, 0x33

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    goto :goto_4b

    .line 555
    :cond_8d
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$Tile;->tint:I

    goto :goto_59

    :cond_90
    move v2, v4

    .line 557
    goto :goto_6b
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 574
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    .line 576
    :goto_4
    return-object p0

    .line 575
    :catch_5
    move-exception v0

    goto :goto_4
.end method
